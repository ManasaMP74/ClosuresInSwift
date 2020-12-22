//
//  ViewController.swift
//  Closure
//
//  Created by Manasa Marlingalar on 22/12/20.
//

import UIKit

/* Note: If you run complete code the might get some closure result after some delay.
 This is because of using dispatch queue with delay in some closures.
 */

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        simpleClosureCalls()
        passClosureAsArgumentToFunction()
        escapingAndNonEscapingClosures()
        closureCaptureList()
        closerActAsNotifierAfterTaskComplete()
    }
}

/* Syntax of closure
{ (parameters) -> return type in
statements
}
*/

// Simple Closure examples
extension ViewController {
    func simpleClosureCalls() {
        // Simple Closure
        //it will not print anything. no code written inside
        simpleClosure()
        
        print("*****************************\n")
        
        //Closure that accepts parameter
        //output: Hello, World!
        closureWithStatement()
        
        print("*****************************\n")
        
        //Closure that accepts parameter
        //output: Hi Varsha
        closureWithArgument("Varsha")
        
        print("*****************************\n")
        
        //Closure that returns value and without argument
        //output: Hello, World!
        let value = closureReturnValueWithOutArgument()
        print(value)
        
        print("*****************************\n")
        
        //Closure that returns value and with argument
        //output: Hello, deeksha
        let value1 = closureReturnValueWithArgument("deeksha")
        print(value1)
        
        print("*****************************\n")
    }
}


// passing closure as parameter to function
extension ViewController {
    func passClosureAsArgumentToFunction() {
        //Passing Closures as a function parameter
        //output: Function Called
        functionWithClosureAsArgument {
            print("function call inside closure")
        }
        
        print("*****************************\n")
        
        //Passing Closures as a function parameter and closure called
        /*output: Function Called
         function call inside closure
         */
        functionWithClosureAsArgumentAndClosureCalls {
            print("function call inside closure")
        }
        
        print("*****************************\n")
        
        //Trailing closure
        /*output: Hi
         function call inside closure
         */
        trailingClosure(msg: "Hi") {
            print("function call inside closure")
        }
        
        
        print("*****************************\n")
        
        //Closure without @autoclosure
        /*output: Hello
         function call inside closure
         */
        functionWithoutAutoClosure(closure: {
            print("function call inside closure")
        }, msg: "Hello")
        
        
        print("*****************************\n")
        
        //Closure with @autoclosure
        /*output: Hello Swift Community!
         function call inside closure
         */
        autoClosure(closure: print("function call inside closure"), msg: "Hello Swift Community!")
        
        
        print("*****************************\n")
        
        
        //Autoclosure with return value
        /*output: false
         */
        autoClosureReturnValue(closure: 10>20)
        
        print("*****************************\n")
        
        //Autoclosure with return value
        /*output: Hi, How are you?
         */
        autoClosureWithReturnString(closure: "Hi, How are you?")
        
        print("*****************************\n")
    }
}


// escaping and non escaping closure
// different way of passing closure to the function
extension ViewController {
    func escapingAndNonEscapingClosures() {
        //Non Escaping Closure
        /*output: Function Called
         closure called
         */
        functionWithNoEscapingClosure {
            print("closure called")
        }
        
        print("*****************************\n")
        
        //nonescaping Closure
        /*output: closure called
         */
        nonescapingClosure {
            print("closure called")
        }
        
        print("*****************************\n")
        
        //escaping closure
        /*output: Function Called
         closure called
         */
        functionWithEscapingClosure {
            print("closure called")
        }
        
        print("*****************************\n")
        
        //escaping closure with asyncronous call
        /*output: Function Called
         closure called
         */
        functionWithEscapingClosureInAsyncronouscall {
            print("closure called")
        }
        
        print("*****************************\n")
        
        //closure with completion handler
        /*output: Function Called
         before calling callback
         closure called
         after calling callback
         */
        closureAsCompletionHandler {
            print("closure called")
        }
        
        print("*****************************\n")
        
        //trailing closure with completion handler
        /*output: Hi
         before calling callback
         closure called
         after calling callback
         */
        trailingClosureAsCompletionHandler(msg: "Hi") {
            print("closure called")
        }
        
        print("*****************************\n")
        
        //trailing closure with argument and  completion handler
        /*output: Hi
         before calling callback
         true
         after calling callback
         */
        trailingClosureWithArgumentAsCompletionHandler(msg: "Hi") { (status) in
            print(status)
        }
        
        
        print("*****************************\n")
        
        // closure passed to function with return type
        /*output: Function Called
         closure called
         10
         */
        functionWithEscapingClosureInAsyncronouscallWithReturn { () -> Int in
            print("closure called")
            return 10
        }
        
        print("*****************************\n")
    }
}


extension ViewController {
    func closureCaptureList() {
        print("*****************************\n")
        // closure passed to function with return type
        /*output: name is person object deallocated
         name in closure is person object deallocated
         */
        closureWithoutCaptureList()
        
        print("*****************************\n")
        
        // closure passed to function with return type
        /*output: name is person object deallocated
         name in closure is varsha
         */
        closureWithCaptureList()
        
        print("*****************************\n")
    }
}


extension ViewController {
    //Pass closure as notifier between two class after the task complete
    /* output: Button tapped in class B
     tapAction message displayed in class A: Class B Button tapped
     */
    func closerActAsNotifierAfterTaskComplete() {
        let a = A()
        a.someFunction()
    }
}
