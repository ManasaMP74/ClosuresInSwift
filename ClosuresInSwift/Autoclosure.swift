//
//  autoclosure.swift
//  ClosuresInSwift
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation
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
