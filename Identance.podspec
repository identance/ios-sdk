Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.6.5'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2021 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}
  
  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => 'https://download.identance.com/sdk/ios/2.6.5/Identance.xcframework.zip', :sha256 => '140e80f73795c4dccb7c7700cec8c500f61bc19362a45257b71577ad965d6973' }

  spec.swift_version    = '5.5'
  spec.platform         = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

end
