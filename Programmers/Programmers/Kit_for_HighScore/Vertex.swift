//
//  Vertex.swift
//  Programmers
//
//  Created by Seohyun Kim on 2023/08/20.
//

import Foundation

public struct Vertex<T: Hashable> {
  var data: T
}

extension Vertex: Hashable {
  public var hashValue: Int {
	  return "\(data)".hashValue
  }
  
  static public func ==(lhs: Vertex, rhs: Vertex) -> Bool {
	return lhs.data == rhs.data
  }
}

extension Vertex: CustomStringConvertible {
  public var description: String {
	return "\(data)"
  }
}

