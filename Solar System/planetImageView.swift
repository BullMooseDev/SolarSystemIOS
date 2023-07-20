import Foundation
import SwiftUI

struct FullScreenImageView: View {
    var planet: Planet
    
    var body: some View {
        Image(planet.imageName)
            .resizable()
            .scaledToFit()
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // add state here for reverse to table view?
                    }) {
                        Image(systemName: "house")
                    }
                }
            }
            .navigationTitle(planet.name)
    }
}
