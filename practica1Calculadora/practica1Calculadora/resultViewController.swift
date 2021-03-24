//
//  resultViewController.swift
//  practica1Calculadora
//
//  Created by Arturo Iván Chávez Gómez on 23/03/21.
//

import UIKit

class resultViewController: UIViewController {

    var resultado: Float?
    @IBOutlet weak var resultadoLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultadoLabel.text = "\(resultado!)"
    }

    @IBAction func reCalcularButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
