import XCTest
@testable import LinkedList

final class LinkedListTests: XCTestCase {
    func testNodeValueIsCorrectlyAssigned() {
        let expectedValue: String = "Linked List Test Value"
        XCTAssertEqual(LinkedListNode<String>(value: expectedValue).value, expectedValue)
    }


    static var allTests = [
        ("testNodeValueIsCorrectlyAssigned", testNodeValueIsCorrectlyAssigned),
    ]
}
