import UIKit
import DIToolsComparisonKit
import DIToolsComparisonUI

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {

        registerProviderFactories()

        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = RootComponent(alpha: 0.5, name: "YOGIYO").rootViewController
        window?.makeKeyAndVisible()
        
        DIToolsComparisonKit.hello()
        DIToolsComparisonUI.hello()

        return true
    }

}
