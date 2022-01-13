Pod::Spec.new do |spec|
  spec.name                = 'WechatOpenSDK'
  spec.version             = '1.8.7.1'
  spec.summary             = 'Swift bridge for WechatOpenSDK'
  spec.homepage            = 'http://wuyong.site'
  spec.license             = 'MIT'
  spec.author              = { 'wuyong' => 'admin@wuyong.site'  }
  spec.source              = { :git => 'https://github.com/lszzy/FWSwiftBridge.git', :tag => '1.0.0' }
  spec.platform            = :ios, '11.0'
  spec.swift_version       = '5.0'

  spec.source_files = 'FWSwiftBridge/WechatOpenSDK/*.swift', 'FWSwiftBridge/WechatOpenSDK/*.h'
  spec.public_header_files = 'FWSwiftBridge/WechatOpenSDK/*.h'
  spec.vendored_libraries = 'FWSwiftBridge/WechatOpenSDK/libWeChatSDK.a'
  spec.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/WechatOpenSDK', 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  spec.preserve_paths = 'FWSwiftBridge/WechatOpenSDK/module.modulemap'
  spec.libraries = 'z', 'c++', 'sqlite3.0'
  spec.frameworks = 'UIKit', 'WebKit', 'CoreGraphics', 'Security'
end
