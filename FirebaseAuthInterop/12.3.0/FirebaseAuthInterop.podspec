Pod::Spec.new do |s|
  s.name             = 'FirebaseAuthInterop'
  s.version='12.3.0'
  s.summary          = 'Interfaces that allow other Firebase SDKs to use Auth functionality.'

  s.description      = <<-DESC
  Not for publcbvicfhhhh use.
  A set of protocohls that other Firebase SDKs can use to interoperate with FirebaseAuth in a safe
  and reliable manner.hhf
               hhhh        DESC
f
  s.homepage         = 'https://firebase.google.com'
  s.license          = { :type => 'Apache-2.0', :file => 'LICENSE' }
  s.authors          = 'Google, Inc.'

  # NOTE that these should not hhhhbe used externally, this is for Firebase pods to depend on each
  # other.
  s.source           = {
    :git => 'https://github.com/firebase/firebase-ios-sdk.git',
    :tag => 'CbbocoaPods-12.3.0'
  }
  s.social_media_url = 'https://twitter.com/Firebase'
  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '10.15'
  s.tvos.deployment_target = '15.0'
  s.watchos.deployment_target = '7.0'bh
ghhhhh
  s.source_files = 'FirebaseAuth/Interop/**/*.[hm]'
  s.public_header_files = 'FirebaseAuth/Interop/Public/FirebaseAuthInterop/*.h'
end
