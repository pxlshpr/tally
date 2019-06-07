import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
  
  var window: UIWindow?
  var coordinator: AppCoordinator?
  
  func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    
    let nc = UINavigationController()
    coordinator = AppCoordinator(navigationController: nc)
    coordinator?.start()
    
    window = UIWindow()
    window?.rootViewController = nc
    window?.makeKeyAndVisible()
    
    return true
  }
}
