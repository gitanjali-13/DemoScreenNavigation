//
//  SecondViewController.swift
//  DemoScreen
//
//  Created by Admin on 21/01/23.
//

import UIKit

protocol DataPassing {

    func passData(data: String)
    
}

class SecondViewController: UIViewController {

    
    @IBOutlet weak var inputText: UITextField!
    
    @IBOutlet weak var previousButton: UIButton!
    
    var delegate: DataPassing?
    //var delegate: ViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        
    }
    
    
    @IBAction func previousButtonTapped(_ sender: UIButton) {
        
        delegate?.passData(data: inputText.text ?? "")
    
        self.navigationController?.popViewController(animated: true)
        
        //print("\(delegate)")
    }
    

}
