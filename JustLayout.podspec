Pod::Spec.new do |s|
  s.name             = 'JustLayout'
  s.module_name      = 'JustLayout'
  s.version          = "1.6.1"
  s.summary          = "An elegant Auto Layout sugar for iOS"
  s.description      = "JustLayout is an elegant Auto Layout sugar for iOS."

  s.homepage         = "https://github.com/Meniny/JustLayout"
  s.license          = { :type => "MIT", :file => "LICENSE.md" }
  s.authors          = { 'Elias Abel' => 'admin@meniny.cn' }
  s.social_media_url = 'https://meniny.cn/'

  s.source           = { :git => "https://github.com/Meniny/JustLayout.git", :tag => s.version.to_s }
  s.requires_arc     = true
  s.swift_version    = '5'

  s.ios.deployment_target = "8"
  s.tvos.deployment_target = "10.2"

  s.default_subspecs = 'Core'

  s.subspec 'Core' do |ss|
    ss.source_files  = 'JustLayout/Core/**/*.swift', 'JustLayout/JustLayout.h'
  end
  
  s.subspec 'DSL' do |ss|
      ss.dependency      'JustLayout/Core'
      ss.source_files  = 'JustLayout/DSL/**/*.swift'
  end
end
