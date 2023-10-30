Pod::Spec.new do |s|
  s.name             = 'TIBottomSheet'
  s.version          = '1.53.2'
  s.summary          = 'Base models for creating bottom sheet view controllers'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/src/tag/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'castlele' => 'nikita.semenov@touchin.ru',
                         'petropavel13' => 'ivan.smolin@touchin.ru'}
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_versions = ['5.7']

  sources = 'Sources/**/*'
  if ENV["DEVELOPMENT_INSTALL"] # installing using :path =>
    s.source_files = sources
    s.exclude_files = s.name + '.app'
  else
    s.source_files = s.name + '/' + sources
    s.exclude_files = s.name + '/*.app'
  end

  s.dependency 'TIUIElements', s.version.to_s
  s.dependency 'TIUIKitCore', s.version.to_s
  s.dependency 'TISwiftUtils', s.version.to_s
  s.dependency 'PanModal', '~> 1.3.0'

end

