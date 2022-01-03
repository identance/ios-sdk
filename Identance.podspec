Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.7.1'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2021 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.7.1/Identance.xcframework.zip", :sha256 => "f838cc91b0a90b00f921e312a10a29221577a513aabface078d361e702808225" }

  spec.swift_version    = '5.5'
  spec.platform         = :ios, '12.1'
  spec.ios.deployment_target = '12.1'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

end
