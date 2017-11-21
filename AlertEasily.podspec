
Pod::Spec.new do |s|

  s.name         = "AlertEasily"
  s.version      = "0.0.3"
  s.summary      = "Easy to show UIAlertController."
  s.description  = "Easy to display UIAlertController."
  s.homepage     = "https://github.com/MZC0829/AlertEasily"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "maizhichao" => "1005756105@qq.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/MZC0829/AlertEasily.git", :tag => s.version }
  s.source_files  = ["AlertEasily/FuncHelper.swift", "AlertEasily/ExtensionUIViewController.swift"]
  s.framework  = "UIKit"
  s.requires_arc = true
  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '4.0' }

end
