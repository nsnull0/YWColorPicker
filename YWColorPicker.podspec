Pod::Spec.new do |s|
s.name         = "YWColorPicker"
s.version      = "1.1.2"
s.summary      = "YWColorPicker Simple Color Picker"
s.description  = "Simple Color Picker for you to try, Lightweight color picker written in Swift 3.0"
s.requires_arc = true
s.homepage     = "https://github.com/nsnull0/YWColorPicker"
s.license      = { :type => "MIT", :file => "LICENSE" }
s.author             = { "yoseph_wijaya" => "info@yoseph.ws" }
s.platform     = :ios
s.ios.deployment_target = "9.0"
s.source       = { :git => "https://github.com/nsnull0/YWColorPicker.git", :tag => "#{s.version}" }
s.source_files  = "YWColorPicker/Classes/*.{swift}"
s.resources = "YWColorPicker/Resources/*.{png,jpeg,jpg,storyboard,xib,xcassets}"
s.framework  = "UIKit"

end
