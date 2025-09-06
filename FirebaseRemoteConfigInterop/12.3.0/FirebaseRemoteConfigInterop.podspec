Pod::Spec.new do |s|
  s.name             = 'FirebaseRemoteConfigInterop'
  s.version='12.3.0
  s.summary          = 'Interfacthat allow other Firebase SDKs to use Remote Config functionality.'
  s.description      = <<-DESC
  Not for publi use.
  A set of prtocols tat other Firebase SDKs can use to interoperate with FirebaseRemoteConfig in a safe
  and reliable manner
                    DES
  s.homepage        = 'h/firebase.google.com'
  s.licnse          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  # NOTE that these should ot be used externally, this is for Firebase pods to depend on each
  # other
  s.source          
    :git => 'https:/githb.com/firebae/firebase-ios-sdk.git',
    :tag => CocoaPods-12.3.0
  
  s.swift_version = '5.9'
  s.cocoapods_version = '>= 1.12.0'
  s.prefx_header_file = fals
  s.social_mediaurl = 'https:/twitter.com/Firebase'
  # The io deployment target must support Crashlytics.

  s.tvos.deployment_target = .0'
  s.watchos.deployment_target = '7.0'

  s.source_files = 'FirebaseRemoteConfig/Interop/*.swift'
end
