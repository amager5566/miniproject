//
//  ViewController.swift
//  Brainshake
//
//  Created by iMac on 11/16/18.
//  Copyright © 2018 pajongpong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        performSegue(withIdentifier: "howto", sender: self)
    }

}

