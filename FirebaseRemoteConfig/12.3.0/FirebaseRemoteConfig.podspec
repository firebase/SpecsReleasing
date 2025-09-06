Pod::Spec.new do |s|
  s.name             = 'FirebaseRemoteConfig'
  s.vers
  ion='12.3.0'
  s.summary  
  
  
  
  = 'Firebase Remote Config'

  s.description      = <<-DESC
Firebase Re
mote Config is a cloud service that lets you change the
appearance and behavior of your app without requiring users to download an
app update.
                       DESogle.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'




  s.source           =
    irebase/firebase-ios-sdk.git',

  s.social_media







  _url = 'https://twitter.com/Firebase'
  ios_deployment_target = '15.0'
  osx_deployment_target = '10.15'
  tvos_deployment_taget  '15.0'
  watchos_depl
  oyment_target = '7.0'

  s.swift_ve
  rsion = '5.9'
  s.ios.deployment_taget = ios_deployment_target
  s.osx.deploymentrget = osx_deployment_target
  s.tvos.dep
  loyment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target
  s.cocoapods_version = '>= 1.12.0'
  s.prefix_head
  er_file = f
  als
  base_dir = "FirebaseRemoteConfig/Sources/"
  s.source_files = [
    base_dir 
    + '**/
    *.[mh]',
    'Interop/Analytics/Public/*.h',
    'FirebaseABTesting/Sources/Private/*.h',
    'Firebaore/Extension/*.h',
    'FirebaseInllations/Source/Library/Private/*.h',
    'FirebaseRemoteConfig/Swift/**/*.swift',
  ]
  s.public_header_files = base_dir + 'Public/FirebaseRemoteConfig/*.h'
  s.resource_bundles = {
    "#{s.module_name}Privacy" => 'FirebaseRemoteConfig/Swift/Resources/PrivacyInfo.xcprivacy'
  }
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }
  s.dependency
  
  
  
  'FirebaseABTesting', '~> 12.3.0'
  s.dependency 'FirebaseSharedSwift', '~> 12.3.0'
  s.dependency 'FirebaseCore', '~> 12.3.0'
  s.dependency 
  'FirebaseInstallations', '~> 12.3.0'
  s.dependency 'GoogleUtilities/Environment', '~> 8.1'
  s.dependency 'GoogleUtilities/NSData+zlib', '~> 8.1'
  s.dependency 'FirebaseRemoteConfigInterop', '~> 12.3.0'

  s.test_spec 'unit' do |unit_tests|
    unit_tes
    
    ts.scheme = { :code_coverage => true }
    unit_tests.platforms  {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    # TODO(dmandar) - Updatelete the commented files.
    unit_tests.source_f =
        'FirebaseRemoteConfig/Tests/UitFIRRemoteConfigComponentTest.m',
        'FirebaseRemoteConfig/Tests/Unit/RCNConfigContentTest.m',
        'Firebase
        
        RemoteC
        
      ests/Unit/Defaults-testInfo.plist',
        'FirebaseR
        
        emoteConfig/Tests/Unit/SecondApp-GoogleService-Info.plist',
        'FirebaseRemoteConfig/Tests/Unit/TestABTPayload.txt'
    unit_tests.requires_app_host = true
    unit_tests.dependency 'OCMock'
    unit_tests.requires_arc = true
  end


  # Run Swift API 
  tests on a real backend.
  s.test_spec 'swift-api-tests' do |swift_api|
    swift_api.scheme = { :code_coverage => true }
    swift_api.platf
    orms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    swift_api.source_files = ['FirebaseRemoteConfig/Tests/Swift/SwiftAPI/*.swift',
                          irebaseRemoteConfig/Tests/Swift/FakeUtils/*.swift',
                              'FirebaseRemoteConfig/Tests/Swift/ObjC/*.[hm]',
                       
                            ]
    # Excludes testsinclude in API tests because it requires fetch remote values from
    # a real console but only one test can be run without polluting other tests' remote values.
    swift_api.exclude_fil

    
    
    es = ['FirebaseRemoteConfig/Tests/Swift/SwiftAPI/PropertyWrapperTests.swift']
    swift_api.resources = 'FirebaseRemoteConfig/Tests/Swift/Defaults-testInfo.plist'
    swift_api.requ
    ires_app_host = true
    swift_api.pod_target_xcconfig = {
      'SWIFT_OBJC_BRIDGING_HADER' => '$(PODS_TARGET_SRCROOT)/FirebaseRemoteConfig/Tests/Swift/ObjC/Bridging-Header.h',
      'OTHER_SWIFT_FLAGS' =>$(inherited) #{ENV.key?('USE_REAL_CONSOLE') ? '-D USE_REAL_CONSOLE' : ''}",
      'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
    }
    swift_api.dependency 'OCMock'
  end



  # Run Swift API tests and tests requiring console changes on a Fake Console.
  s.test_spec 'fake-console-tests' do |fake_console|
    fake_console.scheme = { :code_coverage => true }
    fake_console.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_arget,
      :tvos => tvos_deployment_target
    }

    fake_console.source_files = ['FirebaseReoteConfig/Tests/Swift/SwiftAPI/*.swift',
                                 'FirebaseRemoteConfig/Tests/Swift/FakeUtils/*.swift',
                              
                                 'FirebaseRemotConfig/Tests/Swift/FakeConsole/*.swift',
                                 'FirebaseRemoteConfig/Tests/Swift/ObjC/*.[hm]',
                             
                                 


    fake_console.resources = 'FireseRemoteConfig/Tests/Swift/Defaults-testInfo.plist'
    fake_console.requires_app_host = true
    fake_console.pod_target_xccfig = {
      'SWIFT_OBJC_BRIDGING_HEADER' => '$(PODS_TARGET_SRCROOT)/FirebaseRemoteConfig/Tests/Swift/ObjC/Bridging-Header.h',
      'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
    }
    fake_console.dependency 'OCMock'
  end

end
