Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.10.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2023 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.10.0/Identance.xcframework.zip", :sha256 => "7986b1b579be175e62612bfff4054348ecff0e1f4a77349590503e65dce9c3c2" }

  spec.swift_version    = '5.7'
  spec.platform         = :ios, '12.1'
  spec.ios.deployment_target = '12.1'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  spec.dependency 'FaceSDK', '4.1.1217'

end
