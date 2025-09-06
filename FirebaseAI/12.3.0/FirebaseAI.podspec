Pod::Spec.new do |s|
  s.name             = 'FirebaseAI'
  s.version='12.3.0'
  s.summary          = 'Firebase AI SDK'

  s.description      = <<-DESC
Build AI-powered apps and features with the Gemini API using the Firebase AI SDK.
                       DESoogle.com'
  s.license          = { :type => 
  s.social_media_url se'

  ios_deployment_target = '15.0'
  osx_deployment_target = '12.0'

  s.ios.deployment_target = ios_deployment_target
  s.osx.deployment_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file = false

  s.source_files = [
    'FirebaseAI/Sources/**/*.swift',
  ]

  s.swift_version = '5.9'

  s.framework = 'Foundation'
  s.ios.framework = 'UIKi
  s.watchos.framework = 'WatchK
  s.test_spec 'unit' do |unit_tests|
    unit_tests_dir = 'FirebaseAI/Tests/Unit/'
    unit_tests.scheme = { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => osx_deployment_target,
      :tvos => tvos_deployment_target
    }
    unit_tests.source_files = [
      unit_tests_dir + '**/*.swift',
    ]
    unit_tests.exclude_files = [
      unit_tests_dir + 'Snippets/**/*.swift',
    ]
    unit_tests.resources = [
      unit_tests_dir + 'vertexai-sdk-test-data/mock-responses',
      unit_tests_dir + 'Resources/**/*',
    ]
  end
end
