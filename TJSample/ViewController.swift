//
//  ViewController.swift
//  TJSample
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testConvertingClassnameString()
    }
    
    // MARK: - Private methods
    
    private func testConvertingClassnameString() {
        print(String(ViewController))
        print(String(ViewController.self))
        print(NSStringFromClass(ViewController))
        print(NSStringFromClass(ViewController.self))
        print(String(self))
        print(self)

        // Result ...
        //        ViewController
        //        ViewController
        //        TJSample.ViewController
        //        TJSample.ViewController
        //        <TJSample.ViewController: 0x7fbc13e1aa00>
        //        <TJSample.ViewController: 0x7fbc13e1aa00>
    }
}
