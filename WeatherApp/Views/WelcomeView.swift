//
//  WelcomeView.swift
//  WeatherApp
//
//  Created by Vaidik Dubey on 11/08/25.
//

import Foundation
import SwiftUI
import CoreLocationUI

struct WelcomeView: View {
    @EnvironmentObject var locationmanager: LocationManager
    
    var body : some View {
        
        VStack {
            VStack (spacing : 20) {
                Text("Weather App")
                    .bold().font(.title)
                
                Text("Please share current location to check weather")
                    .padding()
                
            }
            .multilineTextAlignment(.center)
            .padding()
            //.foregroundColor(.white)
            
            LocationButton(.shareCurrentLocation){
                locationmanager.requestLocation()
            }
            .cornerRadius(19)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity , maxHeight: .infinity)
    }
}

#Preview {
    WelcomeView()
}
