Pod::Spec.new do |spec|
  
  spec.name     = 'Identance'
  spec.version  = '2.7.0'
  spec.summary  = 'Identance Verification iOS SDK'
  
  spec.license  = { 
    :type => 'commercial',
    :text => '© 2018-2021 Identance. All rights reserved.'
  }

  spec.homepage = 'https://identance.com/'
  spec.authors  = { 'Identance' => 'partnership@identance.com'}

  spec.vendored_frameworks = 'Identance.xcframework'

  spec.source   = { :http => https://download.identance.com/sdk/ios/2.7.0/Identance.xcframework.zip, :sha256 => 729805bc27e037d260f400482bfbf248e07ab57945455dde970b5005409c45c6 }

  spec.swift_version    = '5.5'
  spec.platform         = :ios, '10.0'
  spec.ios.deployment_target = '10.0'
  spec.cocoapods_version = '>= 1.10.0'
  spec.requires_arc     = true
  spec.frameworks       = 'UIKit', 'Foundation'

end
