Pod::Spec.new do |s|
  s.name             = 'JustLayout'
  s.version          = "1.1.0"
  s.summary          = "An elegant Auto Layout sugar for iOS"
  s.homepage         = "https://github.com/Meniny/JustLayout"
  s.license          = { :type => "MIT", :file => "LICENSE" }
  s.author           = 'Elias Abel'
  s.source           = { :git => "https://github.com/Meniny/JustLayout.git", :tag => s.version.to_s }
  s.social_media_url = 'https://meniny.cn/'
  s.source_files     = "JustLayout/**/*.swift"
  s.requires_arc     = true
  s.ios.deployment_target = "8"
  s.tvos.deployment_target = "10.2"
  s.description  = "JustLayout is an elegant Auto Layout sugar for iOS."
  s.module_name = 'JustLayout'
end
