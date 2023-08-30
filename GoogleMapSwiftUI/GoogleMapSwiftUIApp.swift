//
//  GoogleMapSwiftUIApp.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 30/8/2023.
//

import SwiftUI
import GoogleMaps




//class AppDelegate: NSObject, UIApplicationDelegate {
//  func application(_ application: UIApplication,
//                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//      GMSServices.provideAPIKey("AIzaSyBbdF2eBNGlt6VL3IOQ0Z6Z9UeybTjJToE")
//      
//   
//
//    return true
//  }
//}




@main
struct GoogleMapSwiftUIApp: App {
    
    //@UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    
    init(){
        GMSServices.provideAPIKey("AIzaSyBbdF2eBNGlt6VL3IOQ0Z6Z9UeybTjJToE")
        
    }
    
    var body: some Scene {
        
        
        WindowGroup {
            ContentView()
        }
    }
}
