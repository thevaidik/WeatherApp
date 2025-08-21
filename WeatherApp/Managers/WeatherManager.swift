//
//  WeatherManager.swift
//  WeatherApp
//
//  Created by Vaidik Dubey on 21/08/25.
//

import Foundation
import CoreLocation

class WeatherManager {
    
    func fetchWeather( latitude : CLLocationDegrees, longitude : CLLocationDegrees) async throws {
        
        guard let url = URL (string : "https://api.openweathermap.org/data/2.5/weather?lat=\(latitude)&lon=\(longitude)&appid=\("6493f1555426b552c9346c293baafc38")&units = metric ") else {
            fatalError("Missing URL ")
        }
        
        let urlRequest = URLRequest(url : url)
        
        let (data, response) = try await URLSession.shared.data(for: urlRequest)
        
        
        
    }
}
