//
//  MapViewController.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 30/8/2023.
//

import GoogleMaps
import SwiftUI
import UIKit

class MapViewController: UIViewController {

    var mapView : GMSMapView = GMSMapView(frame: .zero)
  var isAnimating: Bool = false

//  override func loadView() {
//
//      print("loadview")
//    super.loadView()
//    self.view = map
//  }
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
        
        print("view did load")
        print(isAnimating)
        
        
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 6.0)
         mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
         self.view.addSubview(mapView)

         // Creates a marker in the center of the map.
         let marker = GMSMarker()
         marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
         marker.title = "Sydney"
         marker.snippet = "Australia"
         marker.map = mapView
    }
}

