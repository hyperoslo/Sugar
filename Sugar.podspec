Pod::Spec.new do |s|
  s.name             = "Sugar"
  s.summary          = "Something sweet that goes great with your Cocoa"
  s.version          = "2.0.0"
  s.homepage         = "https://github.com/hyperoslo/Sugar"
  s.license          = 'MIT'
  s.author           = { "Hyper Interaktiv AS" => "ios@hyper.no" }
  s.source           = { :git => "https://github.com/hyperoslo/Sugar.git", :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/hyperoslo'

  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.10'
  s.tvos.deployment_target = '9.2'

  s.requires_arc = true
  s.ios.source_files = 'Source/{iOS,iOS-Exclusive,Shared}/**/*'
  s.osx.source_files = 'Source/{Mac,Shared}/**/*'
  s.tvos.source_files = 'Source/{iOS,Shared}/**/*'

  s.frameworks = 'Foundation'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.0' }
end
