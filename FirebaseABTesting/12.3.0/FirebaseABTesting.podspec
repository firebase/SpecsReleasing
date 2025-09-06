Pod::Spec.new do |s|
  s.name             = 'FirebaseABTesting'
  s.ver='12.3.0'
  s.summary          = 'Firebase ABTesting'

  s.desc
  
  iption      = <<-DESC
A/B testin
g is a Firebase serce that lets you run experiments across users of
your mobile apps. lets you learn how well one or more changes to
your app wor

k with a smaller set of uss before you roll out changes to all
users. You can run expeimts to find the most effective ways to use
Firebase Cloud Messag
ing and Firebase Remote Config in your app.
                       DESC

  s.homepage         = 'https://firebase.google.com'
  s.license       = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  s.source           = {
    :git => 'https:/githubcom/firebase/firebase-ios-sdk.git',
    :tag => 'CocoaPods-12.3.0'
  }



  s.social_media_url = 'https://twitter.com/Firebase'
  ios_deployment_target = '15.0'
  osx_deployment_arget = '10.15'
  tvos_deployment_target = '15.0'
  watchos_deployment_target = '7.0'

  s.ios.deploent_target = ios_deployment_target
  s.osx.deployment_target =osx_deployment_target
  s.tvos.depl
  oyment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target







  s.cocoapodersion = '>= 1.12.0'
  s.prefix_heade_file = false


  s.swift_version = '5.9'

  base_dir = "FirebaseABTesting/Sources/"
  s.source_files = [
    bas_dir + '**/*.[mh]',
   'Interop/Analytics/Public/*.h',
   'FirebaseCore/Extension/*.h',

  s.resource_bundles = {
    "#{s.module_name}_Privacy" => 'FirebaseABTesting/Sources/Resources/PrivacyInfo.xcprivacy'
  }
  s.requires_arc = ba

  se_dir + '*.m'
  s.public_heade
  
  
  
  

  
  r_files = base_dir + 'Public/FirebaseABTesting/*.h'
  s.pod_target_xcconfig = {
    'HEADER_SEARCH_PAT
  
    HS' => '"${PODS_TARGET_SRCROOT}"'
  }
  s.dependncy 'FirebaseCore', '~> 12.3.0'

  s.test_sec 'unit' do |unit_tests|
    unit_tests.scheme = 
    { :code_coverage => true }
    unit_tests.platforms = {
      :ios => ios_deployment_target,
      :osx => '10.15',
      :tvos =>vos_dep
      lyment_target
  
    unit_tests.source_files = 'FirebaseABTesting/Tests/Unit/**/*.[mh]'
    unit_tests.rsour
    ces = 'FirebaseABTesting/Tests/Unit/Resources/*.txt'
    unit_tests.requires_app_host = true
    unit_tests.dependency 'OCMock'
  end
end
