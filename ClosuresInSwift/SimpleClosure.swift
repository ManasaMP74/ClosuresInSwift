//
//  SimpleClosure.swift
//  Closure
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation

let simpleClosure = {

}

let closureWithStatement = {
    print("Hello, World!")
}

let closureWithArgument:(String) -> () = { name in
    print("Hi \(name)")
}


let closureReturnValueWithOutArgument:() -> (String) = {
    
    let greeting = "Hello, World! "
    return greeting
}

let closureReturnValueWithArgument:(String) -> (String) = { name in
    
    let str = "Hello, \(name) "
    return str
}
