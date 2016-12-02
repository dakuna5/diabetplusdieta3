//
//  APJokesSampleManager.swift
//  JokesSample
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit


/** APJokesSampleManager gives an easy access to Anima code */
public class APJokesSampleManager : NSObject {

    public static let sharedInstance = APJokesSampleManager();

    public static func shared() -> APJokesSampleManager {
        return self.sharedInstance
    }

    /**
    Holds the theme as configured in Anima.
    On runtime, you may change its values and call APJokesSampleManager.sharedInstance().theme.apply()
    **/
    public var theme: ANTheme?

    override init() {
        super.init()
        self.setupTheme()
    }

    public func animaStoryboad() -> UIStoryboard {
        return UIStoryboard(name: "JokesSample", bundle:nil);
    }

    public func initialVC() -> UIViewController {
        return self.animaStoryboad().instantiateInitialViewController()!;
    }

    internal func setupTheme() -> Void {
        self.theme = ANTheme()
        self.theme!.navBarColor          = UIColor(red: 0.969, green:0.275, blue:0.29, alpha:1.0);
        self.theme!.navBarButtonsColor   = UIColor(red: 0.996, green:1.0, blue:1.0, alpha:1.0);
        self.theme!.navBarTitleColor     = UIColor(red: 0.996, green:1.0, blue:1.0, alpha:1.0);
        self.theme!.navBarTitleFontName  = "Futura-Medium";
        self.theme!.navBarTitleFontSize  = 18;
        self.theme!.navBarIsTranslucent  = false;
        self.theme!.tabBarIsTranslucent  = false;
        self.theme!.tabBarColor          = UIColor(red: 0.98, green:0.98, blue:0.98, alpha:1.0);
        self.theme!.tabBarSelectedButtonsColor = UIColor(red: 0.0, green:0.42, blue:1.0, alpha:1.0);
    }

}