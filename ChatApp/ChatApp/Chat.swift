//
//  Chat.swift
//  ChatApp
//
//  Created by 90309331 on 2/27/23.
//

import UIKit
import Network






class Chat: UIViewController {

    

    var rules = ""
    
    @IBOutlet weak var chatText: UITextView!
    
    
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var userText: UITextField!
    
    @IBAction func Submit(_ sender: UIButton) {
        //chatText.text.append("\n"+username.text+": "+userText.text)
        chatText.text+="\n"+username.text!+": "+userText.text!
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let url = URL(string: "https://example.com/file.txt")
        
        // Do any additional setup after loading the view.
        
        
        chatText.text+=rules
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
