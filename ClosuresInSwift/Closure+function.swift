//
//  closureType.swift
//  Closure
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation

func functionWithClosureAsArgument(closure: ()->()) {
    print("Function Called")
}

func functionWithClosureAsArgumentAndClosureCalls(closure: ()->()) {
    print("Function Called")
    closure()
}

func trailingClosure(msg:String, closure:  ()->()) {
    print(msg)
    closure()
}


func functionWithoutAutoClosure(closure: ()->(), msg: String) {
    print(msg)
    closure()
}
