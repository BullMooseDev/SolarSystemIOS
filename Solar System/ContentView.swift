import SwiftUI

struct ContentView: View {
    
    let planets = [
        Planet(name: "Mercury", diameter: 4879, dayLength: 4222.6, millionKMsFromSun: 57.9),
        Planet(name: "Venus", diameter: 12104, dayLength: 2802.0, millionKMsFromSun: 108.2),
        Planet(name: "Earth", diameter: 12756, dayLength: 24.0, millionKMsFromSun: 149.6),
        Planet(name: "Mars", diameter: 6792, dayLength: 24.7, millionKMsFromSun: 227.9),
        Planet(name: "Jupiter", diameter: 142984, dayLength: 9.9, millionKMsFromSun: 778.6),
        Planet(name: "Saturn", diameter: 120536, dayLength: 10.7, millionKMsFromSun: 1433.5),
        Planet(name: "Uranus", diameter: 51118, dayLength: 17.2, millionKMsFromSun: 2872.5),
        Planet(name: "Neptune", diameter: 49528, dayLength: 16.1, millionKMsFromSun: 4495.1),
        Planet(name: "Pluto", diameter: 2370, dayLength: 153.3, millionKMsFromSun: 5906.4)
    ]
    
    var body: some View {
        NavigationView {
            PlanetsListView(planets: planets)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

