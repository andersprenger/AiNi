//
//  ProCurrentTreatments.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 19/05/21.
//
import Foundation
import SwiftUI

class ProCurrentTreatments: ObservableObject, Hashable, Identifiable{
    
    @Published var treatments: [TreatmentDetailsModel]
    var id: UUID = UUID()
    
    init() {
        self.treatments = []
    }
    
    static func == (lhs: ProCurrentTreatments, rhs: ProCurrentTreatments) -> Bool {
        return lhs.treatments == rhs.treatments
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





