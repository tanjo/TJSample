//
//  ViewController.swift
//  TJSample
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Override methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Put run code here.
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
    
    private func testWindow() {
        var window: TJWindow? = TJWindow(frame: UIScreen.mainScreen().bounds)
        window?.hidden = true
        window = nil
        
        // Result ...
        //        deinit
    }
    
    private func testAlertWindow() {
        let window: TJWindow = TJWindow(frame: UIScreen.mainScreen().bounds)
        window.rootViewController = UIViewController()
        window.windowLevel = UIWindowLevelAlert
        window.hidden = false
        if let rootViewController = window.rootViewController {
            let alert = UIAlertController(
                title: "タイトル", message: "メッセージ", preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Cancel, handler: { (action) in
                window.hidden = true
            }))
            rootViewController.presentViewController(alert, animated: true, completion: nil)
        }
        
        // Result ...
        //        (Touch Down)
        //        deinit
    }
}
