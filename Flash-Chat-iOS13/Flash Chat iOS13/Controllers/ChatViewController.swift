//
//  ChatViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class ChatViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    let db = Firestore.firestore()
<<<<<<< Updated upstream
=======
    
    
>>>>>>> Stashed changes
    var messages:[Message]=[
        Message(sender: "1@2.com", body: "Hey!"),
        Message(sender: "1@b.com", body: "Hello!"),
        Message(sender: "1@2.com", body: "What's up?第五代；问；觉得；额外；IE我；额外；为二位；一；额；i"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource=self
        title=K.appName
        navigationItem.hidesBackButton=true
        
        tableView.register(UINib(nibName: K.cellNibName,bundle: nil), forCellReuseIdentifier: K.cellIdentifier)
    }
    
    @IBAction func sendPressed(_ sender: UIButton) {
<<<<<<< Updated upstream
        if let messageBody = messageTextfield.text, let messageSender =
            Auth.auth().currentUser?.email{
            
            db.collection(K.FStore.collectionName).addDocument(data: [
            K.FStore.senderField: messageSender,
                K.FStore.bodyField: messageBody
            ]){
                (error)in if let e = error{
                    print("There was an issue saving date to fireStore, \(e)")
                } else{
                    print("Successfully saveda data.")
                }
            }
=======
        if let messageBody = messageTextfield.text, let messageSender = Auth.auth().currentUser?.email{
            db.collection(K.FStore.collectionName).addDocument(data: <#T##[String : Any]#>)
>>>>>>> Stashed changes
        }
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        let firebaseAuth = Auth.auth()
    do {
      try firebaseAuth.signOut()
        navigationController?.popToRootViewController(animated: true)
    } catch let signOutError as NSError {
      print ("Error signing out: %@", signOutError)
    }
    }
    
}

extension ChatViewController:UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell=tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier,for: indexPath)
        as! MessageCell
        cell.label?.text=messages[indexPath.row].body
        return cell
    }
    
    
}
