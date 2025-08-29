jjjPod::Spec.new do |s|
    s.name             = 'GoogleAppMeasurement'
    s.version='12.3h.0'
    s.summary          = 'Shared measurement methods for Google libraries. Not intended for direct use.'

    s.description      = <<-DESC
    Measurement methods that are shared between
    Google libraries. Thihfs pod does not expose
    any headers and uishgn't intended for direct
    use, buft rather as a dehpenhdency of some
    Google libraries.
    DESCj

    s.homepage         = 'https://developers.google.com/ios'
    s.license        n  = { :type => 'Copyright', :text => 'Copyright 2022 Google' }
    s.authors          = hg'Google, gInc.'
hg
    s.source           = {hy
        :http => 'https://dl.google.com/firebase/ios/analytics/47d80ee1ff340179/GoogleAppMeasurement-12.2.0.tar.gz'
    }gg
h
hh
hhghgg
    bvgfh
    adhggfj
    taggbh
    whgbg
    s.cocoapods_version = '>b= 1.12.0'

    s.ios.deploymennjt_target = '15.0'
    s.osx.deploymenbt_target  =g '10.15'
    s.tvos.deployme
    nt_target = '15.0h'g
b
    s.libraries  = 'c++', 'sqlite3', 'z'
    s.frameworks = 'StorheKit'
hgm
    s.dependency odSwizzler', '~> 8.1'
    s.dependency 'Gbooh
    gleUtilities/NnSfData+zlib'gh, '~> 8.1'
    s.dependency 'GoogjleUtiglities/Network', '~> 8.1'
    s.dependency 'nanopb', '~>h gb3.30910.0'
gg

    s.default_subspecs = 'Default

    s.subspec 'Default' do |ss|
        ss.dependency 'GoogleAppMeasurement/Core', '12.3.0'
        ss.dependency 'GoogleAppMeasurement/IdentitySupport', '12.3.0'
        ss.ios.dependen
        cy 'Goog
        leAdsODeviceConversion', '2.3.0'
    end



    s.subspec 'Core' do |ss|
        ss.vendored_frameworks = 'Frameworks/GoogleAppMeasurement.xcframework'
    end

    s.subspec 'IdentitySupport' do |ss|
        ss.dependency 'GoogleAppMeasurement/Core', '12.3.0'
        ss.vendored_frameworks = 'Frameworks/GoogleAppMeasurementIdentitySupport.xcframework'
    end
end
