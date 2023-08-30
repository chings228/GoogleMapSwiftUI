//
//  ContentView.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 30/8/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MapViewControllerBridge()
               
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MapViewControllerBridge : UIViewControllerRepresentable{
    
    
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {
        
    }
    
    
    func makeUIViewController(context: Context) -> MapViewController {
        return MapViewController()
    }
    
    func makeCoordinator() -> () {
        
    }
    
    
    
}
