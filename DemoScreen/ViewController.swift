//
//  ViewController.swift
//  DemoScreen
//
//  Created by Admin on 21/01/23.
//

import UIKit

class ViewController: UIViewController, DataPassing  {
    
    func passData(data: String) {
        
        textLabel.text = data
    }
    

    
    @IBOutlet weak var textLabel: UILabel!
    
    var data : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func nextButtonTapped(_ sender: UIButton) {
        
        let secondVC = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        
        secondVC.delegate = self
        
        self.navigationController?.pushViewController(secondVC, animated: true)
        
    }
}
   
    

