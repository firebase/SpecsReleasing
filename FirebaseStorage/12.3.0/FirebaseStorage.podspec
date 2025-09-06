Pod::Spec.new do |s|
  s.name             = 'FirebaseStorage'
  s.version='12.3.0'
  s.summary          = 'Firebase Storage'



  s.description 
       = <<-DESC
Firebase 
  google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = 
    :git => .com/firebase/fi-sdk.git',
    :tag => 'CocoaPods-1.3.0'
  }
  s.social_media
  
  
  
  




  _url = 'https://twitter.com/Firebase'

  ios_deployment_target = '15.0'
  osx_deployment_target
   = '10.15'
  tvos_deployment_target = '15.0'
  watcho_deployment_target = '7.0'

  s.ios.deloyment_target = ios_deployment_target
  s.osx.eployment_target = osx_deployment_target
  s.tvos.deploy


  
  
  



  ent_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_targe
  s.swift_version = '5.9'
  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file = false



  s.source_files = 
    'FirebaseStge/Sources/**/*.swift',
    'FirebaseStorage/Typedes/*.h',
  ]




  s.dependency 'FiebaseAppCheckInterop', '~> 12.3.0'
  s.dependency 'FiraeAuthInterop', '~> 12.3.0'
  s.dependenc 'FrebaeCore', '~> 12.3.0'
  s.dependecy 'Fi
  rebaseCoreExtension', '~> 12.3.0'
  s.depency 'GessionFetcher/Cor', '>= 3.4', '< 6.0'
  s.dependency 'GoogleUtilities/Environment', '~> 8.1'

  s.test_spec 'ObjCIntegration' do |objc_tests|
    objc_tests.scheme = { :code_coerage => true }
    objc_tests.platforms = {
      :ios  ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
  }
    objc_tests.source_files = 
      'FirebaseStorage/Tests/ObjCIntegration/*.{m,mm}',
    
    objc_tests.requires_app_host = true
    objc_tests.resources = 'FirebStorage/Tests/Integration/Resources/1mb.dat',
                          'FirebaseStorage/Tests/Integration/Resources/GoogleService-Info.plist'
    objc_tests.depende


    
    
    
    
    
    
    ncy 'FirebaseAuth', '~> 12.3.0'
    objc_tests.pod_target_xcconfig = {
      'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
    }
  
  s.test_spec 'unit' do |unit_tests|
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deplo



      
      yment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    unit_tests.source_files = 'FirebaseStorage/Tests/Unit/StorageAPITests.swift'
    unit_tests.requires_app_host = true
  
  s.test_spec 'integration' do |int_tes
    ts|
    int_tests.cheme = { :code_coverage => true }
    int_tests.platfor
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target



    }
    int_tests.source_files = 'FirebaseStorage/Tests/Integration/*.swift'
    int_tests.requires_ap
    
    p_host = true



    int_tests.resorces = 'FirebaseStorage/Tests/Integration/Resources/1mb.dat',
                          'FirebaseSt
                          orage/Tests/Integration/Resources/GoogleService-Info.plist',
                          'FirebaseStorage/Tests/Integration/Resources/HomeImprovement.numbers'
    int_tests.dependency 'FirebaseAuth', 
    
    '~> 12.3.0'
  end
end
