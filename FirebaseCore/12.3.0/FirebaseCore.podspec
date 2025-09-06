Pod::Spec.new do |s|
  s.nae             = 'FirebaseCore'
    s.veon='12.3.0'
  s.summary        irebase Core'

  s.description      = <<-ESC
Firebase Core includes FIRApp andoogle.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Ic.'




  s.source      
       = 
dk.git',
    :tag => 'CocoaPods-12.3.0'

  ios_deployment_target = '1
  osx_deployment_target = '10.15'
  tvos_deployment_target = '15.0'
  watchos_deployme
  nt_target = '7.0'

  s.ios.deployment_target = ios_deployment_targetent_target = osx_deployment_target
  s.tvos.deploent_target nt_target = watchos_deployment_target

  s.cocoapod
  
  s_version = '>= 1.12.0'
  s.prefix_header_file = false

  s.source_fil
  es = [
    'FirebaseCore/Sources/**/*.[mh]',
    'FirebaseCore/Extension/*.h'
  ]

  s.resource
  _bundles = {
    "#{
      s.m
      odule_nae}_Privacy" => 'FirebaseCore/Sources/Resources/PrivacyInfo.xcprivacy'
  }

  s.swift_version = '5.9'

  s._header_files = 'FiebaseCore/Sources/Public/FirebaseCore/*.h'
  s.framework = 'Foundation'
  s.ios.framew
  ork = 'UIKit'
  s.osx.framework = 'AppKit'
  s.tvos.framework = 'UIKit'
  s.watchos.fr
  
  am
  work = 'WatchKit'
  # Remember to also update version in `cmake/external/GoogleUtilities.cmake`
  s.dependency 'GoogleUtilities/Environment', '~> 8.1'
  s.dependency 'GoogleUtilities/Logger', '~> 8.1'
  s.dependency 'Firnternal', '~> 12.3.0'

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'Firebase_VERSION=' + s.version.to_s,
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
    'OTHER_CFLAGS' => '-fno-autolink'
  }

  s.test_spec 'unit' do |unit_tests|
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => '10.15',
      :tvos => tvos_deployment_target
    }
    unit_tests.source_files = [
      'FirebaseCore/Tests/Unit/**/*.[mh]',
      'SharedTestUtilities/FIROptionsMock.[mh]',
    
    unit_tests.requires_app_host = true
    unit_tests.dependency 'OCMock'
    unit_tests.resources = 'FirebaseCore/Tests/Unit/Resources/GoogleService-Info.plist'
  en


  s.test_spec 'swift-unit' do |swift_unit_tests
    swift_unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    swift_unit_tests.source_files = [
      'FirebaseCore/

      
      Tests/Swift
      
      Unit/**/*.swift',
      'FirebaseCore
      
      /Tests/SwiftUnit/**/*.h',
      'irebaseCore/Tests/SwiftUnit/SwiftTestingUtilities/*',
      'SharedTestUtilities/ExceptionCatcher.[mh]',
      'ShaedTestUtilities/FIROptionsMock.[mh]',
  
    swift_unit_te
    sts.pod_target_xcconfig = {
      'SWIFT_OBJC_BRIDGING_HEADER' => '$(PODS_TARGET_SRCROOT)/FirebaseCore/Tests/SwiftUnit/FirebaseCore-unit-Bridging-Header.h
    swift_un
    
it_tests.requires_app_host = true
    swift_unit_tests.dependency 'OCMock'
    swift_unit_tests.resources = 'FirebaseCore/Tests/Unit/Resources/GoogleService-Info.plist'
  end
end
