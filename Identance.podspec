Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.13.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2024 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.13.0/Identance.xcframework.zip", :sha256 => "a83670165c3b0a4d42e1bf395067b6bf32811d2114974afe6a812baaa688cdce" }

  spec.swift_version    = '5.7'
  spec.platform         = :ios, '12.1'
  spec.ios.deployment_target = '12.1'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  spec.dependency 'FaceSDK', '6.1.1746'
  spec.dependency 'FaceCoreBasic', '6.1.584'

end
