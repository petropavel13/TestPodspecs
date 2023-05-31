Pod::Spec.new do |s|
  s.name             = 'TIAuth'
  s.version          = '1.45.0'
  s.summary          = 'Login, registration, confirmation and other related actions'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/tree/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5.7']

  s.source_files = s.name + '/Sources/**/*'

  s.dependency 'TIFoundationUtils', s.version.to_s
  s.dependency 'TIKeychainUtils', s.version.to_s
  s.dependency 'TIUIKitCore', s.version.to_s
end
