import Foundation

struct Stack<T: Equatable>: Equatable {
    
    private var storage: [T] = []
    
    init() { }
    
    init(_ elements: [T]) {
        storage = elements
    }
    
    var isEmpty: Bool {
        return peek() == nil
    }
    
    mutating func push(_ element: T) {
        storage.append(element)
    }
    
    @discardableResult
    mutating func pop() -> T? {
        return storage.popLast()
    }
    
    func peek() -> T? {
        return storage.last
    }

}

extension Stack: CustomStringConvertible {

    var description: String {
        return storage
            .map { "\($0)" }
            .joined(separator: " ")
    }

}

extension Stack: ExpressibleByArrayLiteral {

    init(arrayLiteral elements: T...) {
        storage = elements
    }
    
}
