Pod::Spec.new do |s|
  s.name         = "AppInfo"
  s.version      = "0.0.1"
  s.summary      = "AppInfo - Swift way to get information about your app with static type safe API"

  s.homepage     = "https://github.com/kostiakoval/AppInfo"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "Kostiantyn Koval" => "konstantin.koval1@gmail.com" }
  s.social_media_url   = "http://twitter.com/kostiakoval"

  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/kostiakoval/AppInfo.git", :tag => s.version }

  s.source_files  = "AppInfo/Classes/**/*.{swift}"
  s.requires_arc = true
end
