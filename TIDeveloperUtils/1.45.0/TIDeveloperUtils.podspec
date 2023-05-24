Pod::Spec.new do |s|
  s.name             = 'TIDeveloperUtils'
  s.version          = '1.45.0'
  s.summary          = 'Universal web view API'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/tree/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru',
                         'castlele' => 'nikita.semenov@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_versions = ['5.7']

  s.source_files = s.name + '/Sources/**/*'

  s.dependency 'TIUIKitCore', s.version.to_s
  s.dependency 'TIUIElements', s.version.to_s
  s.dependency 'TISwiftUtils', s.version.to_s

end
