//
//  ViewController.swift
//  WishList
//
//  Created by BANFOU Ivan Christopher on 08/01/2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    
    // retourner le nombre d'elements du tableau
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myGift.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "giftCell", for: indexPath) as! TableViewCell
        let row = indexPath.row
        
        cell.nom.text = myGift[row].name
        //cell.prix. = myGift[row].prix
        cell.prix.text = String(myGift[row].prix)
        
        
        return cell
    }
    
    
    
    var myGift = [Gift]()
    
    let gifts = ["Console PS5", "Joystick", "Fifa 23", "iPhone 14", "Coque iPhone ", "AProtection iPhone ", "Magic Mouse", "Webcam", "Mac book Pro", "Rubik Cube", "Sac de transport Ordinateur", "Boite de thè", "Lot de crayons", "Livre Les échecs pour les nuls", "Pull moche de Noel", "Casque VR"]

    let prices = [499.00, 69.00, 58.99, 1290.00, 29.99, 29.99, 50.00, 84.90, 2000.00, 20.00, 59.99, 15.24, 2.00, 25.00, 15.00, 500.00]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        for i in 0 ... 15{
            let d = Gift(name : gifts[i], prix : prices[i])
            myGift.append(d)
            print(myGift[i].name, myGift[i].prix)
        }
        
       myTableView.dataSource = self
                
        
    }
    
    
    @IBAction func trier(_ sender: Any) {
        

                    myGift.sort(by: {$0.prix < $1.prix})
                    myTableView.reloadData()
        
    }
    
    
    
    

    
    
    @IBOutlet weak var prixA: UITextField!
    
    @IBAction func slider(_ sender: UISlider) {
        prixA.text = String(sender.value.rounded())
        let a = myGift.filter {$0.prix < 40}
        
        //myTableView.reloadData()

        for i in 0..<a.count{
          print (a[i].name)
        }
        
        }
        
    
    
    @IBOutlet weak var myTableView: UITableView!

    
    
    
    
    



}

