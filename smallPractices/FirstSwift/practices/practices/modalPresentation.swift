////
////  modalPresentation.swift
////  practices
////
////  Created by Saransh Dubey on 12/12/23.
////
//import SwiftUI
//
//struct ContentView: View {
//    let items = ["Item 1", "Item 2", "Item 3", "Item 4", "Item 5"]
//
//    var body: some View {
//        List {
//            ForEach(items, id: \.self) { item in
//                DisclosureGroup(
//                    content: {
//                        Text("Details for \(item)")
//                    },
//                    label: {
//                        Text(item)
//                    }
//                )
//            }
//        }
//        .listStyle(InsetGroupedListStyle()) // Optional: Apply a specific list style
//        .navigationTitle("Expand/Collapse View")
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
