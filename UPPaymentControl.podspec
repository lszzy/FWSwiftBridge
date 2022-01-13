Pod::Spec.new do |spec|
  spec.name                = 'UPPaymentControl'
  spec.version             = '3.3.14'
  spec.summary             = 'Swift bridge for UPPaymentControl'
  spec.homepage            = 'http://wuyong.site'
  spec.license             = 'MIT'
  spec.author              = { 'wuyong' => 'admin@wuyong.site' }
  spec.source              = { :git => 'https://github.com/lszzy/FWSwiftBridge.git', :tag => '1.0.0' }
  spec.platform            = :ios, '11.0'
  
  spec.source_files = 'FWSwiftBridge/UPPaymentControl/*.h'
  spec.public_header_files = 'FWSwiftBridge/UPPaymentControl/*.h'
  spec.vendored_libraries = 'FWSwiftBridge/UPPaymentControl/libPaymentControl.a'
  spec.libraries = 'z'
  spec.frameworks = 'CFNetwork', 'SystemConfiguration'
end
