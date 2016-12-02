//
//  APPostVC.swift
//  JokesSample
//
//  Created by alexeyweb11@gmail.com on 02/12/2016, using AnimaApp.com, under MIT license.
//  Copyright © 2016 Company Name. All rights reserved.
//

import UIKit

public class APPostVC : ANViewController {
    
    @IBOutlet weak var titleLabel: UILabel?
    @IBOutlet weak var textInput: UITextField?
    @IBOutlet weak var postLabel: UILabel?
    @IBOutlet weak var demoCaption: UILabel?
    @IBOutlet weak var closeButton: UIImageView?
    @IBOutlet weak var creditsDetails: UILabel?
    @IBOutlet weak var label2: UILabel?
    @IBOutlet weak var label1: UILabel?

    

    @IBAction func label1Tap(sender: Any?) {
        self.performSegue(withIdentifier: "post -> readMoreScreen - Modal", sender: self)
    }

    @IBAction func swipeDown(sender: Any?) {
            self.dismiss(true)
    }

    @IBAction func closeButtonTap(sender: Any?) {
            self.dismiss(true)
    }

    @IBAction func postLabelTap(sender: Any?) {
            self.dismiss(true)
    }

}