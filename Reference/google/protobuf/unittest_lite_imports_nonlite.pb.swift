/*
 * DO NOT EDIT.
 *
 * Generated by the protocol buffer compiler.
 * Source: google/protobuf/unittest_lite_imports_nonlite.proto
 *
 */

//  Protocol Buffers - Google's data interchange format
//  Copyright 2008 Google Inc.  All rights reserved.
//  https://developers.google.com/protocol-buffers/
// 
//  Redistribution and use in source and binary forms, with or without
//  modification, are permitted provided that the following conditions are
//  met:
// 
//      * Redistributions of source code must retain the above copyright
//  notice, this list of conditions and the following disclaimer.
//      * Redistributions in binary form must reproduce the above
//  copyright notice, this list of conditions and the following disclaimer
//  in the documentation and/or other materials provided with the
//  distribution.
//      * Neither the name of Google Inc. nor the names of its
//  contributors may be used to endorse or promote products derived from
//  this software without specific prior written permission.
// 
//  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
//  "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
//  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
//  A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
//  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
//  SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
//  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
//  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
//  THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
//  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
//  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

//  Author: kenton@google.com (Kenton Varda)
// 
//  Tests that a "lite" message can import a regular message.

import Foundation
import SwiftProtobuf


public struct ProtobufUnittest_TestLiteImportsNonlite: ProtobufGeneratedMessage {
  public var swiftClassName: String {return "ProtobufUnittest_TestLiteImportsNonlite"}
  public var protoMessageName: String {return "TestLiteImportsNonlite"}
  public var protoPackageName: String {return "protobuf_unittest"}
  public var jsonFieldNames: [String: Int] {return [
    "message": 1,
  ]}
  public var protoFieldNames: [String: Int] {return [
    "message": 1,
  ]}

  private class _StorageClass {
    typealias ProtobufExtendedMessage = ProtobufUnittest_TestLiteImportsNonlite
    var unknown = ProtobufUnknownStorage()
    var _message: ProtobufUnittest_TestAllTypes? = nil

    init() {}

    func decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
      let handled: Bool
      switch protoFieldNumber {
      case 1: handled = try setter.decodeOptionalMessageField(fieldType: ProtobufUnittest_TestAllTypes.self, value: &_message)
      default:
        handled = false
      }
      if handled {
          return true
      } else {
          return try unknown.decodeField(setter: &setter)
      }
    }

    func traverse(visitor: inout ProtobufVisitor) throws {
      if let v = _message {
        try visitor.visitSingularMessageField(value: v, protoFieldNumber: 1, protoFieldName: "message", jsonFieldName: "message", swiftFieldName: "message")
      }
      unknown.traverse(visitor: &visitor)
    }

    func isEqualTo(other: _StorageClass) -> Bool {
      if ((_message != nil || other._message != nil) && (_message == nil || other._message == nil || _message! != other._message!)) {return false}
      if unknown != other.unknown {return false}
      return true
    }

    func copy() -> _StorageClass {
      let clone = _StorageClass()
      clone.unknown = unknown
      clone._message = _message
      return clone
    }
  }

  private var _storage = _StorageClass()

  public var message: ProtobufUnittest_TestAllTypes? {
    get {return _storage._message}
    set {_uniqueStorage()._message = newValue}
  }

  public init() {}

  public mutating func _protoc_generated_decodeField(setter: inout ProtobufFieldDecoder, protoFieldNumber: Int) throws -> Bool {
    return try _uniqueStorage().decodeField(setter: &setter, protoFieldNumber: protoFieldNumber)
  }

  public func _protoc_generated_traverse(visitor: inout ProtobufVisitor) throws {
    try _storage.traverse(visitor: &visitor)
  }

  public func _protoc_generated_isEqualTo(other: ProtobufUnittest_TestLiteImportsNonlite) -> Bool {
    return _storage === other._storage || _storage.isEqualTo(other: other._storage)
  }

  private mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _storage.copy()
    }
    return _storage
  }
}
