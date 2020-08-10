Pod::Spec.new do |spec|
  spec.name                = 'FWSwiftBridge'
  spec.version             = '1.0.0'
  spec.summary             = 'Swift bridge for WechatOpenSDK and AlipaySDK'
  spec.homepage            = 'http://wuyong.site'
  spec.license             = 'MIT'
  spec.author              = { 'Wu Yong' => 'admin@wuyong.site' }
  spec.source              = { :git => 'https://github.com/lszzy/FWSwiftBridge.git', :tag => spec.version, :submodules => true }

  spec.platform            = :ios, '9.0'
  spec.swift_version       = '5.0'
  spec.frameworks          = [ 'Foundation' ]
  spec.default_subspecs    = [ 'WechatOpenSDK', 'AlipaySDK-iOS' ]

  spec.subspec 'WechatOpenSDK' do |plugin|
    plugin.source_files = 'FWSwiftBridge/WechatOpenSDK/*.swift', 'FWSwiftBridge/WechatOpenSDK/*.modulemap', 'FWSwiftBridge/WechatOpenSDK/*.h'
    plugin.public_header_files = 'FWSwiftBridge/WechatOpenSDK/*.h'
    plugin.vendored_libraries = 'FWSwiftBridge/WechatOpenSDK/libWeChatSDK.a'
    plugin.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/FWSwiftBridge/WechatOpenSDK', 'OTHER_LDFLAGS' => '-ObjC -all_load' }
    plugin.preserve_paths = 'FWSwiftBridge/WechatOpenSDK/module.modulemap'
    plugin.libraries = 'z', 'c++', 'sqlite3.0'
    plugin.frameworks = 'UIKit', 'WebKit', 'CoreGraphics', 'Security'
  end

  spec.subspec 'AlipaySDK-iOS' do |plugin|
    plugin.source_files = 'FWSwiftBridge/AlipaySDK-iOS/*.swift', 'FWSwiftBridge/AlipaySDK-iOS/*.modulemap'
    plugin.vendored_frameworks = 'FWSwiftBridge/AlipaySDK-iOS/AlipaySDK.framework'
    plugin.resources = 'FWSwiftBridge/AlipaySDK-iOS/AlipaySDK.bundle'
    plugin.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/FWSwiftBridge/AlipaySDK-iOS', 'OTHER_LDFLAGS' => '-ObjC -all_load' }
    plugin.preserve_paths = 'FWSwiftBridge/AlipaySDK-iOS/module.modulemap'
    plugin.libraries = 'z', 'c++'
    plugin.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'CoreText', 'WebKit'
  end
end
