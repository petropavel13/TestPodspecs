Pod::Spec.new do |s|
  s.name             = 'TIEcommerce'
  s.version          = '1.53.0'
  s.summary          = 'Cart, products, promocodes, bonuses and other related actions'
  s.homepage         = 'https://git.svc.touchin.ru/TouchInstinct/LeadKit/src/tag/' + s.version.to_s + '/' + s.name
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'petropavel13' => 'ivan.smolin@touchin.ru' }
  s.source           = { :git => 'https://git.svc.touchin.ru/TouchInstinct/LeadKit.git', :tag => s.version.to_s }

  s.ios.deployment_target = '11.0'
  s.swift_versions = ['5.7']

  s.source_files = s.name + '/Sources/**/*'

  s.dependency 'TIFoundationUtils', s.version.to_s
  s.dependency 'TINetworking', s.version.to_s
  s.dependency 'TIUIKitCore', s.version.to_s
  s.dependency 'TIUIElements', s.version.to_s
  s.dependency 'TISwiftUtils', s.version.to_s
end
