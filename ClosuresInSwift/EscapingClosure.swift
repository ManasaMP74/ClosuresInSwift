//
//  escapingClosure.swift
//  ClosuresInSwift
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation

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
