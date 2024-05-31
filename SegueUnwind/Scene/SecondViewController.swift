//
//  SecondViewController.swift
//  SegueUnwind
//
//  Created by Dario Balzamo on 30/05/24.
//

import UIKit

class SecondViewController: UIViewController 
{
    override func viewDidLoad() 
    {
        super.viewDidLoad()
    }


    @IBAction func goForward(_ sender: Any) {
        self.performSegue(withIdentifier: "segueToThirdViewController", sender: "ciao")
    }
    
    @IBAction func backButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /** il metodo prepare,  ereditato dalla classe UIViewController, permette di gestire il passaggio delle informazioni tra i due view controller.
        Il metodo ha due parametri:
        segue:. oggetto che conterrà le info sul segue attivato
        sender: oggetto che contine la nostra info da inviare
     */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // L'oggetto segue ha una proprietà identifier (opzionale)
        guard let identifier = segue.identifier else {
            return
        }
        
        if identifier == "segueToThirdViewController" {
            // invio l'oggetto sender al ThirdViewController
            // segue ha una proprietà destination, il quale contiene il riferimento al ViewController di destinazione
            
            // destination però è di tipo UiViewController generica, bisogna unwrappare perciò casto in modo forzato alla sua classe di riferimento
            let vc = segue.destination as! ThirdViewController
            
            vc.recivedText = sender as? String
            
        }
    }
    
    
    
    
}
