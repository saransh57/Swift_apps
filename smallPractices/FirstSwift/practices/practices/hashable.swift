//
//  hashable.swift
//  practices
//
//  Created by Saransh Dubey on 03/12/23.
//

import SwiftUI

// Identifiable approach first

struct customModel: Identifiable {
    /// ek uniquie id generate ho gyi string me convert kr dia, identifable conform kr k
    let id = UUID().uuidString
    /// ek ese hi custom model class h, isme value pass h skti h ye wali
    let title: String
}

/// ek struct banaya hasable naam ka view
struct hashable: View {
    
    /// kuch nhi directly ek constant bana liya custom model struct type ka, and used it
    /// as something like box and used that to store what ever we want, by making box of boxes by
    /// making its array
    /// this array of struct -- let it array ki har value ko ek unique id bhi mil gyi h
    let data: [customModel] = [
    customModel(title: "One"),
    customModel(title: "Two"),
    customModel(title: "Three"),
    customModel(title: "Four"),
    customModel(title: "Five")
    ]
    
    var body: some View {
        /// create a scroll view
        ScrollView {
        /// scroll view me ek 40 ki spacing k sath bnane k liye
        ///  for each ke sath me
            VStack(spacing: 40) {
                ForEach(data) { item in
                    Text(item.id)
                    .font(.headline)}
            }
        }
       
    }
}

#Preview {
    hashable()
}
