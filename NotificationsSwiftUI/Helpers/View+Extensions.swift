import SwiftUI

extension View {
    func scheduleButtonModifiers() -> some View {
        self
            .font(.headline)
            .padding()
            .background(Color.blue)
            .foregroundColor(.white)
            .clipShape(.containerRelative)
    }
}
