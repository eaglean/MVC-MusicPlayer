//
//  AppCoordinator.swift
//  Music Player
//
//  Created by Jacob Roscoe on 8/6/21.
//

import UIKit

class AppCoordinator {

  static let shared = AppCoordinator()

  var navigationController = UINavigationController()

  public func start(on window: UIWindow) {
    let albumListVC = AlbumListViewController(nibName: nil, bundle: nil)
    albumListVC.delegate = self
    navigationController = UINavigationController(rootViewController: albumListVC)
    window.rootViewController = navigationController
  }
}

// MARK: AlbumListViewControllerDelegate

extension AppCoordinator: AlbumListViewControllerDelegate {

  func didSelectAlbum(_ album: Album) {
    let trackListVC = TrackListViewController(for: album)
    trackListVC.delegate = self
    navigationController.pushViewController(trackListVC, animated: true)
  }

}

// MARK:

extension AppCoordinator: TrackListViewControllerDelegate {

  func didSelectTrack(for album: Album, track: Track) {

  }

}
