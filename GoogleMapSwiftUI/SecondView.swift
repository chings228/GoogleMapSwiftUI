//
//  SecondView.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 4/9/2023.
//

import SwiftUI

struct SecondView : View{
    
    @State var isShowMap = false
    
    var body: some View{
        
        ZStack{
            VStack{
                
                if (isShowMap){
                    MapViewControllerBridge2()
                }
                
                
                
            }


            
        }
        

        .ignoresSafeArea()
        .onAppear{
            print("onappear")
            isShowMap = true
        }
        .onDisappear{
            print("disappear")
            isShowMap = false
        }
        
    }
    
    
}


struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}


struct MapViewControllerBridge2 : UIViewControllerRepresentable{


    let controller = Singleton.shared.map2
    
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {

    }
    
    
    func makeUIViewController(context: Context) -> MapViewController {
        

        
        return controller
    }
    

    
    
}
