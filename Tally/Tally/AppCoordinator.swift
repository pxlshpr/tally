import Foundation
import MediaPlayer

protocol Coordinator {
  var childCoordinators: [Coordinator] { get set }
  var navigationController: UINavigationController { get set }
  
  func start()
}

class AppCoordinator: Coordinator {
  
  var childCoordinators = [Coordinator]()
  var navigationController: UINavigationController
//  var timerController: TimerController?
  
  var isAuthorized = false
  
  init(navigationController: UINavigationController) {
    self.navigationController = navigationController
  }
  
  func start() {
    self.showTimer()
  }
  
  func showTimer() {
    let vc = TimerController()
//    vc.delegate = self
    navigationController.pushViewController(vc, animated: false)
  }
  
  func showContent() {
    
  }
}


//extension AppCoordinator: PlaylistsControllerDelegate {
//
//  func playlistController(didSelectPlaylist playlist: MPMediaItemCollection) {
//
////    let nowPlayingController = NowPlayingController(playlist: playlist)
////
////    let transitionDelegate = DeckTransitioningDelegate()
////    nowPlayingController.transitioningDelegate = transitionDelegate
////    nowPlayingController.modalPresentationStyle = .custom
////
////    nowPlayingController.delegate = self
////
////    self.nowPlayingController = nowPlayingController
////    self.navigationController.present(nowPlayingController, animated: true, completion: nil)
//  }
//}

//extension AppCoordinator: NowPlayingControllerDelegate {
//
//  func nowPlayingControllerDidTapEmojiButton() {
//  }
//
//}
