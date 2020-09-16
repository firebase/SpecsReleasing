Pod::Spec.new do |s|
  s.name             = 'FirebaseAppDistribution'
  s.version          = '0.9.3'
  s.summary          = 'App Distribution for Firebase iOS SDK.'

  s.description      = <<-DESC
iOS SDK for App Distribution for Firebase.
                       DESC

  s.homepage         = 'https://developers.google.com/'
  s.license          = { :type => 'Apache', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'
  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'AppDistribution-' + s.version.to_s
  }

  s.ios.deployment_target = '9.0'

  s.cocoapods_version = '>= 1.4.0'
  s.static_framework = true
  s.prefix_header_file = false

  base_dir = "FirebaseAppDistribution/Sources/"
  s.source_files = [
    base_dir + '**/*.{c,h,m,mm}',
    'FirebaseCore/Sources/Private/*.h',
    'FirebaseInstallations/Source/Library/Private/*.h',
    'GoogleDataTransport/GDTCORLibrary/Internal/*.h',
    'GoogleUtilities/AppDelegateSwizzler/Private/*.h',
    'GoogleUtilities/UserDefaults/Private/*.h',
  ]
  s.public_header_files = base_dir + 'Public/*.h'

  s.dependency 'FirebaseCore', '~> 6.10'
  s.dependency 'GoogleUtilities/AppDelegateSwizzler', '~> 6.7'
  s.dependency 'GoogleUtilities/UserDefaults', '~> 6.7'
  s.dependency 'FirebaseInstallations', '~> 1.6'
  s.dependency 'GoogleDataTransport', '~> 7.2'

  s.pod_target_xcconfig = {
    'GCC_C_LANGUAGE_STANDARD' => 'c99',
    'GCC_PREPROCESSOR_DEFINITIONS' => 'FIRAppDistribution_VERSION=' + s.version.to_s,
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }

  s.test_spec 'unit' do |unit_tests|
   unit_tests.source_files = 'FirebaseAppDistribution/Tests/Unit*/*.[mh]'
   unit_tests.resources = 'FirebaseAppDistribution/Tests/Unit/Resources/*'
   unit_tests.dependency 'OCMock'
  end

  # end
end
