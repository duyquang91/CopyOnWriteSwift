//
//  CopyOnWrite.swift
//  copyonwrite
//
//  Created by Steve Dao on 6/3/20.
//  Copyright © 2020 Steve Dao. All rights reserved.
//

import Foundation

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
