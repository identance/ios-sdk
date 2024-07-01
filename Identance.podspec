Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.18.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2024 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.18.0/Identance.xcframework.zip", :sha256 => "ebd087013fdbfabbc6ba085a4be5cd361a897779e5314f5aa27c831a4daf29c1" }

  spec.swift_version    = '5.7'
  spec.platform         = :ios, '15.0'
  spec.ios.deployment_target = '15.0'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  spec.dependency 'FaceSDK', '6.2.1933'
  spec.dependency 'FaceCoreBasic', '6.2.783'
end
