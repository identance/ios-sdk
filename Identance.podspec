Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.12.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2023 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.12.0/Identance.xcframework.zip", :sha256 => "fc12a6b5688b659a3dc73bdb69f3fdbe4757a47f08fc5cae7c6543324f8c9a21" }

  spec.swift_version    = '5.7'
  spec.platform         = :ios, '12.1'
  spec.ios.deployment_target = '12.1'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  spec.dependency 'FaceSDK', '5.1.1482'
  spec.dependency 'FaceCoreSDK', '5.1.315'

end
