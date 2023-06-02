Pod::Spec.new do |s|
  s.name             = 'TISwiftUICore'
  s.version          = '1.46.0'
  s.summary          = 'Core UI elements: protocols, views and helpers.'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/tree/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '13.0'
  s.swift_versions = ['5.7']

  sources = 'Sources/**/*'
  if ENV["DEVELOPMENT_INSTALL"] # installing using :path =>
    s.source_files = sources
    s.exclude_files = s.name + '.app'
  else
    s.source_files = s.name + '/' + sources
    s.exclude_files = s.name + '/*.app'
  end

  s.dependency 'TIUIKitCore', s.version.to_s
  s.dependency 'TISwiftUtils', s.version.to_s
end
