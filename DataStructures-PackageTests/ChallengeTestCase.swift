import XCTest

@testable import DataStructures_Package

// Write your function here:

func checkParentheses(_ string: String) -> Bool {
    
    var stack = Stack<Character>()
    
    for character in string {
        if character == "(" {
            stack.push(character)
        } else if character == ")" {
            if stack.isEmpty {
                return false
            } else {
                stack.pop()
            }
        }
    }

    return stack.isEmpty
}

class ChallengeTestCase: XCTestCase {

    func test_checkParens() {
        XCTAssertTrue( checkParentheses("()"))
    }
    
    func test_checkParens1() {
        XCTAssertTrue( checkParentheses("hello(world)()"))
    }
    
    func test_checkParens2() {
        XCTAssertFalse( checkParentheses("(hello world"))
    }
    
    func test_checParens3() {
        XCTAssertFalse( checkParentheses("((())(meow)))("))
    }

}
