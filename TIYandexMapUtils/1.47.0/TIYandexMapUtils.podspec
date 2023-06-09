Pod::Spec.new do |s|
  s.name             = 'TIYandexMapUtils'
  s.version          = '1.47.0'
  s.summary          = 'Set of helpers for map objects clustering and interacting using Yandex Maps SDK.'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/tree/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '12.0'
  s.swift_versions = ['5.7']

  sources = 'Sources/**/*'
  if ENV["DEVELOPMENT_INSTALL"] # installing using :path =>
    s.source_files = sources
    s.exclude_files = s.name + '.app'
  else
    s.source_files = s.name + '/' + sources
    s.exclude_files = s.name + '/*.app'
  end

  s.static_framework = true
  s.user_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
  s.pod_target_xcconfig = { 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }

  s.dependency 'TIMapUtils', s.version.to_s
  s.dependency 'YandexMapsMobile', '4.3.1-lite'
end
