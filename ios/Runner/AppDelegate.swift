import UIKit
import Flutter
import Firebase

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
      getFilePath()
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
    
    
    private func getFilePath() {
        if let filePath = Bundle.main.path(forResource: "FIREBASE_CONFIG_FILE", ofType: "plist"),
           let options = FirebaseOptions(contentsOfFile: filePath) {
            print(options.bundleID)
            FirebaseApp.configure(options: options)
        }
        
    }
}
