//
//  CopyOnWriteSwiftSpec.swift
//  CopyOnWriteSwift
//
//  Created by Steve Dao on 01/04/19.
//  Copyright © 2019 duyquang91. All rights reserved.
//

import Quick
import Nimble
@testable import CopyOnWriteSwift

class CopyOnWriteSwiftSpec: QuickSpec {
    override func spec() {
        describe("CopyOnWriteSwiftSpec") {
            it("works") {
                expect(CopyOnWriteSwift.name) == "CopyOnWriteSwift"
            }
        }
    }
}
