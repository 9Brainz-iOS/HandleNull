//
//  Utility.swift
//  HandleNull
//
//  Created by Hardik Trivedi on 07/11/19.
//  Copyright © 2019 9Brainz. All rights reserved.
//

import UIKit

class Utility: NSObject
{

    static func isObjectOrValueAvailable(someObject: Any?) -> Any?
    {
        if someObject is String {
            
            if let someObject = someObject as? String {
                
                return someObject
            } else {
                
                return ""
            }
        } else if someObject is Array<Any> {
            
            if let someObject = someObject as? Array<Any> {
                
                return someObject
            } else {
              
                return []
            }
        } else if someObject is Dictionary<AnyHashable, Any> {
            
            if let someObject = someObject as? Dictionary<String, Any> {
            
                return someObject
            } else {
              
                return [:]
            }
        } else if someObject is Data {
          
            if let someObject = someObject as? Data {
            
                return someObject
            } else {
              
                return Data()
            }
        } else if someObject is NSNumber {
          
            if let someObject = someObject as? NSNumber{
            
                return someObject
            } else {
              
                return NSNumber.init(booleanLiteral: false)
            }
        } else if someObject is UIImage {
          
            if let someObject = someObject as? UIImage {
            
                return someObject
            } else {
             
                return UIImage()
            }
        } else {
            
            return "NoObjectORValueAvailable"
        }
    }
    
}
