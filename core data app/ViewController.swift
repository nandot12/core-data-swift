//
//  ViewController.swift
//  core data app
//
//  Created by Nando Septian Husni on 3/27/18.
//  Copyright © 2018 imastudio. All rights reserved.
//

import UIKit

import CoreData

class ViewController: UITableViewController {
    
    var hasil : [NSManagedObject] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        //app delegate
        let app = UIApplication.shared.delegate as! AppDelegate
        let context = app.persistentContainer.viewContext
        //entity
        let entity = NSFetchRequest<NSFetchRequestResult>(entityName: "Person")
        
       
        
        
        do{
            hasil = try context.fetch(entity) as! [NSManagedObject]
        }catch{
        }
            
        
            
            
        
        
    
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hasil.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = hasil[indexPath.row].value(forKey: Cons.name) as? String
        
        return cell!
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

