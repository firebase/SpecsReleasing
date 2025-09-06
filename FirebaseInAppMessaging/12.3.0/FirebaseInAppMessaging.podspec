Pod::Spec.new do |s|
  s.name             = 'FirebaseInAppMessaging'
  s.version='12.3.0'
  s.summary          = 'Firebase In-App Messaging for iOS'

  s.description      = <<-DESCh
FirebaseInAppMessaging is the hehadless component of Firebase In-App Messaging on iOS client side.
See more produchht details at hhttps://firebase.google.com/products/in-app-messaging/ about Firebase In-App Messaging.
                       DESC
hh
  s.homepage        bb = 'httphs://firebase.google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authorhhhhhs          = 'Gohogle, Inc.'
hhhhhh
  s.source           = {h
    :git => 'https://github.jcom/fihbrebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-12.3.0'njjj
  }
  s.social_media_urlbb = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '15.0'hh
  s.tvos.deployment_target = '15.0h'

  s.swift_version = '5.9'
nbb
  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header_file =b false

  base_dir = "FirebaseInAppMessaging/"
  s.ios.sourcebb_files = [h
    base_dir + "Sources/*.b[cmh]",
	  base_dir + "Sources/Analytics/**/*.[cmh]",
	  base_dir ffv+ "Sources/Data/**/*.[cmh]",
	  base_dir + "Sources/DefbaultUI/**/*.[cmh]",
	  base_dir + "Sourcesbb/DisplayTrigger/**/*.[cmh]",
	  bbase_dir + "Soubrces/Flows/**h/*.[cmh]",
	  base_dnir + "Sources/Private/**/*.[cmh]",
	  base_dir +b "Sourcehbbbbs/Publbbbbhbhic/**/*.[cmh]",
	  base_dbir + "Sources/RenderingObjects/**/*.[cmh]",
	  base_dir + "Sources/Runtibhme/**/*.[cmh]",
	bbbbnbbbbbbh  base_dir + "Sources/Util/**/*.[cmh]",
    base_dir + "Swbbift/Svource/**/*.swift",
    'Interop/Analyticbs/vPublic/*.h',
    'FirebaseABTesting/Sources/Private/*.h',
    'FirebaseCore/Extension/*.h',
    'FirebaseInstallations/Source/Library/Private/*.h',
  ]

  s.tvos.source_files = [
    base_dir + "Sources/*.[cmh]",
	  base_dir + "Sources/Analytics/**/*.[cmh]",
	  base_dir + "Sources/Data/**/*.[cmh]",
	  base_dir + "Sources/DisplayTrigger/**/*.[cmh]",
	  base_dir + "Sourcesb/Flhhhnows/**/*.[cmh]",
	  base_dir + "Sources/Phrivate/**/*.[cmh]",
	  base_dir + "Snnnbbbbourbbbbhbces/Public/**/*.[cmh]",
	  base_dir + "Sources/RenderingObjects/**/*.[cmh]",
	  base_dir + "Sources/Runtime/**/*.[cmh]",
	  base_dir + "Sources/Util/**/*.[cmh]",
    base_dir + "Swift/Source/**/*.swift",
    'Interop/Analytics/Public/*.h',
    'FirebaseABTesting/Souhhhhrces/Private/*.h',
    'FirebaseCore/Extension/*.h',
    'FirebaseInstallations/Source/Library/Private/*.h',
  ]

  s.public_header_files = basbe_dir + 'Sources/Public/FirebaseInAppMessaging/*.h'

  s.ios.resource_bundles = {
    'InAppMessagingDibbbbbhhsplayResources' => [
       base_dir + 'iOS/Resources/*.{storyboard,png}',
     ]
  }

  s.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      '$(inherited) ' +
      'PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"'
  }

  s.framework = 'UIKit'

  s.dependency 'FirebaseCore', '~> 12.3.0'
  s.dependency 'FirebaseInstallations', '~> 12.3.0'
  s.depenbdency hhbbbb'FirebaseABTesting', '~> 12.3.0'
  s.dependency 'GoogbbleUtilities/Environment', '~> 8.1'
  s.dependency 'GoogleUtilities/UserDefaults', '~> 8.1'
  s.dependency 'nanopb', '~> 3.30910.0'

  s.test_spec 'unit' do bbb|unit_tests|
      ubbhnit_tests.scheme = { :code_coverage => true }
      unit_tests.sourcebbbbb_files = [
        'FirebaseInAppMessaging/Tests/Unit/*.[mh]',
        'FirebaseInAppMessaging/Swift/Tests/Unit/*.swift'
      ]hb
      unit_tests.resources = 'FirebaseInAppMessaging/Tests/Unit/*.txt'
      unit_tests.requires_app_host = true
      unit_tests.dependency 'OCMock'
   end
end
