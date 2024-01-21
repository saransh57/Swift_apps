//
//  ExpandCollapseView.swift
//  practices
//
//  Created by Saransh Dubey on 17/12/23.
//

//import SwiftUI
//
//
//struct ExpandCollapseView: View {
//    @State private var isAboutExpanded = false
////      @State private var isEducationExpanded = false
////      @State private var isExpertiseExpanded = false
////      @State private var isHoursExpanded = false
////      @State private var isLanguagesExpanded = false
//      
//      var body: some View {
//          ScrollView {
//              VStack(alignment: .leading, spacing: 10) {
//                  DisclosureGroup(
//                      content: {
//                          Text("Details about yourself go here.")
//                              
//                      },
//                      label: {
//                          Label("About", systemImage: "person.fill")
//                              .font(.headline)
//                              .frame(maxWidth: .infinity, alignment: .leading)
//                               .contentShape(Rectangle())
//                            //  .border(/*@START_MENU_TOKEN@*/Color.black/*@END_MENU_TOKEN@*/)
//                      }
//                  )
//                  .accentColor(.primary)
//                  
////                  DisclosureGroup(
////                      content: {
////                          Text("Your educational background.")
////                      },
////                      label: {
////                          Label("Education", systemImage: "graduationcap.fill")
////                              .font(.headline)
////                              .frame(maxWidth: .infinity, alignment: .leading)
////                              .contentShape(Rectangle())
////                      }
////                  )
////                  .accentColor(.primary)
////                  
////                  DisclosureGroup(
////                      content: {
////                          Text("Your areas of expertise.")
////                      },
////                      label: {
////                          Label("Expertise", systemImage: "star.fill")
////                              .font(.headline)
////                              .frame(maxWidth: .infinity, alignment: .leading)
////                              .contentShape(Rectangle())
////                      }
////                  )
////                  .accentColor(.primary)
////                  
////                  DisclosureGroup(
////                      content: {
////                          Text("Your availability in hours.")
////                      },
////                      label: {
////                          Label("Hours", systemImage: "clock.fill")
////                              .font(.headline)
////                              .frame(maxWidth: .infinity, alignment: .leading)
////                              .contentShape(Rectangle())
////                      }
////                  )
////                  .accentColor(.primary)
////                  
////                  DisclosureGroup(
////                      content: {
////                          Text("Languages you are proficient in.")
////                      },
////                      label: {
////                          Label("Languages", systemImage: "globe")
////                              .font(.headline)
////                              .frame(maxWidth: .infinity, alignment: .leading)
////                              .contentShape(Rectangle())
////                      }
////                  )
////                  .accentColor(.primary)
//              }
//              .padding()
//              
//          }
//          .navigationBarTitle("Profile", displayMode: .inline)
//      }
//  }
//
//#Preview {
//    ExpandCollapseView()
//}
