//
//  ViewModel.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 31/8/2023.
//

import Foundation
import MapKit


class ViewModel : ObservableObject{
    
    @Published var coordinate : CLLocationCoordinate2D?
    
    
    
    func addObserver(){
        
        
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(didReceive(notification:)),
                                               name: NSNotification.Name("ObserveTapCoord"),
                                               object: nil)
    }
    
    
    @objc func didReceive(notification: Notification) {

        
        if let coord = notification.userInfo?["coord"] as? CLLocationCoordinate2D{
            
            print(coord.latitude)
            
            coordinate = coord
        }
        
        
    }
    
}
