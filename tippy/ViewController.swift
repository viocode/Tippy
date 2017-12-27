//
//  ViewController.swift
//  tippy
//
//  Created by SteveWayne on 12/27/17.
//  Copyright © 2017 aungthu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var textFiledLabel: UITextField!
    @IBOutlet weak var Control: UISegmentedControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func textFieldCalculate(_ sender: UITextField) {
        calculate()
    }
    
    @IBAction func valueChanged(_ sender: UISegmentedControl) {
        calculate()
    }
    
    func calculate(){
        let segmentedConrtrol = [0.18,0.2,0.25]
        
        let bill = Double(textFiledLabel.text!) ?? 0
        let tip = bill * segmentedConrtrol[Control.selectedSegmentIndex]
        let total = bill + tip
        
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
    }

}

