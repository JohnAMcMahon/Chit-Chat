//
//  CreateVC.swift
//  ChatApp
//
//  Created by 90309331 on 2/21/23.
//

import UIKit
import Network
class CreateVC: UIViewController {

    
    
    
    
    
    @IBOutlet weak var IsPublic: UISwitch!
    
    
    
    @IBOutlet weak var Password: UITextField!
    
    
    
    @IBOutlet weak var Rules: UITextField!
    
    
    
    
    @IBOutlet weak var CreateButton: UIButton!
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! Chat
        destinationVC.rules="\n"+Rules.text!
        
    }
    
    @IBAction func CreateButtonPressed(_ sender: UIButton) {
        
        print("creating server")
        //Create session on a certain port
        //let TCP:NWProtocolTCP=NWProtocolTCP
        
        
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func ToggledPublic(_ sender: UISwitch) {
        
        if(sender.isEqual(IsPublic)){
            if(sender.isOn){
                Password.isHidden=true
            }
            else{
                Password.isHidden=false
            }
        }
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
