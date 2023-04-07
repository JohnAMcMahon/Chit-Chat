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
        
        
        
        //prevent spamming
        if(!(userText.text=="")){
            //chatText.text.append("\n"+username.text+": "+userText.text)
            chatText.text+="\n"+username.text!+": "+userText.text!
            
            
            //Clear User's text
            userText.text="";
            
          
            
            
            sendMessage(message: userText.text ?? "testing123")
            
            
        }
        else{
            var dialogMessage = UIAlertController(title: "Spam alert", message: "Yo message.", preferredStyle: .alert)
            
            // Present alert to user
            let yeah = UIAlertAction(title: "OK bro I wont spam", style: .cancel) { (action) -> Void in
                print("Cancel button tapped")
            }
            dialogMessage.addAction(yeah)
            self.present(dialogMessage, animated: true, completion: nil)
        }
        
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("sending hello world")
        sendMessage(message: "hello world")
        //let url = URL(string: "https://example.com/file.txt")
        
        // Do any additional setup after loading the view.
        
        
        chatText.text+=rules
        
            
        
        
        
        
       //sendMessage(message: "testing123")
             
        
        
        
        
        
        
       
        
        
        
        
        
        //print(socket(AF_INET,SOCK_STREAM,IPPROTO_TCP))
        
        
        
        
    }
    var socket: NEngSocketConnection = NEngSocketConnection(host: "localhost", port: 8080, timeout: 30000)
    
    func sendMessage(message:String){
        
       
        
        socket.sendMessageWithCompletion(request: message) {
           (result: Any, error: NSError) in
           
               // Respond: "result" (Any) is the respond that receive from the server
               print(result)
           
               // Error: "error" (NSError) is the exception that receive while Socket Connection crash
               switch error.code {
                   case 404:
                     print("Error: \(error.localizedDescription). Please try again.")
                   break
                   
                   case 408:
                     print("Error: \(error.localizedDescription). Please try again.")
                   break
                   
                   case 503:
                     print("Error: \(error.localizedDescription). Please try again.")
                   break
                   
                   default: break
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
