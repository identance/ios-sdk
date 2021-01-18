Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.5.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :file => 'LICENSE'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   =  { 
    :git => 'https://github.com/identance/ios-sdk.git',
    :tag => spec.version
  }

  spec.swift_version    = '5.2'
  spec.platform         = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'
    
  spec.dependency 'Down', '0.9.4'
  
end
