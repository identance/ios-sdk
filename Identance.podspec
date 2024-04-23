Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.14.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2024 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.14.0/Identance.xcframework.zip", :sha256 => "09579494bb0a79955382f5913b54213291d790a6a238fe6123a6440df8e8cde9" }

  spec.swift_version    = '5.7'
  spec.platform         = :ios, '12.1'
  spec.ios.deployment_target = '12.1'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  spec.dependency 'FaceSDK', '6.1.1746'
  spec.dependency 'FaceCoreBasic', '6.1.584'

end
