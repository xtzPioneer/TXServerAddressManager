#
# Be sure to run `pod lib lint TXServerAddressManager.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TXServerAddressManager'
  s.version          = '0.1.2'
  s.summary          = '统一管理服务器地址.可设置Run类型,在Release、DeBug模式中快速切换服务器地址.'
  s.description      = <<-DESC
  由TX所开发的统一管理服务器地址.可设置Run类型,在Release、DeBug模式中快速切换服务器地址.
                       DESC
  s.homepage         = 'https://github.com/xtzPioneer/TXServerAddressManager'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '张雄' => 'xtz_pioneer@163.com' }
  s.source           = { :git => 'https://github.com/xtzPioneer/TXServerAddressManager.git', :tag => s.version.to_s }
  s.ios.deployment_target = '8.0'
  s.source_files = 'TXServerAddressManager/Classes/**/*.{h,m}'
  s.public_header_files = 'Pod/Classes/**/*.h'
  s.frameworks = 'Foundation'
end
