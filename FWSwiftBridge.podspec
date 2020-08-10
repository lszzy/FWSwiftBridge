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
    plugin.source_files = 'WechatOpenSDK/*.swift', 'WechatOpenSDK/*.h'
    plugin.public_header_files = 'WechatOpenSDK/*.h'
    plugin.vendored_libraries = 'WechatOpenSDK/libWeChatSDK.a'
    plugin.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/WechatOpenSDK', 'OTHER_LDFLAGS' => '-ObjC -all_load' }
    plugin.preserve_paths = 'WechatOpenSDK/module.modulemap'
    plugin.libraries = 'z', 'c++', 'sqlite3.0'
    plugin.frameworks = 'UIKit', 'WebKit', 'CoreGraphics', 'Security'
  end

  spec.subspec 'AlipaySDK-iOS' do |plugin|
    plugin.source_files = 'AlipaySDK-iOS/*.swift'
    plugin.vendored_frameworks = 'AlipaySDK-iOS/AlipaySDK.framework'
    plugin.resources = 'AlipaySDK-iOS/AlipaySDK.bundle'
    plugin.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/AlipaySDK-iOS', 'OTHER_LDFLAGS' => '-ObjC -all_load' }
    plugin.preserve_paths = 'AlipaySDK/module.modulemap'
    plugin.libraries = 'z', 'c++'
    plugin.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'CoreText', 'WebKit'
  end
end
