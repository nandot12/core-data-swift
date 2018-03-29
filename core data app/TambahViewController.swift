//
//  TambahViewController.swift
//  core data app
//
//  Created by Nando Septian Husni on 3/27/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit

//TODO 1 module
import CoreData

class TambahViewController: UIViewController {
    @IBOutlet weak var hp: UITextField!
    
    @IBOutlet weak var name: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
       

        // Do any additional setup after loading the view.
    }

    @IBAction func tambah(_ sender: Any) {
        
        
        
        //TODO 2 GET ENTITY
        
        
        //step 1 get manage context yang ada di appdelegate
        let managecontext = UIApplication.shared.delegate as! AppDelegate
        
        //step 2 get configure core data
        let context = managecontext.persistentContainer.viewContext
        
        //step 3 //get entity
        let entity = NSEntityDescription.entity(forEntityName: "Person", in: context)
        
        //step 4
        let person = NSManagedObject(entity: entity!, insertInto: context)
        
        person.setValue(name.text, forKey:Cons.name)
        person.setValue(hp.text, forKey: Cons.hp)
        
        
        //context.delete(person)
        

        
        //step 5 
        do {
            try  context.save()
        } catch let error {
            
            print("error")
            
        print(error)
        }
       
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
