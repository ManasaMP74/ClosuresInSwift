//
//  closureType.swift
//  Closure
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation

func functionWithNoEscapingClosure(closure: () -> Void) {
    print("function called")
    closure()
    return
}

func nonescapingClosure(closure:() -> Void) {
    return
        closure()
}


var closureArr:[()->()] = []
func functionWithEscapingClosure(closure: @escaping () -> Void) {
    print("function called")
    closureArr.append(closure)
    closure()
    return
}

func functionWithEscapingClosureInAsyncronouscall(closure: @escaping () -> Void) {
    DispatchQueue.global().asyncAfter(deadline: .now()+3) {
        closure()
    }
    print("Function called")
    return
}

func functionWithEscapingClosureInAsyncronouscallWithReturn(closure: @escaping () -> Int) {
    DispatchQueue.global().asyncAfter(deadline: .now()+3) {
        let data = closure()
        print(data)
    }
    print("Function called")
    return
}

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

func autoClosure(closure: @autoclosure ()->(), msg: String) {
    print(msg)
    closure()
}

func autoClosureWithBoolValue(closure: @autoclosure ()->Bool) {
    print(closure())
}

func autoClosureWithString(closure: @autoclosure ()->String) {
    let res = closure()
    print(res)
}

func autoClosureWithEscaping(closure: @autoclosure @escaping ()->String) {
    let res = closure()
    print(res)
}
