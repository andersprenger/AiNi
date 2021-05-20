//
//  PacientModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 18/05/21.
//

import Foundation
import SwiftUI

class PacientModel: ObservableObject, Hashable, Identifiable{
    
    @Published var name: String = ""
    @Published var gender: String = ""
    @Published var picture: String = ""
    
    var id: UUID = UUID()
    
    init(name: String, gender: String, picture: String ) {
        self.name = name
        self.gender = gender
        self.picture = picture
       
    }
    
    static func == (lhs: PacientModel, rhs: PacientModel) -> Bool {
        return lhs.name == rhs.name && lhs.gender == rhs.gender && lhs.picture == rhs.picture
    }
    
    func hash(into hasher: inout Hasher) {
//        hasher.combine(self.title)
//        hasher.combine(self.stepByStep)
//        hasher.combine(self.image)
//        hasher.combine(self.activityTime)
//        hasher.combine(self.frequency)
        hasher.combine(self.id)
    }
}
