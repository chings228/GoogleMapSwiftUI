//
//  Singleton.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 31/8/2023.
//

import Foundation
import UIKit
import GoogleMaps


class Singleton : NSObject{
    
    static let shared = Singleton()
    
    
    
    public var map = MapViewController()
    
    public var map2 = MapViewController()
    
    public var coordinate : CLLocationCoordinate2D?
    
    
}
