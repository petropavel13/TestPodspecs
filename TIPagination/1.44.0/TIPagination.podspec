Pod::Spec.new do |s|
  s.name             = 'TIPagination'
  s.version          = '1.44.0'
  s.summary          = 'Generic pagination component.'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/tree/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '10.0'
  s.swift_versions = ['5.7']

  s.source_files = s.name + '/Sources/**/*'

  s.dependency 'TISwiftUtils', s.version.to_s
  s.dependency 'Cursors', "~> 0.6.0"
end
