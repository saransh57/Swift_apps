//
//  DisclosureGroup.swift
//  practices
//
//  Created by Saransh Dubey on 19/12/23.
//

import SwiftUI



struct DiscoGroup: View {
    @State private var isAboutExpanded = false

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                DisclosureGroup(
                    isExpanded: $isAboutExpanded,
                    content: {
                        HStack(spacing: 0) {
                            VStack(spacing: 0) {
                                Text("Details about yourself go here.")
                                Text("Details about yourself go here.")
                            }
                            Spacer()
                        }
                    },
                    label: {
                        DisclosureGroupDisclosureLabel(
                            isExpanded: $isAboutExpanded,
                            label: {
                                HStack(spacing: 10) {
                                    RoundedRectangle(cornerRadius: 8)
                                        .fill(Color.white)
                                        .frame(width: 30, height: 30)
                                        .overlay(
                                            Image(systemName: "person.fill")
                                                .foregroundColor(Color.blue)
                                        )
                                    Text("About")
                                        .foregroundColor(Color.black)
                                        .font(.headline)
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                }
                            }
                        )
                    }
                )
                .accentColor(.primary)
              //  .transition(.fade) // Use fade transition as a substitute
            }
            .padding()
        }
        .navigationBarTitle("Profile", displayMode: .inline)
    }
}

struct DisclosureGroupDisclosureLabel<Label>: View where Label: View {
    @Binding var isExpanded: Bool
    var label: () -> Label

    var body: some View {
        HStack {
            label()
            Spacer()
            Image(systemName: "chevron.up")
                .foregroundColor(.blue)
                .rotationEffect(.degrees(isExpanded ? 0 : 180))
                .animation(.easeInOut(duration: 0.3))
        }
        .onTapGesture {
            withAnimation {
                self.isExpanded.toggle()
            }
        }
    }
}



#Preview {
    DiscoGroup()
}
