Pod::Spec.new do |s|
  s.name             = 'TIPagination'
  s.version          = '1.54.0'
  s.summary          = 'Generic pagination component.'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/src/tag/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_versions = ['5.7']

  sources = 'Sources/**/*.swift'
  if ENV["DEVELOPMENT_INSTALL"] # installing using :path =>
    s.source_files = sources
    s.exclude_files = s.name + '.app'
  else
    s.source_files = s.name + '/' + sources
    s.exclude_files = s.name + '/*.app'
  end

  s.dependency 'TISwiftUtils', s.version.to_s
  s.dependency 'Cursors', "~> 0.6.0"
end
