Pod::Spec.new do |s|
  s.name         = "RedAlert-SDK"
  s.version      = "0.4.0"
  s.summary      = "RedAlert SDK iOS"
  s.description  = "SDK чата технической поддержки для платформы iOS"
  s.homepage     = "https://github.com/petropavel13/ramsdk-ios"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Egor Taflanidi" => "et@redmadrobot.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "git@github.com:petropavel13/ramsdk-ios.git", :tag => s.version, :branch => "master" }
  s.source_files = "Source/RedAlert/RedAlert/Classes/**/*"
  s.requires_arc = true
  s.swift_version = "5.0"
  s.dependency "DAO/Realm"
  s.dependency "Starscream", '~> 3.1.0'
  s.dependency "HTTPTransport", '~> 5.0'
end
