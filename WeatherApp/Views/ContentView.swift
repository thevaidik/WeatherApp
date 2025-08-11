 //
//  ContentView.swift
//  WeatherApp
//
//  Created by Vaidik Dubey on 08/08/25.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = LocationManager()
    
    var body: some View {
        VStack {
            
            if let location = locationManager.location {
                Text("Your coordinates are: \(location.latitude), \(location.longitude)")
            }
            else {
                if locationManager.isLoading {
                    ProgressView()
                }
                else {
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
            
        }
        .background(Color(hue: 0.597, saturation: 0.942, brightness: 0.66))
        .preferredColorScheme(.dark)
        
    }
}

#Preview {
    ContentView()
}
