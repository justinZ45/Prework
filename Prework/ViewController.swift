//
//  ViewController.swift
//  Prework
//
//  Created by Justin Zaluk on 12/7/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate{
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(self.tap(gesture:)))
        
        self.view.addGestureRecognizer(tapGesture)
        
        
    }
    

    @IBOutlet weak var TextField: UITextField!
    
    @IBOutlet weak var TextLabel: UILabel!
    
    
    
    @IBAction func ButtonClicked(_ sender: Any) {
        print("hello")
        TextLabel.textColor = UIColor.green
    }
    
    @IBAction func BackgroundButtonClicked(_ sender: Any) {
        view.backgroundColor = UIColor.purple
    }
    
    @IBAction func ChangeTextStringButton(_ sender: Any) {
        TextField.resignFirstResponder()
       let FieldText = TextField.text!
        if(!FieldText.isEmpty)
        {
            TextLabel.text=FieldText
        }
        else if(FieldText.isEmpty)
        {
            TextLabel.text="Hello from Justin!"
        }

    }
    
    @IBAction func GoodbyeButton(_ sender: Any) {
        TextLabel.text = "Goodbye 👋"
        hjgdsjgdsjgh
    }
    
    
   @objc func tap(gesture: UITapGestureRecognizer) {
        SetDefault()
    }
    
    func SetDefault()
    {
        
        TextLabel.text = "Hello from Justin!"
        view.backgroundColor = UIColor.systemBlue
        TextLabel.textColor = UIColor.systemRed
        
    }

}


