Pod::Spec.new do |s|
    s.name             = 'TruvideoSdkCommon'
    s.version          = '0.0.4'
    s.summary          = 'Truvideo Sdk Common'
    s.description      = 'Truvideo Sdk Common artifact'
    s.homepage         = 'https://github.com/Truvideo/truvideo-sdk-ios-common'
    s.license          = { :type => 'MIT', :file => 'LICENSE.md' }
    s.author           = { 'Kenility' => 'federico.amura@kenility.com' }
    s.source           = { :git => 'https://github.com/Truvideo/truvideo-sdk-ios-common.git', :tag => '0.0.4' }
    s.swift_version    = '5.0' 
    s.platforms        = { :ios => '15.0' }
    s.source_files     = 'Sources/**/*' 
  end