//
//  ViewController.swift
//  AtomicSwift
//
//  Created by Mario Iannotta on 28/06/2019.
//  Copyright © 2019 Mario Iannotta. All rights reserved.
//

import Foundation

@propertyDelegate
public final class Atomic<Value> {
    
    private var lock = os_unfair_lock()
    private var _value: Value
    
    public init(initialValue value: Value) {
        _value = value
    }
    
    public var value: Value {
        get {
            os_unfair_lock_lock(&lock)
            defer { os_unfair_lock_unlock(&lock) }
            return _value
        }
        set {
            os_unfair_lock_lock(&lock)
            defer { os_unfair_lock_unlock(&lock) }
            _value = newValue
        }
    }
    
}
