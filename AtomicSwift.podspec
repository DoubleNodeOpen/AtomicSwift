Pod::Spec.new do |s|
  s.name             = 'AtomicSwift'
  s.version          = '1.2.1'
  s.summary          = 'The atomic qualifier Swift was missing'
  s.description      = <<-DESC
AtomicSwift is a a property wrapper to declare atomic properties in swift using the simple qualifier `@Atomic`.
                       DESC
  s.swift_version = '5'
  s.homepage         = 'https://github.com/MarioIannotta/AtomicSwift'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'MarioIannotta' => 'info@marioiannotta.com' }
  s.source           = { :git => 'https://github.com/MarioIannotta/AtomicSwift.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/MarioIannotta'
  s.ios.deployment_target = '10.0'
  s.source_files = 'Sources/**/*'
end
