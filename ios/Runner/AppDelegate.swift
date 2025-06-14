import Flutter
import UIKit
import GoogleMaps

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
  //AIzaSyAsx034zvAEtuLKxTWm5SOk5evO54Tr34Q
    GMSServices.provideAPIKey("AIzaSyAsx034zvAEtuLKxTWm5SOk5evO54Tr34Q")
    GeneratedPluginRegistrant.register(with: self)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
