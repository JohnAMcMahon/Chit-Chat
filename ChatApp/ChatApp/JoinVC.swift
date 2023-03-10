//
//  JoinVC.swift
//  ChatApp
//
//  Created by 90309331 on 2/21/23.
//

import UIKit

class JoinVC: UIViewController {

    
    
    
    @IBOutlet weak var JoinButton: UIButton!
    
    
    @IBOutlet weak var IPAddress: UITextField!
    
    
    @IBOutlet weak var IsPrivate: UISwitch!
    
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func Pressed(_ sender: UIButton) {
        
        if(sender.isEqual(JoinButton)){
            print("Pinging Host")
            
            
            //ping IP address
            //check password if necessary
            
            
        }
        
        
    }
    
    
    
    
    @IBAction func ToggledPrivate(_ sender: UISwitch) {
        if(sender.isEqual(IsPrivate)){
            if(sender.isOn){
                Password.isHidden=false
            }
            else{
                Password.isHidden=true
            }
        }
        
        
        
        
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
