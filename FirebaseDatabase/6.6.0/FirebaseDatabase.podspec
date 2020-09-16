Pod::Spec.new do |s|
  s.name             = 'FirebaseDatabase'
  s.version          = '6.6.0'
  s.summary          = 'Firebase Realtime Database'

  s.description      = <<-DESC
Simplify your iOS development, grow your user base, and monetize more effectively with Firebase.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'Database-' + s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '10.0'

  s.cocoapods_version = '>= 1.4.0'
  s.static_framework = true
  s.prefix_header_file = false

  base_dir = "FirebaseDatabase/Sources/"
  s.source_files = [
    base_dir + '**/*.[mh]',
    base_dir + 'third_party/Wrap-leveldb/APLevelDB.mm',
    base_dir + 'third_party/SocketRocket/fbase64.c',
    'Interop/Auth/Public/*.h',
    'FirebaseCore/Sources/Private/*.h',
  ]
  s.public_header_files = base_dir + 'Public/FirebaseDatabase/*.h'
  s.libraries = ['c++', 'icucore']
  s.frameworks = 'CFNetwork', 'Security', 'SystemConfiguration'
  s.dependency 'leveldb-library', '~> 1.22'
  s.dependency 'FirebaseCore', '~> 6.10'
  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'GCC_PREPROCESSOR_DEFINITIONS' => 'FIRDatabase_VERSION=' + s.version.to_s,
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }

  s.test_spec 'unit' do |unit_tests|
    unit_tests.source_files = 'FirebaseDatabase/Tests/Unit/*.[mh]',
                              'FirebaseDatabase/Tests/Helpers/*.[mh]',
                              'FirebaseDatabase/Tests/third_party/*.[mh]',
                              'SharedTestUtilities/FIRAuthInteropFake.[mh]',
                              'SharedTestUtilities/FIRComponentTestUtilities.h'
    unit_tests.resources = 'FirebaseDatabase/Tests/Resources/syncPointSpec.json',
                           'FirebaseDatabase/Tests/Resources/GoogleService-Info.plist'
  end

  s.test_spec 'integration' do |int_tests|
    int_tests.source_files = 'FirebaseDatabase/Tests/Integration/*.[mh]',
                             'FirebaseDatabase/Tests/Helpers/*.[mh]',
                             'SharedTestUtilities/FIRAuthInteropFake.[mh]'
    int_tests.resources = 'FirebaseDatabase/Tests/Resources/GoogleService-Info.plist'
  end
end
