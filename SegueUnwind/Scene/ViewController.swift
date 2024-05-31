//
//  ViewController.swift
//  SegueUnwind
//
//  Created by Dario Balzamo on 30/05/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goForward(_ sender: Any) {
        self.performSegue(withIdentifier: "segueToSecondViewController", sender: nil)
    }
    
    @IBAction func unwindTo_firstViewController(_ segue: UIStoryboardSegue){
        let source = segue.source as! ThirdViewController
    }
}

