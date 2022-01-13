Pod::Spec.new do |spec|
  spec.name                = 'AlipaySDK-iOS'
  spec.version             = '15.7.4'
  spec.summary             = 'Swift bridge for AlipaySDK-iOS'
  spec.homepage            = 'http://wuyong.site'
  spec.license             = 'MIT'
  spec.author              = { 'wuyong' => 'admin@wuyong.site'  }
  spec.source              = { :git => 'https://github.com/lszzy/FWSwiftBridge.git', :tag => '1.0.0' }
  spec.platform            = :ios, '11.0'
  spec.swift_version       = '5.0'

  spec.vendored_frameworks = 'FWSwiftBridge/AlipaySDK-iOS/AlipaySDK.framework'
  spec.resources = 'FWSwiftBridge/AlipaySDK-iOS/AlipaySDK.bundle'
  spec.xcconfig = { 'SWIFT_INCLUDE_PATHS' => '${PODS_TARGET_SRCROOT}/AlipaySDK-iOS', 'OTHER_LDFLAGS' => '-ObjC -all_load' }
  spec.libraries = 'z', 'c++'
  spec.frameworks = 'UIKit', 'Foundation', 'CFNetwork', 'SystemConfiguration', 'QuartzCore', 'CoreGraphics', 'CoreMotion', 'CoreTelephony', 'CoreText', 'WebKit'
end
