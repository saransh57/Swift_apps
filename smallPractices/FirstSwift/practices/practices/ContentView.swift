import SwiftUI

struct ExpandCollapseView<Content: View>: View {
    let title: String
    let imageName: String
    let content: Content
    @State private var isExpanded = false
    
    init(title: String, imageName: String, @ViewBuilder content: () -> Content) {
        self.title = title
        self.imageName = imageName
        self.content = content()
    }
    
    var body: some View {
        VStack(spacing: 0) {
            HStack(spacing: 10) {
                Image(systemName: imageName)
                    .foregroundColor(Color.blue)
                    .frame(width: 20)
                    .padding(.leading, 8)
                
                Text(title)
                    .padding(.leading, 10)
                
                Image(systemName: "chevron.up")
                    .foregroundColor(Color.blue)
                    .rotationEffect(.degrees(isExpanded ? 0 : 180))
                    .animation(.easeInOut(duration: 0.3))
                    .padding(.trailing, 8)
            }
            .padding(7)
            .onTapGesture {
                withAnimation(.easeInOut(duration: 0.2)) {
                    isExpanded.toggle()
                }
            }
            
            Divider()
                .opacity(0.5)
            
            if isExpanded {
                VStack(alignment: .leading, spacing: 0) {
                    content
                    Spacer()
                }
                .padding(.top, 7)
            }
        }
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            ExpandCollapseView(title: "Education", imageName: "graduation") {
                Text("Your expandable content goes here")
            }
            
            ExpandCollapseView(title: "health", imageName: "face") {
                Text("content part")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
