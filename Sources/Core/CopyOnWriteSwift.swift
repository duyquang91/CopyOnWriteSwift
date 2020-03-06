//
//  CopyOnWriteSwift.swift
//  CopyOnWriteSwift
//
//  Created by Steve Dao on 01/04/19.
//  Copyright © 2019 duyquang91. All rights reserved.
//

import Foundation

class CopyOnWriteSwift {
    static let name = "CopyOnWriteSwift"
}

public final class Ref<T> {
  var val : T
  init(_ v : T) {val = v}
}

public struct Box<T> {
    var ref : Ref<T>
    init(_ x : T) { ref = Ref(x) }
    var value: T {
        get { return ref.val }
        set {
          if (!isKnownUniquelyReferenced(&ref)) {
            ref = Ref(newValue)
            return
          }
          ref.val = newValue
        }
    }
}

@propertyWrapper
public struct CopyOnWrite<T: Any> {
    public let box: Box<T>
    
    public var wrappedValue: T {
        return box.value
    }
    
    public init(wrappedValue: T) {
        box = Box(wrappedValue)
    }
}
