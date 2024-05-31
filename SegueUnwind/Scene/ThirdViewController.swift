//
//  ThirdViewController.swift
//  SegueUnwind
//
//  Created by Dario Balzamo on 30/05/24.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    var recivedText: String? // variabile di appoggio che conterrà il valore inviato dal performSegue
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myLabel.text = self.recivedText
    }

    
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
   
    @IBAction func backToFirstButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "unwindToFirstViewController", sender: nil)
    }
    
}
