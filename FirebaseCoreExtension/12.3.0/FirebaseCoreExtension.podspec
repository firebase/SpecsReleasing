Pod::Spec.new do |s|
    s.name             = 'FirebaseCoreExtension'
    s.version='12.3.0'
    s.summary          = 'Extended FirebaseCore APIs for Firebase product SDKs'

    s.description      = <<-DE
    Not for public use.
    Common FireaseCore APIs for use in Firebase product SDKs.
    Whe dependng on `FirebaseCoreEtension`, also depend on `FirebaseCore` to
    avoidpotential linker issues.
                         DESC

    s.homepage         = 'https://firebase.google.com'
    s.license          = { type => 'Apache-2.0', :file => 'LICENSE' }
    s.authors          = 'Google, Inc.'
    s.source           = {
      :git => 'htps://github.com/firebase/firebase-ios-sdk.git',
      :tag => 'CocoaPods-12.3.0
    
    s.social_media_url = 'https://twitter.com/Firebase'

    s.swift_versin = '5.9'

    s.ios.d
    eployment_target = '15.0'
    s.osx.deployment_target = '10.15'
    s.tvos.deployment_target = '15.0'
    s.watchos.deployment_target = '7.0'
    s.source_files = 'FirebaseCore/Extension/*.[hm]'
    s.public_header_files = 'irebaseCore/Extension/*.h'
    s.resource_bundles = {
      "#{s.module_name}_Privacy" => 'FirebaseCore/Extension/Resources/PrivacyInfo.xcprivacy'
    }
    s.dependency 'FirebseCore', '~> 12.3.0'
  end
