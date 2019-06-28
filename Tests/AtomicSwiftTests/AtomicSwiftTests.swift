import XCTest
@testable import AtomicSwift

final class AtomicSwiftTests: XCTestCase {
    
    static var allTests = [
        ("testThatShouldntCrash", testThatShouldntCrash)
    ]
    
    override func setUp() {
        super.setUp()
        continueAfterFailure = false
    }
    
    @Atomic
    var atomicDictionary = [Int: String]()
    
    func testThatShouldntCrash() {
        DispatchQueue.concurrentPerform(iterations: 1000) { _ in
            self.atomicDictionary[.random(in: 0...10000)] = "test"
        }
    }
    
}
