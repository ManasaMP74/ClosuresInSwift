//
//  Closer+Notifier.swift
//  Closure
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation

class A {
    let b = B()
    func someFunction() {
        b.tapAction = { (message) in
            print("tapAction message displayed in class A \(message)")
        }
        b.buttonTapped()
    }
}

public class B {
    public var tapAction: ((String) -> Void)?
    func buttonTapped() {
        print("Button tapped in class B")
        tapAction?("Class B Button tapped")
    }
}
