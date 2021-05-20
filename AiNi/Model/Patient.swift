//
//  Patient.swift
//  AiNi
//
//  Created by Anderson Sprenger on 11/05/21.
//

import Foundation
import SwiftUI

struct Patient: Identifiable {
    
    
    
    
    var id: String = UUID()
    var name: String
    var age: Int
    var occupation: String
    var imageName: String
    var observations: String
    
    var image: Image {
        Image(imageName)
    }
    
    
    
    
}
