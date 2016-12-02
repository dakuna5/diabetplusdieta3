Pod::Spec.new do |spec|
  spec.name          = 'JokesSample-UI-Kit'
  spec.version       = '1.0'
  spec.license       = { :type => 'MIT' }
  spec.homepage      = 'http://www.animaapp.com'
  spec.authors       = { 'alexeyweb11@gmail.com' => '' }
  spec.summary       = 'JokesSample UI Kit'
  spec.source        = { :git => '' }
  spec.source_files  = 'JokesSample/*.{h,m,swift}'
  spec.exclude_files = '**/AppDelegate.{h,m,swift}', '**/main.{h,m}', '**/info.plist', '**/LaunchScreen.storyboard'
  spec.framework     = 'SystemConfiguration'
  spec.ios.framework = 'UIKit', 'MapKit'
  spec.resources     = ['JokesSample/**/*.{xcassets,storyboard}', 'JokesSample/Resources/**/*.*']
  spec.ios.deployment_target  = '9.0'
  spec.pod_target_xcconfig    = { 'SWIFT_VERSION' => '3.0' }

  spec.subspec 'Anima-iOS-SDK' do |subspec|
    subspec.name           = 'Anima-iOS-SDK'
    subspec.source_files   = 'Anima-iOS-SDK/*.{h,m}'
    subspec.framework      = 'SystemConfiguration'
    subspec.ios.framework  = 'UIKit'
    subspec.ios.deployment_target  = '9.0'
  end

end