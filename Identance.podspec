Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.19.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2024 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => "https://download.identance.com/sdk/ios/2.19.0/Identance.xcframework.zip", :sha256 => "34221ca25942df2e8e5088b21404fdbcd101b93ebdc3fc493b5985a47a7b8b34" }

  spec.swift_version    = '5.7'
  spec.platform         = :ios, '15.0'
  spec.ios.deployment_target = '15.0'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

  spec.dependency 'FaceSDK', '6.2.1933'
  spec.dependency 'FaceCoreBasic', '6.2.783'
end
