//
//  ViewController.swift
//  FirstApp_final
//
//  Created by Ashin Asok on 6/18/17.
//  Copyright © 2017 Ashin Asok. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var First_num: UITextField!
    @IBOutlet weak var Second_num: UITextField!
    @IBOutlet weak var Result: UILabel!
    var flag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.First_num.delegate = self
        self.Second_num.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //hide keyboard when touched outside
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    //hide keyboard when pressed enter
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        First_num.resignFirstResponder()
        Second_num.resignFirstResponder()
        return(true)
    }
    
    func main()
    {
        let First = Double(First_num.text!)
        let Second = Double(Second_num.text!)
        if (First != nil && Second != nil)
        {
            if(flag == 1)
            {
                let Res = Double(First! + Second!)
                Result.text = "The Result is \(Res)"
            }
            if(flag == 2)
            {
                let Res = Double(First! * Second!)
                Result.text = "The Result is \(Res)"
            }
            if(flag == 3)
            {
                let Res = Double(First! - Second!)
                Result.text = "The Result is \(Res)"
            }
            if(flag == 4)
            {
                let Res = Double(First! / Second!)
                Result.text = "The Result is \(Res)"
            }
        }
        else
        {
            Result.text = " Enter both the numbers"
        }

        
    }
    
    @IBAction func add(_ sender: UIButton)
    {
        flag = 1
        main()
    }

    
    @IBAction func Multiply(_ sender: UIButton)
    {
        flag = 2
        main()
    }


    @IBAction func Subtract(_ sender: UIButton)
    {
        flag = 3
        main()
    }
    
    @IBAction func Divide(_ sender: UIButton)
    {
        flag = 4
        main()
    }

}

