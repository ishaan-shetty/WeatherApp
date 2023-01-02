//
//  ContentView.swift
//  Weather_app
//
//  Created by Ishaan Shetty on 30/12/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = Location_Manager()
    var weatherManager = Weather_Manager()
    @State var weather: ResponseBody?
    
    var body: some View {
        VStack{
            if let location = locationManager.location{
                if let weather = weather{
                    WeatherView(weather: weather)
                }
                else{
                    LoadingView()
                        .task{
                            do{
                                weather = try await weatherManager.getCurrentWeather(latitude: location.latitude, longitude: location.longitude)
                            }catch{
                                print("Error getting weather: \(error)")
                            }
                        }
                }
            }
            else{
                if(locationManager.isLoading){
                    LoadingView()
                }
                else{
                    WelcomeView()
                        .environmentObject(locationManager)
                }
            }
        }
        .background(Color(hue: 0.55, saturation: 0.45, brightness: 0.967))
        .preferredColorScheme(.light)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
