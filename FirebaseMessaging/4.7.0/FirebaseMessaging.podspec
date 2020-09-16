Pod::Spec.new do |s|
  s.name             = 'FirebaseMessaging'
  s.version          = '4.7.0'
  s.summary          = 'Firebase Messaging'

  s.description      = <<-DESC
Firebase Messaging is a service that allows you to send data from your server to your users'
iOS device, and also to receive messages from devices on the same connection. The service handles
all aspects of queueing of messages and delivery to the target application running on the target
device, and it is completely free.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'Messaging-' + s.version.to_s
  }
  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '10.0'
  s.watchos.deployment_target = '6.0'

  s.cocoapods_version = '>= 1.4.0'
  s.static_framework = true
  s.prefix_header_file = false

  base_dir = "FirebaseMessaging/"
  s.source_files = [
    base_dir + 'Sources/**/*.[mh]',
    'Interop/Analytics/Public/*.h',
    'FirebaseCore/Sources/Private/*.h',
    'FirebaseInstallations/Source/Library/Private/*.h',
    'GoogleUtilities/AppDelegateSwizzler/Private/*.h',
    'GoogleUtilities/Environment/Private/*.h',
    'GoogleUtilities/Reachability/Private/*.h',
    'GoogleUtilities/UserDefaults/Private/*.h',
  ]
  s.requires_arc = base_dir + 'Sources/*.m'
  s.public_header_files = base_dir + 'Sources/Public/*.h'
  s.library = 'sqlite3'
  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      'GPB_USE_PROTOBUF_FRAMEWORK_IMPORTS=1 ' +
      'FIRMessaging_LIB_VERSION=' + String(s.version),
    # Unit tests do library imports using repo-root relative paths.
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
 }
  s.ios.framework = 'SystemConfiguration'
  s.tvos.framework = 'SystemConfiguration'
  s.osx.framework = 'SystemConfiguration'
  s.weak_framework = 'UserNotifications'
  s.dependency 'FirebaseCore', '~> 6.10'
  s.dependency 'FirebaseInstanceID', '~> 4.7'
  s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 6.7'
  s.dependency 'GoogleUtilities/Reachability', '~> 6.7'
  s.dependency 'GoogleUtilities/Environment', '~> 6.7'
  s.dependency 'GoogleUtilities/UserDefaults', '~> 6.7'
  s.dependency 'Protobuf', '~> 3.9', '>= 3.9.2'

  s.test_spec 'unit' do |unit_tests|
    unit_tests.platforms = {:ios => '8.0', :osx => '10.11', :tvos => '10.0'}
    unit_tests.source_files = 'FirebaseMessaging/Tests/UnitTests/*.{m,h,swift}'
    unit_tests.requires_app_host = true
    unit_tests.pod_target_xcconfig = {
     'CLANG_ENABLE_OBJC_WEAK' => 'YES'
    }
    unit_tests.dependency 'OCMock'
  end

  s.test_spec 'integration' do |int_tests|
    int_tests.platforms = {:ios => '8.0', :osx => '10.11', :tvos => '10.0'}
    int_tests.source_files = 'FirebaseMessaging/Tests/IntegrationTests/*.swift'
    int_tests.requires_app_host = true
    int_tests.resources = 'FirebaseMessaging/Tests/IntegrationTests/Resources/GoogleService-Info.plist'
  end
end
