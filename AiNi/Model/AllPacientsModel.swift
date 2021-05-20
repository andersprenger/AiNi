//
//  AllPacientsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 20/05/21.
//

import Foundation

import SwiftUI

class AllPacientsModel: ObservableObject, Hashable, Identifiable{
    
    @Published var pacients : [PacientModel]
    
    static var mockDosPacientes : AllPacientsModel = {
        let mock = AllPacientsModel()
        mock.pacients = PacientModel.mockDosPacietes
        return mock
    }()
    
    var id: UUID = UUID()
    
    init() {
        self.pacients = []
    }
    
    static func == (lhs: AllPacientsModel, rhs: AllPacientsModel) -> Bool {
        return lhs.pacients == rhs.pacients
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
