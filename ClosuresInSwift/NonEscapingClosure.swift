//
//  nonEscapingClosure.swift
//  ClosuresInSwift
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
