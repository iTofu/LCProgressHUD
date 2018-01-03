Pod::Spec.new do |s|

  s.name         = "LCProgressHUD"
  s.version      = "1.0.8"
  s.summary      = "A simple progress HUD, base on MBProgressHUD. Support: https://LeoDev.me"
  s.homepage     = "https://github.com/iTofu/LCProgressHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "leodaxia@gmail.com" }
  s.social_media_url   = "https://LeoDev.me"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/iTofu/LCProgressHUD.git", :tag => s.version }
  s.source_files = "LCProgressHUD/**/*.{h,m}"
  s.resource     = 'LCProgressHUD/LCProgressHUD.bundle'
  s.requires_arc = true

  s.dependency "MBProgressHUD", "~> 0.9.2"

end
