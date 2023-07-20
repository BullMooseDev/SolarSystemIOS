import Foundation
import SwiftUI

struct PlanetsListView: View {
    let planets: [Planet]
    
    var body: some View {
        List(planets) { planet in
            NavigationLink(destination: PlanetDetailView(planet: planet)) {
                HStack {
                    Image(planet.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 50, height: 50)
                    Text(planet.name)
                }
            }
        }
        .navigationTitle("Our Solar System")
    }
}
