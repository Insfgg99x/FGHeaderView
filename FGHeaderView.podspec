Pod::Spec.new do |s|
s.name         = "FGHeaderView"
s.version      = "1.0"
s.summary      = "swift版本的一个方法实现表头部视图缩放"
s.homepage     = "https://github.com/Insfgg99x/FGHeaderView"
s.license      = "MIT"
s.authors      = { "CGPointZero" => "newbox0512@yahoo.com" }
s.source       = { :git => "https://github.com/Insfgg99x/FGHeaderView.git", :tag => "1.0" }
s.frameworks   = 'Foundation','UIKit'
s.platform     = :ios, '8.0'
s.source_files = 'FGHeaderView/*.{h,m}'
s.requires_arc = true
#s.dependency 'SDWebImage'
#s.dependency 'pop'
end

