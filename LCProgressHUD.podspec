Pod::Spec.new do |s|

  s.name         = "LCProgressHUD"
  s.version      = "1.0.2"
  s.summary      = "A simple progress HUD. Support: http://www.leodong.com"
  s.homepage     = "https://github.com/LeoiOS/LCProgressHUD"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Leo" => "leoios@sina.com" }
  s.social_media_url   = "http://www.leodong.com"
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/LeoiOS/LCProgressHUD.git", :tag => s.version }
  s.source_files  = "LCProgressHUD/**/*.{h,m}"
  s.resource     = 'LCProgressHUD/LCProgressHUD.bundle'
  s.requires_arc = true

  s.dependency "MBProgressHUD", "~> 0.9.1"

end
