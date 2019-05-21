import XCTest

@testable import DataStructures_Package

// Write your function here:

func checkParentheses(_ string: String) -> Bool {
    
    var stack = Stack<Character>()
    
    for character in string.characters {
        if character == "(" || character == ")" {
            stack.push(character)
        }
    }

    while !stack.isEmpty {
        guard stack.pop() == ")" else {
            return false
        }
        
        guard !stack.isEmpty && stack.pop() == "(" else {
            return false
        }
        
    }
    
    return true
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
