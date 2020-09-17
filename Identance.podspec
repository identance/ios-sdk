Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.3.3'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :file => 'LICENSE'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.framework'

  spec.source   =  { 
    :git => 'https://github.com/identance/ios-sdk.git',
    :tag => spec.version
  }

  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.pod_target_xcconfig = {
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'
  }

  spec.swift_version    = '5.0'
  spec.platform         = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'
    
  spec.dependency 'Down', '0.9.2'
  
end
