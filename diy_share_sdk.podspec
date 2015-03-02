Pod::Spec.new do |s|

  s.name         = "diy_share_sdk"
  s.version      = "0.0.1"
  s.summary      = "wechat QQ sina diy_share_sdk"

  s.description  = <<-DESC
                   自定义集成 微信 QQ 新浪 sdk
                   DESC

  s.homepage     = "https://github.com/sunzhe/diy_share_sdk"

  s.license          = 'MIT'
  s.author             = { "ioszhe" => "ioszhe@qq.com" }

  s.source       = { :git => "https://github.com/sunzhe/diy_share_sdk", :tag => s.version.to_s }

  s.platform     = :ios, '6.0'

 #s.source_files  = 'shareSdk/*'
  s.resource     = 'shareSdk/libWeiboSDK/WeiboSDK.bundle', 'shareSdk/QQSDK_64/TencentOpenApi_IOS_Bundle.bundle'

  s.frameworks   = 'CoreTelephony', 'ImageIO', 'SystemConfiguration'
  s.library = 'sqlite3.0', 'c++', 'iconv', 'z'
  s.vendored_libraries = 'shareSdk/libWeiboSDK/libWeiboSDK.a', 'shareSdk/WeChatSDK_64/libWeChatSDK.a'
  s.vendored_frameworks = 'shareSdk/QQSDK_64/TencentOpenAPI.framework'
end
