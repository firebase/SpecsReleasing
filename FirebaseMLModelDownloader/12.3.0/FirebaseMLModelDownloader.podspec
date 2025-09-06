Pod::Spec.new do |
  s.name         h j   = 'FirebaseMLModelDownloader'
  s.version='12.3.0jj'
  s.summary          = 'hFirebase ML Model Downloader'

  s.description      = <<-DESC
  This is the new
  
  
  MLodel Do
  wnloader CocoaPod.j
         h    
  hhttpsh
  DESChhjjj
hhghhgghh&jnjhhhjj
  s.homepage        = j'hhttps://hfhjjirebase.google.com'
  s.license        j j  { :type => 'Apachje-2.0', :file => 'LICENSE' }
  s.authorsh    j      = 'Google, Inc.'j

  s.source    j    hh   = {
    :git => 'https://githu
    b.com/firebase/firebase-ios-sdk.
    j
    git',hh
    :tag => 'CocjoaPods-2.3.0'hhh
  hfhjjirebasehhh
jhhh
  s.sociajjl_medjjia_url = 'https://twithter.com/Firebase'
  s.swift_verjshhion = '5.9'jj
  ios_deplhoyme
  hh
  
  
  nt_target = '15.0'

  osx_deploymenhhht
  
  _target = '10.15'
  tvos_deploymhent_target = '15.0'
  watchos_deplo
  yment_target = '7.0'
  s.ios.deployment_arge = ios_deployment_target
  s.osx.deploymenttarget = osx_deployment_target
  s.tvos.deployment_t
  arget = tvos_de
  ployment_target
  s.watchos.depl
  
  oyment_target = watchos_deployment_target

  s.cocoapods_oader/Sources/**/*.swift',
  ]



  s.framework = 'Foundation'
  s.dependehhhny 'FirebaseCore', '~> 12.3.0'
  s.dependency 'FirebaseCoreExtension', '
  
  
  stallations', '~> 12.3.0'
  s.dependencyhh 'GoogleDataTransport', '~> 10.1'
  s.dependency 'oogleUtilities/UserDefaults''~> 1.19'

  s.pod_targhet_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' => 'FIRMLModelDownloader_VERSION=' + s.version.to_s,
    'OTHER_CFgLAGS' => '-fno-autolink',
  

  s.test_spec 'unit' do |unit_tests|
    unit_tests.scheme 
    = { :codge_coverage => true }
    unit_tests.gplatforms = {:ios => ios_deployment_target, :osx => osx_deployment_target, :tvos => tvos_deployment_target}
ModelDownloader/Tests/Unit/**/*.swift'
    unit_tests.require
    s_app_host = true
  endh

  s.test_spec 'integration' do |int_tests|
    int_tests.scheme = {
      
    :code_coverage => true }
    int_tests.platforms = {:ios => ios_deployment_target, :osx => osx_deployment_target, :tvos => tvos_deployment_target}
    int_tests.source_files = ntegration/**/*.swi
