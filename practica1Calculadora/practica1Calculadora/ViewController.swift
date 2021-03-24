//
//  ViewController.swift
//  practica1Calculadora
//
//  Created by Alexa on 23/03/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cuenta: UITextField!
    @IBOutlet weak var personasS: UISlider!
    @IBOutlet weak var porcentajeS: UISlider!
    @IBOutlet weak var porcentajeLabel: UILabel!
    @IBOutlet weak var personasLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func porcentajeSA(_ sender: UISlider) {
        porcentajeLabel.text = "\(String(format: "%.0f", sender.value))%"
    }
    
    @IBAction func personasSA(_ sender: UISlider) {
        personasLabel.text = "\(String(format: "%.0f", sender.value)) personas"
    }
    
    func calcularCuenta() -> Float{
        let cuentaC = Int(cuenta.text!)
        let porcentaje = Int(porcentajeS.value)
        let personas = Int(personasS.value)
        
        let porcentajeTotal = Float((porcentaje * cuentaC!) / (100))
        let semitotal = Float(cuentaC!) + (porcentajeTotal)
        let total = Float(semitotal) / Float(personas)
        return total
    }
    
    @IBAction func calcularButton(_ sender: UIButton) {
        performSegue(withIdentifier: "enviarDatos", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "enviarDatos" {
            let objDestinoVC = segue.destination as! resultViewController
            objDestinoVC.resultado = calcularCuenta()
            }
        }
}


