//
//  EscapingClosure+WeakReference.swift
//  ClosuresInSwift
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import Foundation
import UIKit

class EscapingClosureWithWeakReference: UIViewController {
    override func viewDidLoad() {
        // need to use weak reference to self
        // else it will create a retain cycle
        escapingWithWeakReference { [weak self] in
            DispatchQueue.main.async { [weak self] in
                self?.view.backgroundColor = UIColor.blue
            }
        }
    }

    func escapingWithWeakReference(closure: @escaping () -> Void) {
        DispatchQueue.global().asyncAfter(deadline: .now()+3) {
            closure()
        }
        print("Function called")
    }
}
