import Foundation

struct Planet: Identifiable, Hashable {
    
    init(name: String, diameter: Int, dayLength: Float, millionKMsFromSun: Float) {
        
        self.name = name
        self.imageName = name.capitalized
        self.diameter = diameter
        self.dayLength = dayLength
        self.millionKMsFromSun = millionKMsFromSun
    }
	
	let name: String
	let imageName: String
	let diameter: Int
	let dayLength: Float
	let millionKMsFromSun: Float

    var id: String { name }
}
