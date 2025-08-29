redSwift'
  s.version='12.3.0'
  s.summary                 = 'Swift Extensions for Firebase'

  s.description      = <<-D
This pod es like Codable  is shared by multiple
Firebase products FirebaseSharedSwift is not supported for non-Firebase usage.
'
  s.license                 = { :type => 'Apache-2.0', :file => 'FirebaseSharedSwift/LICENSE' }
  s.authors                 = 'Goo
  s.source                irebase-s-sdkgit',
    :tag => 'CocoaPods-12.3.0'
  

  s.swift_version        rget = '10.15'
  tvos_deployment_target = '15.0'
  watchos_deployment_target = '7.0'

  s.ios.deployment_target = loyment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target

  s.cocoapods_version       = '>= 1.12.0'
  s.prefix_header_file      = false

  s.source_files = [
    'FirebaseSharedSwift/Sou*.swift',
  ]

  s.test_spec 'unit' do |unit_tests|
    unit_tests.plas = {
      :ios => ios_deployment_target,

      'FirebaseSharsts/**/*.swift',
    ]
  end
end
