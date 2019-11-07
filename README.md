# HandleNull
Check object or any value is null or not with its availability. This demo checks the nullability of any object or value which may come from API response and handle it properly accordingly. This demo is specially used in Swift programming language.

# What is Null?

It's called nil in Swift which means the absence of a valid object.

# Basic Config:

1. Xcode 10.0 or above
2. Swift 4.0 or above

# How it Works?

You just need to download this demo and run it inot SIMULATOR or REAL device whatever you want. OR Just copy and paste code from Utility.swift file into your projects and access it!

Utility code for check nil value or nil object is:

```swift
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
```

# Access of above function

Using below **if-else condition** esily find object or value nil or not & if it's not proper it will handle with default initialized value:


```swift

```

# License

This line of codes are avaialble for public use by [**9Brainz**](https://www.9brainz.com). If you have any doubts or query regarding this code or any particular topic reagrding iOS Application development, Feel free to [**Contact Us**](https://9brainz.com/contact-us.html).

# Helpful!!

Is this demo helpful for your project? OR Reducing tiny bit of work in your project?
Let us know about it 🔥🔥🔥
