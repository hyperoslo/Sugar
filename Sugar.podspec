Pod::Spec.new do |s|
  s.name             = "Sugar"
  s.summary          = "Something sweet that goes great with your Cocoa"
  s.version          = "5.0.1"
  s.homepage         = "https://github.com/hyperoslo/Sugar"
  s.license          = 'MIT'
  s.author           = { "Hyper Interaktiv AS" => "ios@hyper.no" }
  s.source           = { :git => "https://github.com/hyperoslo/Sugar.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyperoslo'

  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '10.0'

  s.requires_arc = true
  s.ios.source_files = 'Sources/{iOS,iOS-Exclusive,Shared}/**/*'
  s.osx.source_files = 'Sources/{macOS,Shared}/**/*'
  s.tvos.source_files = 'Sources/{iOS,Shared}/**/*'

  s.frameworks = 'Foundation'

  s.swift_version = '5.0'
end
