Pod::Spec.new do |s|
  s.name             = 'TestHost'
  s.version          = '0.1.0'
  s.summary          = 'TestHost'
  s.homepage         = "local" #path to home page
  s.license          = { type: 'Proprietary', text: 'LocaleDependentLib' }
  s.authors          = { 'Nikolay Likhogrud' => 'likhogrud@yandex-team.ru' }
  s.source           = { :git => 'local', :tag => s.version.to_s }
  s.description      = 'LocaleDependentLib'
  s.requires_arc     = true

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/**/*'

  s.app_spec 'App' do |spec|
    spec.info_plist = {
      'CFBundleDevelopmentRegion' => 'ru_RU'
    }
    spec.source_files = 'AppDelegate.swift'
  end

end
