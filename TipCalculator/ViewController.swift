//
//  ViewController.swift
//  TipCalculator
//
//  Created by Simon He on 8/13/18.
//  Copyright © 2018 Simon He. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billAmount: UITextField!
    @IBOutlet weak var tipTotal: UILabel!
    @IBOutlet weak var twoPeopleTip: UILabel!
    @IBOutlet weak var threePeopleTip: UILabel!
    @IBOutlet weak var fourPeopleTip: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func endAction(_ sender: Any) {
        view.endEditing(true);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        let percentages = [0.15, 0.18, 0.22];
        let bill = Double(billAmount.text!) ?? 0;
        let tip = bill * percentages[tipControl.selectedSegmentIndex];
        let total = bill + tip;
        twoPeopleTip.text = String(format: "$%.2f", total/2);
        threePeopleTip.text = String(format: "$%.2f", total/3);
        fourPeopleTip.text = String(format: "$%.2f", total/4);
        tipTotal.text = String(format: "$%.2f", total);
    }
    
}

