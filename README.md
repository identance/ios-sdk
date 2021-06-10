# Identance iOS Integration

- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Customization](#customization)
  
  - [Colors](#colors)
  
  - [Color themes](#color-themes)
  
  - [Icons & Images](#Icons--Images)
  
  - [Texts](#Texts)
  
    
    
    

## Requirements

- iOS 10.0+
- Xcode 11.4+
- Swift 5.2+
- iPhone idiom only (using the SDK in App with Universal or iPad only idiom could lead to unpredicted behavior)
- iPhone 5+
- Portrait and landscape orientation support on app level (see details below)
- Git LFS



## Installation

### CocoaPods

You must use at least 1.10 version of Cocoapods.

#### Git-lfs

- You must install [Git Large File Storage](https://git-lfs.github.com/) by running these commands:

```bash
brew install git-lfs
git lfs install
```

- **Be sure to restart your console after installing Git LFS**
- **Note:** if you already did try adding SDK using cocoapods and it's not working, first install the git-lfs and then clear you cocoapods cache. This should be sufficient to force cocoapods to clone SDK, if it still doesn't work, try deinitializing your pods and installing them again.

[CocoaPods](https://cocoapods.org) is a dependency manager for Cocoa projects. For usage and installation instructions, visit their website. To integrate Identance into your Xcode project using CocoaPods, specify it in your `Podfile`:

```ruby
pod 'Identance'
```

_IMPORTANT_: if you need to integrate Identance SDK into Objective-C code then you should use `ZN` prefix for Identance classes.

_IMPORTANT_: you must include below code to your podfile to avoid crashes in runtime.

```
post_install do |installer|
    installer.pods_project.targets.each do |target|
        if target.name == "Down"
            target.build_configurations.each do |config|
              config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = "YES"
            end
        end
    end
end
```

### Application Restrictions

To work properly SDK requires access to device *Camera* and *Photo Library*. For this purpose you must add (if not added there yet) next keys to your application `Info.plist` file:

* `NSPhotoLibraryUsageDescription` - Description for *Photo Library* usage
* `NSCameraUsageDescription` - Description for device *Camera* usage

### Orientation Support

Identance SDK requires that host application must to support **portait** and **landscape** (left and right) orientation modes during verification process. It can be done by setting appropriate values to `UISupportedInterfaceOrientations` key inside *Info.plist* file or by proper implementing

```swift
optional func application(_ application: UIApplication, 
supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask
```

of `UIApplicationDelegate`.

## Usage

Open `IdentanceExample` project with integrated SDK in Xcode. You need to execute the `pod install` command in the project dir to download the dependencies.

### Start the verification process

##### Creating the `Verification` object

You access the main SDK features via the `Verification` object. To create it you need to first make the `Configuration` instance and setup its options:

###### Configuration options:

* `apiURL` (required) - API endpoint to work with. Contact us to get one. Usually you need to use separate URLs for sandbox and production environments.
* `tokenProvider` (required) - JWT Token provider instance. You need to implement the `TokenProvider` protocol to return the JWT Token string. You can use the existing class `ClosureTokenProvider` and setup the `provider` closure or make a new one. See [Working with JsonWebToken](https://identance.com/docs/) for technical details.
* `workingMode ` (required) - use `singleStage` or `allStages` depending on your business logic.
* `localizationKeys` (required) - `LocalizationKeys` instance with merchant related text localization keys. See details here: [Texts](#Texts)
* `language` (required) - SDK language:
  * `system` (default) - language of the host app. If SDK doesn't support it then *English* will be used.
  * `english` - force *English* language. 
  * `russian` - force *Russian* language.
* `customLanguageStringsURL` (optional) - URL to the custom localization file. Must be set in case of not `system` language set to `language` and custom text replaces needed to be applied (see [customization texts](#Texts)).
* `showSupportScreen` (optional) - special closure used to open or show support link or view.
* `appID` (optional) - Appstore application ID. Could be used to show Appstore update screen in case SDK/app update required.

###### `Verification` object creation:

```swift
let configuration = Configuration()
configuration.apiURL = URL(string: "https://...")!
configuration.tokenProvider = ClosureTokenProvider() { completion in
		completion("JWT Token", nil)
}

let verification try = Verification(configuration: configuration)
```

It is recommended to create a new `Verification` object each time you want to start a verifaction process. Then you need to get the `VerificationViewController` object, setup its delegate and present it.

```swift
let verificationController = verification.verificationViewController()
verificationController.delegate = self
present(verificationController, animated: true, completion: nil)
```

By implementing the `VerificationViewControllerDelegate` you will get callbacks from the verification process about its success submit or cancellation.

```swift
// Verification finished and must be dismissed
func verification(_ viewController: VerificationViewController, didCompleteWith result: VerificationResult) {
    viewController.dismiss(animated: true, completion: nil) // Required step. ViewController will not dismiss automatically
}
```

## Customization

### Colors

You could customize the color palette via the `UIScheme.shared ` singleton object.

If you need to customize a few colors then just call the `configure(scheme:..)` method:

```swift
UIScheme.shared.configure(scheme: ["errorColor": "121212"])
UIScheme.shared.configure(scheme: ["actionColorColor": "121212FA"])
```

If you need to customize all of them then you can create a separate `.plist` file or `[String: String]` object with the color list and load it via the `loadScheme(from:..)` method:

```swift
guard let filePath = Bundle.main.path(forResource: "custom-color-palette", ofType: "plist"),
    let schemeDictionary = NSDictionary(contentsOfFile: filePath) as? [String: String]
else { return }

UIScheme.shared.loadScheme(from: schemeDictionary)
```

_Please note that there is one special color key - `theme`. It controls in general dark or light mode.  Value must be one of the following strings: `dark` or `light`_

### Color themes

The SDK supports color themes: ***dark*** and ***light***.

By default it use dark theme. Identance SDK ignores system defined theme instead of that it must be manually set before starting verification. To setup ***light*** theme call:

```swift
UIScheme.shared.resetToLightTheme()
```

For ***dark*** one call:

```swift
UIScheme.shared.resetToDarkTheme()
```

### Icons & Images

Icons and images inside the SDK could replaced by properly naming image resources inside **main bundle** of a host application. Use prefix `zn__` and name of the SDK image resource. If image must be separate for dark and light theme then you could add suffix `~light` to the end of light theme resource name (ex. `zn__alert_icon~light`).

### Texts

In case you use `allStages` `workingMode` then you must properly fill `LocalizationKeys.stageDescriptions` with `LocalizationStageDescription` objects. Each object contains **short** (`shortDescriptionKey`) and **full** (`fullDescriptionKey`) **description** **key** for some stage (`stage`). SDK grab localized texts by these keys from host application localization files. **Short description** is text placed on a bottom of a stage cell. **Full description** is text placed on a screen when user tap on a stage cell. **Full description** text supports Markdown format including links. Proper `LocalizationKeys` object must be set to `localizationKeys` property of a verification `Configuration` instance before verification start. 

In case you never use `allStages` and instead use `singleStage` `workingMode` then you could just set `localizationKeys = .empty` of a verification `Configuration` instance.

If some text in the SDK must be changed then you need to add appropriate strings key-pairs to default `Localizable.strings` file inside your application of appropriate language. Example of such pair:

```swift
"zn__button_yes" = "Yes";
```

All SDK keys start with `zn__` so there won't be any conflict with your own keys. Try open contents of framework and find there `Localizable.strings` files inside `language.lprog` directories to search for key you want to replace.

## Q&A

**Q**: During project compilation get error: `Command CompileSwiftSources failed with a nonzero exit code` with detailed description `error: using bridging headers with module interfaces is unsupported`
**A**: Usually this could be in case when Xcode project contains *bridging header*.  Set target's `BUILD_LIBRARY_FOR_DISTRIBUTION` build setting to `NO`.

**Q**: During verification flow a user document scanning step absent on Simulator device.
**A**: Simulator device doesn't have access to a camera so this step is automatically skipped. Because of that it is highly recommended to test verification flow on real device.

