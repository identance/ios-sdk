Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.8.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2021 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.8.0/Identance.xcframework.zip", :sha256 => "9a6f830e80f8b4185f0bdfd8735fbeab0b1d2757eea6b347137b511746eac039" }

  spec.swift_version    = '5.5'
  spec.platform         = :ios, '12.1'
  spec.ios.deployment_target = '12.1'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

end
