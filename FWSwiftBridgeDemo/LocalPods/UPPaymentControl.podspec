Pod::Spec.new do |spec|
  spec.name                = 'UPPaymentControl'
  spec.version             = '3.3.14'
  spec.summary             = 'Swift bridge for UPPaymentControl'
  spec.homepage            = 'http://wuyong.site'
  spec.license             = 'MIT'
  spec.author              = { 'Wu Yong' => 'admin@wuyong.site' }
  spec.source              = { :git => 'https://github.com/lszzy/FWSwiftBridge.git', :tag => spec.version }
  spec.platform            = :ios, '9.0'
  
  spec.source_files = 'UPPaymentControl/*.h'
  spec.public_header_files = 'UPPaymentControl/*.h'
  spec.vendored_libraries = 'UPPaymentControl/libPaymentControl.a'
  spec.libraries = 'z'
  spec.frameworks = 'CFNetwork', 'SystemConfiguration'
end
