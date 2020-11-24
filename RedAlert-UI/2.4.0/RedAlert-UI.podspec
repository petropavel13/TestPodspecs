Pod::Spec.new do |s|
  s.name         = "RedAlert-UI"
  s.version      = "2.4.0"
  s.summary      = "RedAlert UI iOS"
  s.description  = "UI чата технической поддержки для платформы iOS"
  s.homepage     = "https://github.com/petropavel13/ramsdk-ios-ui"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Andrei Rozhkov" => "ar@redmadrobot.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "git@github.com:petropavel13/ramsdk-ios-ui.git", :tag => s.version }
  s.source_files = "RedAlert-UI/Classes/**/*.{h,m,swift}"
  s.resources    = ["RedAlert-UI/Classes/**/*.{xib,storyboard}", "RedAlert-UI/Resources/*"]
  s.requires_arc = true
  s.swift_version = "5.0"
#  s.static_framework = true
  s.dependency "RedAlert-SDK", '~> 0.4.0'
  s.dependency "AlamofireImage"
  s.dependency "lottie-ios", '~> 3.0'
  s.dependency "TTTAttributedLabel"
end
