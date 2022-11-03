//
//  AlbumManagerTests.swift
//  MusicPlayerTests
//
//  Created by eaglean on 8/6/21.
//

import XCTest
@testable import MusicPlayer

class AlbumManagerTests: XCTestCase {

  override func setUp() {
    super.setUp()
  }

  override func tearDown() {
    super.tearDown()
  }

  func testGetExtraLargeImage() {
    let artworkUrl100x100 = URL(string:"https://is3-ssl.mzstatic.com/image/thumb/Video118/v4/6b/2f/f1/6b2ff173-f5d6-30dc-300c-4eeb50010d03/source/100x100bb.jpg")

    let artworkUrlExtraLarge100x100 = AlbumManager.shared.getExtraLargeUrlWith(artworkUrl100x100)

    XCTAssert(artworkUrlExtraLarge100x100?.absoluteString == "https://is3-ssl.mzstatic.com/image/thumb/Video118/v4/6b/2f/f1/6b2ff173-f5d6-30dc-300c-4eeb50010d03/source/200x200bb.jpg")
  }

}
