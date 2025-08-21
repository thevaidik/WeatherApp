//
//  LoadingView.swift
//  WeatherApp
//
//  Created by Vaidik Dubey on 21/08/25.
//

import Foundation
import SwiftUI

struct LoadingView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth : .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    LocationView()
}
