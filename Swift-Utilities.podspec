#
# Be sure to run `pod lib lint Swift-Utilities.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Swift-Utilities'
  s.version          = '0.1.0'
  s.summary          = 'Swift Utils can be used to simplify various tasks. They are actually an extension to your UIView, UIViewController, NSObject etc.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = 'Swift Utils can be used to simplify various tasks. They are actually an extension to your UIView, UIViewController, NSObject etc. There is a wonderful extension to add popUp into our viewcontroller or UIWindow from different directions and at different positions.'

  s.homepage         = 'https://github.com/amrit42087/Swift-Utilities'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'amritsidhu88@gmail.com' => 'amritsidhu88@gmail.com' }
  s.source           = { :git => 'https://github.com/amrit42087/Swift-Utilities.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'
  s.swift_version = '4.2'

  s.source_files = 'Swift-Utilities/Classes/**/*'
  
  s.resource_bundles = {
     'Swift-Utilities' => ['Swift-Utilities/Assets/*.png','Resources/Assets/*.png','Resources/Swift-Utilities.bundle']
  }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
