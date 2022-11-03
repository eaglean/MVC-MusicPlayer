//
//  AlbumManager.swift
//  Music Player
//
//  Created by eaglean on 8/6/21.
//

import Foundation

class AlbumManager {

  static let shared = AlbumManager()

  func getExtraLargeUrlWith(_ originalUrl: URL?) -> URL? {
    guard let originalUrl = originalUrl else {
      return nil
    }

    let urlString = originalUrl.absoluteString.replacingFirstOccurrence(of: "100x100", with: "200x200")
    return URL(string: urlString)
  }

}
