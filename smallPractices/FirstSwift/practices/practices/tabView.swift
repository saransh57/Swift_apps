//
//  tabView.swift
//  practices
//
//  Created by Saransh Dubey on 14/12/23.
//
//
//import SwiftUI
//
//struct tabView: View {
//    // struct ContentView: View {
//    let colors = Color.green.opacity(0.5)
//    init() {
//        UISegmentedControl.appearance().selectedSegmentTintColor = .green
//        
//        // Set text color for the selected segment
//        let textAttributes: [NSAttributedString.Key: Any] = [
//            .foregroundColor: UIColor.green
//        ]
//        
//        UISegmentedControl.appearance().setTitleTextAttributes(textAttributes, for: .selected)
//    }
//
//    // Function to set underline for the selected segment
//    func setUnderline(forSegment segment: Int, withText text: String) {
//        let segmentedControl = UISegmentedControl.appearance()
//        
//        // Remove underline for other segments
//        for idx in 0..<segmentedControl.numberOfSegments {
//            let attributes: [NSAttributedString.Key: Any] = [
//                .underlineStyle: 0
//            ]
//            segmentedControl.setTitleTextAttributes(attributes, for: .normal)
//        }
//        
//        // Set underline for the selected segment
//        let attributes: [NSAttributedString.Key: Any] = [
//            .underlineStyle: NSUnderlineStyle.single.rawValue,
//            .underlineColor: UIColor.green
//        ]
//        segmentedControl.setTitleTextAttributes(attributes, for: .selected)
//        segmentedControl.setTitle(text, forSegmentAt: segment)
//    }
//
//        @State private var selectedTab: Tab = .location
//        
//        enum Tab {
//            case location, overview, insurance
//        }
//        
//        var body: some View {
//            VStack {
//                // SegmentedControl
//                Picker(selection: $selectedTab, label: Text("")) {
//                    Text("Location").tag(Tab.location)
//                    Text("Overview").tag(Tab.overview)
//                    Text("Insurance").tag(Tab.insurance)
//                }
//                .pickerStyle(SegmentedPickerStyle())
//                .padding()
//                
//                // Content
//              //  Spacer()
//                
//                // Content based on selected tab
//                switch selectedTab {
//                case .location:
//                    LocationView()
//                case .overview:
//                    OverviewView()
//                case .insurance:
//                    InsuranceView()
//                }
//                
//                Spacer()
//                
////                // Underline
////                Capsule()
////                    .frame(width: 50, height: 4)
////                    .foregroundColor(.green)
////                    .padding(.bottom, 5)
//            }
//            .background(Color.white)
//        }
//    }
//    
//    struct LocationView: View {
//        var body: some View {
//            ScrollView {
//                Text("Location Content")
//            }
//        }
//    }
//    
//    struct OverviewView: View {
//        var body: some View {
//            Text("Overview Content")
//        }
//    }
//    
//    struct InsuranceView: View {
//        var body: some View {
//            Text("Insurance Content")
//        }
//    }
//    
//  
//
//#Preview {
//    tabView()
//}
