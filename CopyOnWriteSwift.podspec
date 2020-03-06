Pod::Spec.new do |s|
  s.name = 'CopyOnWriteSwift'
  s.version = '1.0.4'
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.summary = 'Bring Copy-On-Write to all value types'
  s.homepage = 'https://github.com/duyquang91/CopyOnWriteSwift'
  s.social_media_url = 'https://www.facebook.com/quangmin91'
  s.authors = { "Steve Dao" => "daoduyquang91@gmail.com" }
  s.source = { :git => "https://github.com/duyquang91/CopyOnWriteSwift.git", :tag  => "v"+s.version.to_s }
  s.platforms = { :ios => "11.0", :osx => "10.13", :tvos => "11.0", :watchos => "5.0" }
  s.requires_arc = true
  s.swift_version = '5.0'
  s.cocoapods_version = '>= 1.4.0'

  s.default_subspec = "Core"
  s.subspec "Core" do |ss|
    ss.source_files  = "Sources/**/*.swift"
    ss.framework  = "Foundation"
 end
end
