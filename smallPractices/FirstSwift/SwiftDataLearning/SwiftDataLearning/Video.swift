//
//  Video.swift
//  SwiftDataLearning
//
//  Created by Saransh Dubey on 28/11/23.
//

import SwiftUI
import SwiftData
import Foundation

@Model
class Video {
    var title: String
    var date: String
    
    init(title: String = "", date: String = "23:5") {
        self.title = title
        self.date = date
    }
}
