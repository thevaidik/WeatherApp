//
//  LocationView.swift
//  WeatherApp
//
//  Created by Vaidik Dubey on 11/08/25.
//

import Foundation
import SwiftUI

struct LocationView: View {
    var body: some View {
        ProgressView()
            .progressViewStyle(CircularProgressViewStyle(tint: .white))
            .frame(maxWidth: .infinity , maxHeight: .infinity)
    }
}

#Preview {
    LocationView()
}
