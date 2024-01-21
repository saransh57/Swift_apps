//
//  UITestingBootcampView.swift
//  practices
//
//  Created by Saransh Dubey on 16/12/23.
//

import SwiftUI

class UITestingBootcampViewModel: ObservableObject {
    let placeholderText: String = "Add your name..."
    @Published var textFieldText: String = ""
    @Published var currentUserIsSignedIn: Bool = false
    
    func signUpButtonPressed() {
        guard textFieldText.isEmpty else { return }
        currentUserIsSignedIn = true
    }
}
struct UITestingBootcampView: View {
    
    @StateObject private var vm = UITestingBootcampViewModel()
    
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: [Color.blue, Color.black]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .ignoresSafeArea()
            
            if vm.currentUserIsSignedIn {
                // content
            }
            if !vm.currentUserIsSignedIn {
                signUpLayer
                    .transition(.move(edge: .leading))
            }
        }
    }
}

extension UITestingBootcampView {
    private var signUpLayer: some View {
        VStack {
            TextField(vm.placeholderText, text: $vm.textFieldText)
                .font(.headline)
                .padding()
                .background(Color.white)
                .cornerRadius(10)
            
            Button(action: {
                withAnimation(.spring()) {
                    vm.signUpButtonPressed()
                }
            }, label: {
                Text("Sign Up")
                    .font(.headline)
                    .padding()
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            })
        }
        .padding()
    }
}

#Preview {
    UITestingBootcampView()
}
