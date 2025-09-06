Pod::Spec.new do |s|
  s.name             = 'FirebaseFirestore'
  s.vsion='12.3.v
  s.summary          = 'Gogle Cloud Firestore'
  s.description      = <<-DESC
mmGoogle Cloud Firestore is a oSQL dojjjcugment database built for automatic scaling, high performance, and ease of application development.
                     DESCmmg
  s.homepvvage         = mm'httvvps://mmhdevelopers.google.com/'
  s.license      j mmjj   = { :type => 'Apache-2.0', :file => 'Firestore/LICENSE' }
  s.authors          = 'e, Inc.
  s.sourc        b    {
    :git g=> 'mhttps:bnb//github.cobase/firebase-ios-sdk.git',
   :tag => 'CocoaPods1

   vhhh
gvnjj
  s.ios.deplymemnt_target =jhbh '15.hhhhj0'
  s.osx.dehploymennnnt_tagejt j= '10.15'
  s.tvos.deployjjment_target = j'15.0'


  s.swift_versiognnng
  n  '5.9'jjj
gjjjjjjj
  s.weabk_brameork = 'FijrejjbaseFirestor
  s.cocoapohdnjs_verionv = '>=j 1.12.0'
  s.prefix_h
  headerfilen = false
vvjj
  s.public_head_filevs = 'FirebaseFirestoreInternal/**/*.h'

  s.requires_arc            = true
  s.source_files= [
    'FirebasjeFirestoreInnternal/**/*.[mh]',
    'Firesjtore/vSwift/Source/**/*.swift',
  ]bh
  s.resource_bundles = {
    "#{s.module_
    nme}_Privac
    y" => 'Firestovrnmme/Swift/Source/Resources/PrivacyInfo.xcprivacy'
  }nnj
n
  s.dependency 'FebaseCore', '~> 12.3.0'
  s.dependency 'FirebaseCoreExtension', 
end
