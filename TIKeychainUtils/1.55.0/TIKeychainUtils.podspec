Pod::Spec.new do |s|
  s.name             = 'TIKeychainUtils'
  s.version          = '1.55.0'
  s.summary          = 'Set of helpers for Keychain classes.'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/src/tag/' + s.version.to_s + '/' + s.name
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

  s.dependency 'TIFoundationUtils', s.version.to_s
  s.dependency 'KeychainAccess', "~> 4.2"
end
