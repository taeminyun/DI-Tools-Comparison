import UIKit
import DIToolsComparisonKit
import DIToolsComparisonUI

import Presentation

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RootViewController()
        window?.makeKeyAndVisible()
        
        DIToolsComparisonKit.hello()
        DIToolsComparisonUI.hello()

        return true
    }

}
