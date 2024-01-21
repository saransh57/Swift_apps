import SwiftUI

struct ContentView: View {
    @State private var scrollID: CoordinateSpace = .local
    
    var body: some View {
        VStack {
            Text("hi")
        }
    }
}
struct ContentView_PreviewProviders: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
