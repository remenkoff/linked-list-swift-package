//
//  LinkedListNode.swift
//  Data Structures --> Linear --> LinkedList
//
//  Created by Ruslan Remenkov on 02.05.2018.
//  Copyright © 2018 Ruslan Remenkov. All rights reserved.
//

internal final class LinkedListNode<T> {
    
    // MARK: - Properties
    public let value: T
    public internal (set) var next: LinkedListNode?
    
    // MARK: - Initializers
    
    /// Creates a LinkedListNode by passing its generic value.
    ///
    /// Note that once `value` have been set, it cannot be changed.
    /// Also, and node's `next` pointer is unaccessible for changing - it's managed by LinkedList only.
    ///
    ///     let strNode = LinkedListNode("Service")
    ///     let intNode = LinkedListNode(911)
    ///
    /// - Parameter value: Generic value of LinkedListNode.
    public init(_ value: T) {
        self.value = value
    }
    
}
