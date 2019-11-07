//
//  ViewController.swift
//  HandleNull
//
//  Created by Hardik Trivedi on 07/11/19.
//  Copyright © 2019 9Brainz. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.nullValueCheckAndHandle()
        self.nullObjectCheckAndHandle()
        self.checkValueOrObjectAvailableInDicitonary()
    }
    
    func nullValueCheckAndHandle()
    {
        let intValue: Int? = nil
        
        if "\(Utility.isObjectOrValueAvailable(someObject: intValue as AnyObject)!)" != "NoObjectORValueAvailable" {

            print("Score: \(intValue!)")
        } else {

            print("No Score")
        }
    }
    
    func nullObjectCheckAndHandle()
    {
        let dict: NSDictionary? = nil
        
        if "\(Utility.isObjectOrValueAvailable(someObject: dict as AnyObject)!)" != "NoObjectORValueAvailable" {

            print("Data Dictionary: \(dict!)")
        } else {

            print("No Dictioanry")
        }
    }
    
    func checkValueOrObjectAvailableInDicitonary()
    {
        let dict: NSDictionary = ["name": "Hardik Trivedi", "company": "9Brainz"]
        
        if "\(Utility.isObjectOrValueAvailable(someObject: dict.value(forKey: "address") as AnyObject)!)" != "NoObjectORValueAvailable" {

            print("Address: \(dict.value(forKey: "address")!)")
        } else {

            print("No Address found!")
        }
    }


}

