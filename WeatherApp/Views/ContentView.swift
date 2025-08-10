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
            WelcomeView()
        }
        
    }
}

#Preview {
    ContentView()
}
