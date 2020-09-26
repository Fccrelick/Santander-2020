//
//  ViewController.swift
//  TransicaoTela
//
//  Created by Fernando Crelick on 23/09/20.
//

import UIKit

class FirstVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewDidLoad")
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("viewDidDisappear")
    }

    @IBAction func tappedLoginButton(_ sender: UIButton) {
    
      /* Quebra o app pois tenta acessar a IBOutlet antes dela ser inicializada por causa da linha 41

        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc: DetailVC? = storyboard.instantiateViewController(identifier: "DetailVC") as? DetailVC
        
        vc?.myLabel.text = "Fernando"
        
        self.present(vc ?? UIViewController(), animated: true, completion: nil)
        */
        
        
        
        self.performSegue(withIdentifier: "DetailVC", sender: "Fernando")
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailVC? = segue.destination as? DetailVC
        
        vc?.view.backgroundColor = .red
        vc?.myLabel.text = sender as? String
    }
    
}

