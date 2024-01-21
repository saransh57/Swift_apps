//
//  customSegmentedView.swift
//  practices
//
//  Created by Saransh Dubey on 16/12/23.
//

//import SwiftUI
//struct CustomSegmentedView: View {
//    @State private var selectedTab: Tab = .location
//
//    enum Tab {
//        case location, overview, insurance
//    }
//
//    var body: some View {
//        VStack {
//            HStack(spacing: 0) {
//                CustomTabButton(tab: .location, selectedTab: $selectedTab) {
//                    Text("Location")
//                        .bold()
//                }
//
//                CustomTabButton(tab: .overview, selectedTab: $selectedTab) {
//                    Text("Overview")
//                        .bold()
//                }
//
//                CustomTabButton(tab: .insurance, selectedTab: $selectedTab) {
//                    Text("Insurance")
//                        .bold()
//                }
//            }
//            .padding()
//
//            // Underline for each button
//            HStack(spacing: 0) {
//                Spacer(minLength: 0)
//                Capsule()
//                    .frame(width: 50, height: 4) // Adjust height to make it thinner
//                       .foregroundColor(selectedTab == .location ? .green : .clear)
//                       .offset(y: -15)
//                       .bold()
//                Spacer(minLength: 0)
//                Capsule()
//                    .frame(width: buttonWidth, height: 4)
//                    .foregroundColor(selectedTab == .overview ? .green : .clear)
//                    .offset(y: -15)
//                Spacer(minLength: 0)
//                Capsule()
//                    .frame(width: buttonWidth, height: 4)
//                    .foregroundColor(selectedTab == .insurance ? .green : .clear)
//                    .offset(y: -15)
//                Spacer(minLength: 0)
//            }
//
//            Spacer()
//
//            // Content based on selected tab
//            switch selectedTab {
//            case .location:
//                LocationContentView()
//            case .overview:
//                OverviewContentView()
//            case .insurance:
//                InsuranceContentView()
//            }
//
//            Spacer()
//        }
//        .background(Color.white)
//    }
//
//    private var buttonWidth: CGFloat {
//        UIScreen.main.bounds.width / 3 // Adjust as needed
//    }
//}
//
//struct CustomTabButton<Label: View>: View {
//    let tab: CustomSegmentedView.Tab
//    @Binding var selectedTab: CustomSegmentedView.Tab
//    let label: () -> Label
//
//    var body: some View {
//        Button(action: {
//            // Update the selected tab
//            selectedTab = tab
//        }) {
//            label()
//                .foregroundColor(selectedTab == tab ? .green : .blue)
//                .frame(maxWidth: .infinity)
//        }
//    }
//}
//
//struct LocationContentView: View {
//    var body: some View {
//        ScrollView {
//            Text("Location Content")
//        }
//    }
//}
//
//struct OverviewContentView: View {
//    var body: some View {
//        Text("Overview Content")
//    }
//}
//
//struct InsuranceContentView: View {
//    var body: some View {
//        Text("Insurance Content")
//    }
//}
//
//
//
//
//struct CustomSegmentedView_Previews: PreviewProvider {
//    static var previews: some View {
//        CustomSegmentedView()
//    }
//}
//



//#Preview {
//    customSegmentedView()
//}
