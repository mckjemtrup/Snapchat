//
//  SnapsViewController.swift
//  Snapchat
//
//  Created by Michael Kjemtrup on 11/04/2017.
//  Copyright © 2017 Michael Kjemtrup. All rights reserved.
//

import UIKit

class SnapsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func logOutTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

}
