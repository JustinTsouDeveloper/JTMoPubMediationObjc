Pod::Spec.new do |s|
          #1.
          s.name                   = "JTMoPubMediationObjc"
          
          s.version                = "0.0.3-beta3"
          #3.  
          s.summary                = "SDK MoPub Mediation Objc for iOS developer."
          #4.
          s.homepage               = "https://www.google.com.tw"
          #5.
          s.license                = "MIT"
          #6.
          s.author                 = "JT Inc."
          #7.
          s.ios.deployment_target  = "10.0"
          
          # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
          #
          #  CocoaPods is smart about how it includes source code. For source files
          #  giving a folder will include any swift, h, m, mm, c & cpp files.
          #  For header files it will include any header in the folder.
          #  Not including the public_header_files will make all headers public.
          #
          s.source                 = { :git => "https://github.com/JustinTsouDeveloper/JTMoPubMediationObjc.git", :tag => s.version.to_s }
          #9.
          s.exclude_files          = "Classes/Exclude"
          s.vendored_frameworks    = "TrekSDKMoPubMediationObjc.framework"
          #10.
          s.swift_version          = '4.2'

          # s.dependency 'AotterTrek-iOS-SDK','3.6.2'
          # s.dependency 'mopub-ios-sdk', '5.18.0'

          s.pod_target_xcconfig    = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
          s.user_target_xcconfig   = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64'}
    end