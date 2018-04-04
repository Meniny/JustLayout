Pod::Spec.new do |s|
  s.name             = 'JustLayout'
  s.module_name = 'JustLayout'
  s.version          = "1.3.0"
  s.summary          = "An elegant Auto Layout sugar for iOS"
  s.description  = "JustLayout is an elegant Auto Layout sugar for iOS."

  s.homepage         = "https://github.com/Meniny/JustLayout"
  s.license          = { :type => "MIT", :file => "LICENSE.md" }
  s.author           = 'Elias Abel'
  s.social_media_url = 'https://meniny.cn/'

  s.source           = { :git => "https://github.com/Meniny/JustLayout.git", :tag => s.version.to_s }
  s.source_files     = "JustLayout/**/*.swift"
  s.requires_arc     = true
  s.swift_version    = '4.1'

  s.ios.deployment_target = "8"
  s.tvos.deployment_target = "10.2"
end
