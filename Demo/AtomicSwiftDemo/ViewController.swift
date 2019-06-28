//
//  ViewController.swift
//  AtomicSwiftDemo
//
//  Created by open on 28/06/2019.
//  Copyright © 2019 Mario Iannotta. All rights reserved.
//

import UIKit
import AtomicSwift

class ViewController: UIViewController {
    
    @Atomic
    private var atomicInt = 0
    
    @Atomic
    private var atomicDictionary = [Int: Int]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        DispatchQueue.concurrentPerform(iterations: 100000) { _ in
            self.atomicInt += 1
            self.atomicDictionary[.random(in: 1...100)] = 1
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            print("dictionay: \(self.atomicDictionary)")
        }
    }
    
}

