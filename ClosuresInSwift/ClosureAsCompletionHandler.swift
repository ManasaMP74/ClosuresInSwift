//
//  ClosureAsCompletionHandler.swift
//  ClosuresInSwift
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation

func closureAsCompletionHandler(completion:()->()) {
    print("function called")
    print("before calling callback")
    completion()
    print("after calling callback")
}

func trailingClosureAsCompletionHandler(msg: String, completion: ()->()) {
    print(msg)
    print("before calling callback")
    completion()
    print("after calling callback")
}

func trailingClosureWithArgumentAsCompletionHandler(msg: String, completion: (Bool)->()) {
    print(msg)
    print("before calling callback")
    completion(true)
    print("after calling callback")
}
