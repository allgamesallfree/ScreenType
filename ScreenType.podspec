#
# Be sure to run `pod lib lint ScreenType.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ScreenType'
  s.version          = '1.0.2'
  s.summary          = 'Easily distinguish between iPhone models in Objective-C and Swift'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Enables you to use UIScreen.current to get the ScreenType of the current device and see if it is equal to, greater than, or less than a particular iPhone or iPad model's size.
                       DESC

  s.homepage         = 'https://github.com/allgamesallfree/ScreenType'
  s.screenshots     = 'https://raw.githubusercontent.com/allgamesallfree/ScreenType/master/ScreenType.png', "https://raw.githubusercontent.com/allgamesallfree/ScreenType/master/ScreenType.gif"
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Max Stein' => 'max34563@gmail.com' }
  s.source           = { :git => 'https://github.com/allgamesallfree/ScreenType.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/maxsteinapps'

  s.ios.deployment_target = '9.0'

  s.source_files = 'ScreenType/Classes/**/*'
  
  # s.resource_bundles = {
  #   'ScreenType' => ['ScreenType/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
