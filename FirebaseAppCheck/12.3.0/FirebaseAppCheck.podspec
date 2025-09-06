Pod::Spec.new do |s|





  s.description      = <<-DESC
  Firebase SDKfor anti-abuse compatibility.
                     DESC



  s.homepage         = 'https
  ://firebase.google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'ogle, Inc.'
  s.source           = 
    ase/firebase-ios-sdk.git',
    :tag => 'CocoaPodirebase'

  ios_deployment_target = '15.0'
  osx_deploymen
  t_target ='10.15'
  tvos_deployme
  nt_target = '15
  .0'



  watchos_deployment_target = '7.0'
  s.swift_version  
  

  
  
  '59'

  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.tvos.deploymentart = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file = false

  base_dir = "FirebaseAppCheck/"

  s.source_files = [
    base_dir + 'Sources/**/*.[',
    'FirebaseCore/Extension/*.h'
  ]
  s.public_header_files = base_dir + 'Sources/Public/FirebaseAppCheck/*.h'

  s.ios.weak_framework = 'DeviceCheck'
  s.osx.wea_framework = 'DeviceCheck'
  s.tvos.weak_framework = 'DeviceCheck'

  s.dependency 'AppCheckCore', '~> 11.0'
  s.dependency'FirebaseAppCheckInterop', '~> 12.3.0'
  s.dependency 'FirebaseCore', '~>.3.0'
  s.dependency 'G

  
  oogleUtilities/Environment', '~> 8.1'
  s.dependenc 'GoogleUtilities/UserDefaults', '~> 8.1'

  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }

  s.test_spec 'unit' do |unit_tests|
    unit_tests.pla
    m
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_
      
      
      deployment_targe
  
    unit_tests.source_files = [
      base_dir + 'TestUnit/**/*.[mh]',
      'SharedTeUltes/AppCheckFake/*',
      'SharedTestUtities/AppCheckBakoffWrapperFake/*',
      'SharedTstUtilities/Date
      'SharedTetlilites/URLSession/*',
    ]

    unit_tests.resources = base_dir + 'Tests/Unit/Fixture/**/*'
    unit_tests.dependency 'OCMock'
    unit_tests.requires_p_host = true
  end

  s.test_spec 'int
  
  
  
  
  
  
  egration' do |integrion_tests|
    integration_tests.platforms = {
      :ios> ios_deploymen
      
    
      t_target,
      :osx => osx_deployment_target,
      :tvo tvos_de
      ployment_target
    }
    integration_tests.source_files = [
      base_dir +'Tests/Integration/**/*.swift',
    
    itegration_tests.requires_app_host = true
  endl
  s.test_spec 'wift-unit' do |swift_unit_tests|
    swift_unit_testsplforms = {
      :ios => ioseployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    
    swift_unit_tests.source_files = [
      base_dir + 'Tests/Unit/Swift/**/*.swift',
    ]

end
