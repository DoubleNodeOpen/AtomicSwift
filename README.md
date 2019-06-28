# AtomicSwift
A property delegate to declare atomic properties in swift

# Usage
Add @Atomic before you variable declaration.

# Example:

```

// the following example will crash

var aDictionary = [Int: Int]()

DispatchQueue.concurrentPerform(iterations: 1000) { _ in
    self.aDictionary[.random(in: 0...10000)] = "test"
}

// the following example won't crash

@Atomic
var anAtomicDictionary = [Int: Int]()

DispatchQueue.concurrentPerform(iterations: 1000) { _ in
    self.anAtomicDictionary[.random(in: 0...10000)] = "test"
}

```
