//
//  LinkedList.swift
//  Data Structures --> Linear --> LinkedList
//
//  Created by Ruslan Remenkov on 02.05.2018.
//  Copyright © 2018 Ruslan Remenkov. All rights reserved.
//

public final class LinkedList<T> {
    
    // MARK: - Properties
    private var _head: LinkedListNode<T>?
    private var _tail: LinkedListNode<T>?
    
    public private (set) var count: UInt = 0
    
    public var description: String {
        get {
            var description = "\(type(of: self)), \(count) node(s):\n"
            var current = _head
            
            while current != nil {
                description += "\(current!.value) "
                description += "(at: \(Unmanaged.passUnretained(current!).toOpaque())"
                
                if current!.next != nil {
                    description += ", next: \(Unmanaged.passUnretained(current!.next!).toOpaque())"
                } else {
                    description += ", next: nil"
                }
                description += ")\n"
                
                current = current!.next
            }
            
            return description
        }
    }
    
    // MARK: - Initializers
    public convenience init() {
        self.init([T]())
    }
    
    public convenience init(_ value: T) {
        self.init([value])
    }
    
    public init(_ values: [T]) {
        let nodes: [LinkedListNode<T>] = values.map { return LinkedListNode<T>($0) }
        var prev: LinkedListNode<T>?
        
        for next in nodes {
            if _head == nil {
                _head = next
            } else {
                prev?.next = next
            }
            
            prev = next
            count += 1
        }
        
        _tail = prev
    }
    
    // MARK: - Public Interface
    
    /// Adds a node at the end of list.
    ///
    /// Note that if `head` node have not been set, it means that list is empty, thus both `head` and `tail` nodes will be point to added node.
    ///
    ///     let list = LinkedList("Police")
    ///     list.add("Dept")
    ///     list.add("911")
    ///
    ///     // "Police" (head) --> "Dept" (node) --> "911" (tail)
    ///
    /// - Parameter value: Generic value for newly created node.
    public func add(_ value: T) {
        let node: LinkedListNode<T> = LinkedListNode<T>(value)
        
        if _head == nil {
            _head = node
        } else {
            _tail?.next = node
        }
        
        _tail = node
        count += 1
    }
    
}
