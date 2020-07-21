Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.2.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :file => 'LICENSE'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.framework'

  spec.swift_version    = '5.0'
  spec.platform         = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'
  spec.user_target_xcconfig = { 'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES' }
    
  spec.dependency  'Down', '0.9.2'
  
end
