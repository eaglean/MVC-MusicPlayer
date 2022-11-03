//
//  TrackManager.swift
//  Music Player
//
//  Created by eaglean on 8/6/21.
//

import Foundation

class TrackManager {
  
  static let shared = TrackManager()
  
  func getTrackTimemmssFormatWith(trackTimeMillis: Int?) -> String {
    guard let trackTimeMillis = trackTimeMillis else {
      return ""
    }
    return trackTimeMillis.msToSeconds.minuteSecond
  }
  
}
