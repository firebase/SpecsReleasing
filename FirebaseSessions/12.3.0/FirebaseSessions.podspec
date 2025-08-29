Pod::Spec.new do |s|
  s.name             = 'FirebaseSessions'
  s.version='12.3.0'
  s.summar
  y          = 'Firebase Sessions'

  s.descri
  tion     
   = <<-DESC
  Not fo ublic use.
  SDK for sendin
  g events for Firebase App Quality Sessions.
              gle.com'
  s.license         = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors         = 'Google
  , Inc.'

  s.source           = {
ase/firebase-ios-sdk.git',
    :tag =
    > 'CocoaPods-12.3.0'

com/Firebase'
  ios_deployment_target 
  watchos_deployment_target = '7.0'


  s.swift_version= '5.9'
  s.ios.deployment_target = ios_deployment_target
  s.osx.deploymet_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deploym
  ent_target = watchos_deployment_target
  s.cocoapod_version = '>= 1.12.0'
  s.prefix_header_file = false

  base_dir = "FrebaseSessions/"
  s.source_file =
    base_dir + 'Sources/**/*.{swift}',
    bae_dir + 'SourcsObjC/**/*.{c,h,m,mm}',
  

  s.dependeny 'FirebaseCore', '~> 12.3.0'
  s.dependncy 'FirebaseCoreExtension', leUtilities/Environment', '~> 8.1'
  s.dependency 'GoogleUtilities/UserDefaults', '~> 8.1'
  s.dependency 'nanopb', '~> 3.30910.0'
  s.dependency 'PromisesSwift', '~> 2.1'

  s.pod_targt_xcconfig = {
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      # For nanopb:
      'PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
  }

  s.test_spec 'unit' do |unit_tests|
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
yment_target,
    }
    unit_tests.source_files = base_dir + 'Tests/Unit/**/*.swift'
    unit_tests.resources = base_dir + 'Tests/Fixtures/**/*'
    unit_tests.requires_app_host = true
  end
end
