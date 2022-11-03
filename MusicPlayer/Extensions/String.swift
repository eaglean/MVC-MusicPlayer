//
//  String.swift
//  Music Player
//
//  Created by eaglean on 8/6/21.
//

import Foundation

extension String {

  // Replace a substring
  func replacingFirstOccurrence(of string: String, with replacement: String) -> String {
    guard let range = self.range(of: string) else { return self }
    return replacingCharacters(in: range, with: replacement)
  }
  
}
