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
        mapView.delegate = self
        

         // Creates a marker in the center of the map.
         let marker = GMSMarker()
         marker.position = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
         marker.title = "Sydney"
         marker.snippet = "Australia"
         marker.map = mapView
    }
    
    
    func changePoint(){
        
        

        
        let camera = GMSCameraPosition.camera(withLatitude: 22.327168, longitude: 114.176666, zoom: 15)
        
//        mapView.animate(toLocation: CLLocationCoordinate2D(latitude: 22.327168 , longitude: 114.176666))
        
        mapView.animate(to: camera)
    }
    
    
    
    

}

extension MapViewController:GMSMapViewDelegate{
    
    func mapView(_ mapView: GMSMapView, didChange position: GMSCameraPosition) {
        print(position)
        
    }
    
    func mapView(_ mapView: GMSMapView, didTapAt coordinate: CLLocationCoordinate2D) {
        print(coordinate.latitude,coordinate.longitude)
        
        Singleton.shared.coordinate = coordinate
        
        guard let coord = Singleton.shared.coordinate else {return}
        
        print(coord)
        
        
        NotificationCenter.default.post(name: NSNotification.Name("ObserveTapCoord"),
                                        object: nil,
                                        userInfo: ["coord":coord])
        
    }
    
}

