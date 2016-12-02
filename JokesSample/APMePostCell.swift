//
//  APMePostCell.swift
//  JokesSample
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APMePostCell : UITableViewCell {
    
    weak open var delegate: ANCustomViewDelegate?
    @IBOutlet weak var shareTouchArea: UIView?
    @IBOutlet weak var jokeLabel: UILabel?
    @IBOutlet weak var userimage: UIImageView?
    @IBOutlet weak var nameLabel: UILabel?
    @IBOutlet weak var timeLabel: UILabel?
    @IBOutlet weak var shareContainer: UIView?
    @IBOutlet weak var shareContainerFacebookButton: UIView?
    @IBOutlet weak var shareContainerFacebookButtonImage19: UIImageView?
    @IBOutlet weak var shareContainerTwitterButton: UIView?
    @IBOutlet weak var shareContainerTwitterButtonImage18: UIImageView?
    @IBOutlet weak var shareContainerCloseButton: UIView?
    @IBOutlet weak var shareContainerCloseButtonImage21: UIImageView?
    public var shouldPrepareForReuse: Bool = false

    open var dataDictionary: NSDictionary? {
        didSet {
            self.jokeLabel!.text = self.dataDictionary!.an_object(forJsonPath: "joke") as! String?
            self.userimage!.anImageNameOrUrl = self.dataDictionary!.an_object(forJsonPath: "image") as! String?
            self.nameLabel!.text = self.dataDictionary!.an_object(forJsonPath: "full_name") as! String?
            self.timeLabel!.text = self.dataDictionary!.an_object(forJsonPath: "time") as! String?
        }
    }

    override public func awakeFromNib() -> Void {
        super.awakeFromNib();
        self.setupGestures();
    }

    internal func setupGestures() -> Void {
        var gestureRecognizer: UIGestureRecognizer;
        gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.shareContainerCloseButtonTap(sender:)))
        self.shareContainerCloseButton!.isUserInteractionEnabled = true;
        self.shareContainerCloseButton!.addGestureRecognizer(gestureRecognizer); 
        gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.shareContainerTap(sender:)))
        self.shareContainer!.isUserInteractionEnabled = true;
        self.shareContainer!.addGestureRecognizer(gestureRecognizer); 
        gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.shareTouchAreaTap(sender:)))
        self.shareTouchArea!.isUserInteractionEnabled = true;
        self.shareTouchArea!.addGestureRecognizer(gestureRecognizer); 
    }
    

    @IBAction func shareContainerCloseButtonTap(sender: Any?) {
        self.reverseShowShare();
    }

    @IBAction func shareContainerTap(sender: Any?) {
        self.showShare();
    }

    @IBAction func shareTouchAreaTap(sender: Any?) {
        self.showShare();
    }


    override public func prepareForReuse() {
        super.prepareForReuse()
        if (!self.shouldPrepareForReuse) {
            return;
        }
        self.shouldPrepareForReuse = false;
    

        self.shareContainer!.anRemoveAllFrameConstraints();
        self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintRight , constant:20.0, multiplier:0.0);
        self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintTop , constant:24.0, multiplier:0.0);
        self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:16.0, multiplier:0);
        self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:4.0, multiplier:0);
        self.shareContainer!.alpha           = 1.0;
        self.shareContainer!.backgroundColor = UIColor(colorLiteralRed: 0.61, green:0.76, blue:0.9, alpha:0.0);
        self.shareContainer!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainer!.anCornerRadius  = 0.0;
        self.shareContainer!.anBorderWidth   = 0.0;
        self.shareContainer!.anRotation      = 0.0;
        self.shareContainer!.isHidden        = false;
        self.shareContainer!.superview!.layoutIfNeeded(); // Animating constraints
    

        self.shareContainerCloseButtonImage21!.anRemoveAllFrameConstraints();
        self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
        self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
        self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:24.0, multiplier:0);
        self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:24.0, multiplier:0);
        self.shareContainerCloseButtonImage21!.alpha           = 0.0;
        self.shareContainerCloseButtonImage21!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainerCloseButtonImage21!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainerCloseButtonImage21!.anCornerRadius  = 0.0;
        self.shareContainerCloseButtonImage21!.anBorderWidth   = 0.0;
        self.shareContainerCloseButtonImage21!.anRotation      = 0.0;
        self.shareContainerCloseButtonImage21!.isHidden        = false;
        self.shareContainerCloseButtonImage21!.superview!.layoutIfNeeded(); // Animating constraints
    

        self.shareContainerTwitterButtonImage18!.anRemoveAllFrameConstraints();
        self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
        self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
        self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:24.0, multiplier:0);
        self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:24.0, multiplier:0);
        self.shareContainerTwitterButtonImage18!.alpha           = 0.0;
        self.shareContainerTwitterButtonImage18!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainerTwitterButtonImage18!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainerTwitterButtonImage18!.anCornerRadius  = 0.0;
        self.shareContainerTwitterButtonImage18!.anBorderWidth   = 0.0;
        self.shareContainerTwitterButtonImage18!.anRotation      = 0.0;
        self.shareContainerTwitterButtonImage18!.isHidden        = false;
        self.shareContainerTwitterButtonImage18!.superview!.layoutIfNeeded(); // Animating constraints
    

        self.shareContainerFacebookButtonImage19!.anRemoveAllFrameConstraints();
        self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
        self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
        self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:32.0, multiplier:0);
        self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:32.0, multiplier:0);
        self.shareContainerFacebookButtonImage19!.alpha           = 0.0;
        self.shareContainerFacebookButtonImage19!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainerFacebookButtonImage19!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
        self.shareContainerFacebookButtonImage19!.anCornerRadius  = 0.0;
        self.shareContainerFacebookButtonImage19!.anBorderWidth   = 0.0;
        self.shareContainerFacebookButtonImage19!.anRotation      = 0.0;
        self.shareContainerFacebookButtonImage19!.isHidden        = false;
        self.shareContainerFacebookButtonImage19!.superview!.layoutIfNeeded(); // Animating constraints
    }
    internal func showShare() -> Void {

        var options: UIViewAnimationOptions;
        self.shouldPrepareForReuse = true;

        // Animating self.shareContainer
        options = [ .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.4, delay:0.0, usingSpringWithDamping:0.5, initialSpringVelocity:0.0, options:options, animations: {

            self.shareContainer!.anRemoveAllFrameConstraints();
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintRight , constant:20.0, multiplier:0.0);
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintTop , constant:20.0, multiplier:0.0);
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:160.0, multiplier:0.0);
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:40.0, multiplier:0.0);
            self.shareContainer!.alpha           = 1.0;
            self.shareContainer!.backgroundColor = UIColor(colorLiteralRed: 0.61, green:0.76, blue:0.9, alpha:0.0);
            self.shareContainer!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainer!.anCornerRadius  = 0.0;
            self.shareContainer!.anBorderWidth   = 0.0;
            self.shareContainer!.anRotation      = 0.0;
            self.shareContainer!.isHidden        = false;
            self.shareContainer!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.shareContainerCloseButtonImage21
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.1, options:options, animations: {

            self.shareContainerCloseButtonImage21!.anRemoveAllFrameConstraints();
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:24.0, multiplier:0);
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:24.0, multiplier:0);
            self.shareContainerCloseButtonImage21!.alpha           = 1.0;
            self.shareContainerCloseButtonImage21!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerCloseButtonImage21!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerCloseButtonImage21!.anCornerRadius  = 0.0;
            self.shareContainerCloseButtonImage21!.anBorderWidth   = 0.0;
            self.shareContainerCloseButtonImage21!.anRotation      = 0.0;
            self.shareContainerCloseButtonImage21!.isHidden        = false;
            self.shareContainerCloseButtonImage21!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.shareContainerTwitterButtonImage18
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.1, options:options, animations: {

            self.shareContainerTwitterButtonImage18!.anRemoveAllFrameConstraints();
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:24.0, multiplier:0);
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:24.0, multiplier:0);
            self.shareContainerTwitterButtonImage18!.alpha           = 1.0;
            self.shareContainerTwitterButtonImage18!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerTwitterButtonImage18!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerTwitterButtonImage18!.anCornerRadius  = 0.0;
            self.shareContainerTwitterButtonImage18!.anBorderWidth   = 0.0;
            self.shareContainerTwitterButtonImage18!.anRotation      = 0.0;
            self.shareContainerTwitterButtonImage18!.isHidden        = false;
            self.shareContainerTwitterButtonImage18!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.shareContainerFacebookButtonImage19
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.1, options:options, animations: {

            self.shareContainerFacebookButtonImage19!.anRemoveAllFrameConstraints();
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:32.0, multiplier:0);
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:32.0, multiplier:0);
            self.shareContainerFacebookButtonImage19!.alpha           = 1.0;
            self.shareContainerFacebookButtonImage19!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerFacebookButtonImage19!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerFacebookButtonImage19!.anCornerRadius  = 0.0;
            self.shareContainerFacebookButtonImage19!.anBorderWidth   = 0.0;
            self.shareContainerFacebookButtonImage19!.anRotation      = 0.0;
            self.shareContainerFacebookButtonImage19!.isHidden        = false;
            self.shareContainerFacebookButtonImage19!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

    }

    internal func reverseShowShare() -> Void {

        var options: UIViewAnimationOptions;
        self.shouldPrepareForReuse = true;

        // Animating self.shareContainer
        options = [ .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.4, delay:0.0, usingSpringWithDamping:0.5, initialSpringVelocity:0.0, options:options, animations: {

            self.shareContainer!.anRemoveAllFrameConstraints();
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintRight , constant:20.0, multiplier:0.0);
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintTop , constant:24.0, multiplier:0.0);
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:16.0, multiplier:0);
            self.shareContainer!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:4.0, multiplier:0);
            self.shareContainer!.alpha           = 1.0;
            self.shareContainer!.backgroundColor = UIColor(colorLiteralRed: 0.61, green:0.76, blue:0.9, alpha:0.0);
            self.shareContainer!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainer!.anCornerRadius  = 0.0;
            self.shareContainer!.anBorderWidth   = 0.0;
            self.shareContainer!.anRotation      = 0.0;
            self.shareContainer!.isHidden        = false;
            self.shareContainer!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.shareContainerCloseButtonImage21
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.1, options:options, animations: {

            self.shareContainerCloseButtonImage21!.anRemoveAllFrameConstraints();
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:24.0, multiplier:0);
            self.shareContainerCloseButtonImage21!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:24.0, multiplier:0);
            self.shareContainerCloseButtonImage21!.alpha           = 0.0;
            self.shareContainerCloseButtonImage21!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerCloseButtonImage21!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerCloseButtonImage21!.anCornerRadius  = 0.0;
            self.shareContainerCloseButtonImage21!.anBorderWidth   = 0.0;
            self.shareContainerCloseButtonImage21!.anRotation      = 0.0;
            self.shareContainerCloseButtonImage21!.isHidden        = false;
            self.shareContainerCloseButtonImage21!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.shareContainerTwitterButtonImage18
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.1, options:options, animations: {

            self.shareContainerTwitterButtonImage18!.anRemoveAllFrameConstraints();
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:24.0, multiplier:0);
            self.shareContainerTwitterButtonImage18!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:24.0, multiplier:0);
            self.shareContainerTwitterButtonImage18!.alpha           = 0.0;
            self.shareContainerTwitterButtonImage18!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerTwitterButtonImage18!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerTwitterButtonImage18!.anCornerRadius  = 0.0;
            self.shareContainerTwitterButtonImage18!.anBorderWidth   = 0.0;
            self.shareContainerTwitterButtonImage18!.anRotation      = 0.0;
            self.shareContainerTwitterButtonImage18!.isHidden        = false;
            self.shareContainerTwitterButtonImage18!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

        // Animating self.shareContainerFacebookButtonImage19
        options = [ .curveEaseInOut, .beginFromCurrentState, .allowUserInteraction];
        UIView.animate(withDuration:0.2, delay:0.1, options:options, animations: {

            self.shareContainerFacebookButtonImage19!.anRemoveAllFrameConstraints();
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintCenterY , constant:0.0, multiplier:0.0);
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintCenterX , constant:0.0, multiplier:0.0);
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintWidth , constant:32.0, multiplier:0);
            self.shareContainerFacebookButtonImage19!.anSetRelativeConstraint(ANRelativeConstraintHeight , constant:32.0, multiplier:0);
            self.shareContainerFacebookButtonImage19!.alpha           = 0.0;
            self.shareContainerFacebookButtonImage19!.backgroundColor = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerFacebookButtonImage19!.anBorderColor   = UIColor(colorLiteralRed: 1.0, green:1.0, blue:1.0, alpha:0.0);
            self.shareContainerFacebookButtonImage19!.anCornerRadius  = 0.0;
            self.shareContainerFacebookButtonImage19!.anBorderWidth   = 0.0;
            self.shareContainerFacebookButtonImage19!.anRotation      = 0.0;
            self.shareContainerFacebookButtonImage19!.isHidden        = false;
            self.shareContainerFacebookButtonImage19!.superview!.layoutIfNeeded(); // Animating constraints

        }, completion:  { (finished: Bool) -> Void in})
    

    }

}