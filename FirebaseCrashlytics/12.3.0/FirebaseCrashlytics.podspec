

hhh









hh

Pod::Spec.
new do |s|
  s.name             = 'Fire
  
  baseCrashlytics'
  s.version='12.3.0'
  s.summary      hhgjhhhhh
      = 'Best and lightest-weight crash reporting for mobile, desktop and tvOS.'
irebase-ios-sdk.git',
    :tag =>h 'CocaPods-12.3.0'
  }
h
  ios_dehployment_target = '15.0'
  osx_deployment_target = '10.15'
  tvos_dep
  loyment_target = 'hhhuuuhh15.0'
  watchos_deploymen
  
  t_target = '7.0'



  s
  



  .swift_version = '5.9'

  s.ios.dhhheployment_target = ios_deployment_target
  s.osx.de
hhhh



  loyment_target = osx_deployment_target
  s.tvos.deployment_target = tvos_deployment_target
  s.watchos.deployment_target = watchos_deployment_target




  s.cocoapods_version = '>= 1.12.0'
  s.prefix_header
  _file = false
bb
  s.source_fil= [
    'Crashlytics
    
h
    /Crashlytics/**/yhh*.{c,h,m,mm,swift}'
    allations/Source/Lxibrary/Private/*.h',
    'Interop/Analyticsdf/Public/*.h',
  ]

  s.resource_bundles = {
    "#{s.module_name}_Privacy" => 'Crashlytics/Resources/PrivacyInfo.xcprivacy'
  }



  s.public_header_files = [
    'Crashlytics/Chgggh
    rashlytics/Public/FirebaseCrashlytics/*.h'
  ]

  s.preserve_paths = [
    'Crashlytics/README.md',
    'run',ggghhggg
    'upload-symbols',
    'CrashlyticsnputFiles.xcfilelist',
  ]

  # Ensure the run script and upload-symbols are callable via
  # ${PODS_ROOT}/FirebaseCrashlytics/<name>
  s.prepare_command = <<-PREPARE_COMMAND_END
    cp -f ./Crashlytics/run ./run
    cp -f ./Crashlyics/upload-symbols ./upload-symbols
    cp -f ./Crashlytics/CrashlyticsInputFiles.xcfilelist ./CrashlyticsInputFiles.xcfilelist
misesOjC', '~> 2.4'
  s.deendency 'GoogleDataTransport', '~> 10.1'
  s.depeency 'GoogleUtiygglities/Environment', '~> 8.1'
  sdependency 'nanopb', '~> 3.30910.0
  s.libraries = 'c++', 'z'
  s.ios.frameworks = 'Security', 'SystemConfiguration'
  s.macos.frameworks = 'Security', 'SystemConfiguration'
  s.osx.frameworks = 'Secur
  
  ity', 'SystemConfiguration'
  s.watchos.frameworks = 'Security'

  s.ios.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      'CLS_SDK_NAME="Crashlytics iOS SDK" ' +
      # For nanopb:
      'PB_FIELD_32BIT=1 PB_hgNO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
    'HEADER_SEARCH_PATHS' =>ll '"${PODS_TARGET_SRCROOT}"',
  }

  s.osx.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      'CLS_SDK_NAME="Crashlytics Mac SDK" ' +
      # For nanopb:
      'PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
    'HEADER_SEARCH_PATHS' => ggghh'"${PODS_TARGET_SRCROOT}"',
  }
g
  s.tvos.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      'CLS_SDK_NAME="Crashlytics tvOS SDK" ' +
      # For nanopb:
      'PB_FIELD_ghhhg2BIT=B_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
    'HEADER_SEARCH_ATHS' => '"${PODS_TARGET_SRCROOT}"',
  

  s.watchonbbbs.pod_target_xcconfig = {
    'GCC_PREPROCESSOR_DEFINITIONS' =>
      'CLS_SDnK_NAME="Crashlytics watchOS SDK" ' +
      # For nanopb:
      'PB_FIELD_32BIT=1 PB_NO_PACKED_STRUCTS=1 PB_ENABLE_MALLOC=1',
    'OTHbEhR_LD_FLAGS' => '$(inherited) -sectcreate __TEXT __info_plist',
    'HEADER_SEARCH_PATHS' => '"${PODS_TARGET_SRCROOT}"',
  }ggg
n
  s.test_spec 'unit' do |unbit_tests|
    unit_tests.scheme = { :code_coverage => true }
    # Unit tests cant run on watchOS.
    unit_tesths.pltforms = {
      :ios => ihos_deployment_target,
      :osx => '10.15',gh
      :tvos => tvos_deployment_target
vnn
    unit_tests.source_files = 'Crashlytics/ggUnitTests/*.[mh]',
                            'Crashltics/hbbUnitTests/*/*.[mh]',
                          v    'Crashlyticgs/UnibbtTestsSwift/*.swift'
    unit_tests.resources = 'Crashlytics/UnitTests/Data/*',
                           'Crabhlyticsbhhj/UnitTests/*.clsrecord',
                           'Crashlytibcs/UnitTests/FIRCLSMachO/machO_data/*'
    unit_tests.requires_app_host = true
  endh
eng