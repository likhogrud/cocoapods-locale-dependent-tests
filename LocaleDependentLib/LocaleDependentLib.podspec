Pod::Spec.new do |s|
  s.name             = 'LocaleDependentLib'
  s.version          = '0.1.0'
  s.summary          = 'LocaleDependentLib'
  s.homepage         = "local" #path to home page
  s.license          = { type: 'Proprietary', text: 'LocaleDependentLib' }
  s.authors          = { 'Nikolay Likhogrud' => 'likhogrud@yandex-team.ru' }
  s.source           = { :git => 'local', :tag => s.version.to_s }
  s.description      = 'LocaleDependentLib'
  s.requires_arc     = true

  s.ios.deployment_target = '10.0'

  s.source_files = 'Sources/**/*'
  s.resource_bundles = { 'LocaleDependentLib' => 'Resources/*.lproj/*' }
  
  s.test_spec 'Tests' do |spec|
    spec.source_files = 'Tests/**/*.swift'
    spec.dependency 'FBSnapshotTestCase'
    spec.requires_app_host = true
    spec.app_host_name = 'LocaleDependentLib/TestHost'
    spec.dependency 'LocaleDependentLib/TestHost'
  end

  s.app_spec 'TestHost' do |spec|
    spec.info_plist = {
      'CFBundleDevelopmentRegion' => 'ru_RU'
    }
    spec.source_files = 'AppDelegate.swift'
  end

end
