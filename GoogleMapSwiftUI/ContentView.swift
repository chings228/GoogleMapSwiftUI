//
//  ContentView.swift
//  GoogleMapSwiftUI
//
//  Created by man ching chan on 30/8/2023.
//

import SwiftUI
import GoogleMaps







struct ContentView: View {
   
    
    @StateObject var vm = ViewModel()
    
    @State var isShowMap = false
    
    let controller = Singleton.shared.map
    
    var body: some View {
        
        
        NavigationStack{
            
            ZStack {
                
                if (isShowMap){
                    MapViewControllerBridge()
                }
                
                
                VStack(spacing: 20){
                    
                    Button {
                        print("button click")
                        

                        
                        controller.changePoint()
                    } label: {
                        Text("change location")
                            .background(Color.white)
                    }
                    
                    
                    
                    if let coord = vm.coordinate{
                        
                        Text("\(coord.latitude) \(coord.longitude)")
                            .background(Color.yellow)
                        
                    }
                    
                   

                    
                    NavigationLink {
                        SecondView()
                    } label: {
                        Text("hello")
                            .frame(width: 200,height: 60)
                        .background(Color.white)
                        .foregroundColor(.black)
                        
                        .padding()
                        .cornerRadius(3)
                        .opacity(0.4)
                    }

                    
                    

                    
                }
                .padding(80)
                

                

                
                   
            }
            .ignoresSafeArea()
            .navigationTitle("Hello")
            
        }

        .onAppear{
            isShowMap = true
            vm.addObserver()
            
            print(isShowMap)
        }

        .onDisappear{
            print("disappear")
            isShowMap = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MapViewControllerBridge : UIViewControllerRepresentable{


    let controller = Singleton.shared.map
    
    func updateUIViewController(_ uiViewController: MapViewController, context: Context) {

    }
    
    
    func makeUIViewController(context: Context) -> MapViewController {
        

        
        return controller
    }
    

    
    
}


