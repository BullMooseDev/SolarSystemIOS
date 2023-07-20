import Foundation
import SwiftUI

struct PlanetDetailView: View {
    var planet: Planet
    
    var body: some View {
        VStack {
            NavigationLink(destination: FullScreenImageView(planet: planet)) {
                Image(planet.imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
            }
            Text(planet.name)
                .font(.largeTitle)
                .padding(.bottom)
            Text("Diameter: \(planet.diameter) km")
                .padding(.bottom)
            Text("Day Length: \(planet.dayLength) hours")
                .padding(.bottom)
            Text("Distance from Sun: \(planet.millionKMsFromSun) million km")
        }
        .padding()
        .navigationTitle(planet.name)
    }
}
