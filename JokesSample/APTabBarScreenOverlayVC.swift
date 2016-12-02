//
//  APTabBarScreenOverlayVC.swift
//  JokesSample
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APTabBarScreenOverlayVC : ANViewController, ANTabBarControllerOverlay  {
    
    @IBOutlet weak var meButton: UIView?
    @IBOutlet weak var meButtonHappy: UIImageView?
    @IBOutlet weak var meButtonHappyColor: UIImageView?
    @IBOutlet weak var postButton: UIView?
    @IBOutlet weak var postButtonUpIcon: UIImageView?
    @IBOutlet weak var feedButton: UIView?
    @IBOutlet weak var feedButtonFeed: UIImageView?
    @IBOutlet weak var feedButtonFeedColor: UIImageView?

    

    @IBAction func feedButtonTap(sender: Any?) {
        ANTabBarController.shared()!.selectedIndex = 0;
        self.selectFeedAnimation();
    }

    @IBAction func postButtonTap(sender: Any?) {
        self.performSegue(withIdentifier: "tabBarScreen -> post - Modal", sender: self)
    }

    @IBAction func meButtonTap(sender: Any?) {
        ANTabBarController.shared()!.selectedIndex = 1;
        self.selectMeAnimation();
    }

    internal func selectMeAnimation() -> Void {

        var options: UIViewAnimationOptions;

        // Animating self.meButtonHappyColor
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.meButtonHappyColor!.anRemoveAllFrameConstraints();
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:-0.5, multiplier:0.0);
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.5, multiplier:0.0);
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:37.0, multiplier:0);
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:37.0, multiplier:0);
            self.meButtonHappyColor!.alpha           = 1.0;
            self.meButtonHappyColor!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.meButtonHappyColor!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.meButtonHappyColor!.anCornerRadius  = 0.0;
            self.meButtonHappyColor!.anBorderWidth   = 0.0;
            self.meButtonHappyColor!.anRotation      = 0.0;
            self.meButtonHappyColor!.isHidden        = false;
            self.meButtonHappyColor!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.meButtonHappy
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.meButtonHappy!.anRemoveAllFrameConstraints();
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:-1.0, multiplier:0.0);
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:37.0, multiplier:0);
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:38.0, multiplier:0);
            self.meButtonHappy!.alpha           = 0.0;
            self.meButtonHappy!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.meButtonHappy!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.meButtonHappy!.anCornerRadius  = 0.0;
            self.meButtonHappy!.anBorderWidth   = 0.0;
            self.meButtonHappy!.anRotation      = 0.0;
            self.meButtonHappy!.isHidden        = false;
            self.meButtonHappy!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.feedButtonFeed
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.feedButtonFeed!.anRemoveAllFrameConstraints();
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:38.0, multiplier:0);
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:31.0, multiplier:0);
            self.feedButtonFeed!.alpha           = 1.0;
            self.feedButtonFeed!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.feedButtonFeed!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.feedButtonFeed!.anCornerRadius  = 0.0;
            self.feedButtonFeed!.anBorderWidth   = 0.0;
            self.feedButtonFeed!.anRotation      = 0.0;
            self.feedButtonFeed!.isHidden        = false;
            self.feedButtonFeed!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.feedButtonFeedColor
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.feedButtonFeedColor!.anRemoveAllFrameConstraints();
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:38.0, multiplier:0);
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:31.0, multiplier:0);
            self.feedButtonFeedColor!.alpha           = 0.0;
            self.feedButtonFeedColor!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.feedButtonFeedColor!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.feedButtonFeedColor!.anCornerRadius  = 0.0;
            self.feedButtonFeedColor!.anBorderWidth   = 0.0;
            self.feedButtonFeedColor!.anRotation      = 0.0;
            self.feedButtonFeedColor!.isHidden        = false;
            self.feedButtonFeedColor!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.meButton

    }

    internal func selectFeedAnimation() -> Void {

        var options: UIViewAnimationOptions;

        // Animating self.feedButtonFeedColor
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.feedButtonFeedColor!.anRemoveAllFrameConstraints();
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:38.0, multiplier:0);
            self.feedButtonFeedColor!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:31.0, multiplier:0);
            self.feedButtonFeedColor!.alpha           = 1.0;
            self.feedButtonFeedColor!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.feedButtonFeedColor!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.feedButtonFeedColor!.anCornerRadius  = 0.0;
            self.feedButtonFeedColor!.anBorderWidth   = 0.0;
            self.feedButtonFeedColor!.anRotation      = 0.0;
            self.feedButtonFeedColor!.isHidden        = false;
            self.feedButtonFeedColor!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.feedButtonFeed
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.feedButtonFeed!.anRemoveAllFrameConstraints();
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:38.0, multiplier:0);
            self.feedButtonFeed!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:31.0, multiplier:0);
            self.feedButtonFeed!.alpha           = 0.0;
            self.feedButtonFeed!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.feedButtonFeed!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.feedButtonFeed!.anCornerRadius  = 0.0;
            self.feedButtonFeed!.anBorderWidth   = 0.0;
            self.feedButtonFeed!.anRotation      = 0.0;
            self.feedButtonFeed!.isHidden        = false;
            self.feedButtonFeed!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.meButtonHappyColor
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.meButtonHappyColor!.anRemoveAllFrameConstraints();
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:-0.5, multiplier:0.0);
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.5, multiplier:0.0);
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:37.0, multiplier:0);
            self.meButtonHappyColor!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:37.0, multiplier:0);
            self.meButtonHappyColor!.alpha           = 0.0;
            self.meButtonHappyColor!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.meButtonHappyColor!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.meButtonHappyColor!.anCornerRadius  = 0.0;
            self.meButtonHappyColor!.anBorderWidth   = 0.0;
            self.meButtonHappyColor!.anRotation      = 0.0;
            self.meButtonHappyColor!.isHidden        = false;
            self.meButtonHappyColor!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.meButtonHappy
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.0, options:options, animations: {

            self.meButtonHappy!.anRemoveAllFrameConstraints();
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:-1.0, multiplier:0.0);
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:37.0, multiplier:0);
            self.meButtonHappy!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:38.0, multiplier:0);
            self.meButtonHappy!.alpha           = 1.0;
            self.meButtonHappy!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.meButtonHappy!.anBorderColor   = UIColor(colorLiteralRed: 0.0, green:0.0, blue:0.0, alpha:0.0);
            self.meButtonHappy!.anCornerRadius  = 0.0;
            self.meButtonHappy!.anBorderWidth   = 0.0;
            self.meButtonHappy!.anRotation      = 0.0;
            self.meButtonHappy!.isHidden        = false;
            self.meButtonHappy!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

    }

}