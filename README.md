<a href="https://tldrlegal.com/license/mit-license" target="_blank"><img src="https://img.shields.io/apm/l/vim-mode.svg?maxAge=2592000"></a>
<a href="http://www.animaapp.com" target="_blank"><img src="http://animaapp.s3.amazonaws.com/github/ExportCode/code_byanima.png" height="20"></a>
<img src="https://img.shields.io/badge/language-Swift-orange.svg">
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

# JokesSample UI Kit

JokesSample UI Kit was designed by alexeyweb11@gmail.com.


## CocoaPods installation

1. In your podfile add

   ``` pod 'JokesSample-UI-Kit', :git => 'https://github.com/dakuna5/diabetplusdieta3.git'```
2. On the terminal, in your project folder, run ```pod install```



## Usage

`APJokesSampleManager` Gives you an easy access to the storyboard.
Here's an easy way to start:

On `application:didFinishLaunchingWithOptions:` use this to start with JokesSample UI Kit:

<img src="https://img.shields.io/badge/language-Swift-orange.svg">
```
import JokesSample-UI-Kit
```
```
   APJokesSampleManager.shared().theme?.apply();
   self.window?.rootViewController = APJokesSampleManager.shared().initialVC();
```
<img src="https://img.shields.io/badge/language-Obj--C-blue.svg">
```
#import <JokesSample-UI-Kit/APJokesSampleManager.h>
```
```
   [[APJokesSampleManager shared].theme apply];
   [self.window setRootViewController:[[APJokesSampleManager shared] initialVC]];
```