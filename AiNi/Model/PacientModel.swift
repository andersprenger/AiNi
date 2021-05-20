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
    
    @Published var picture: String = ""
    
    var id: UUID = UUID()
    
    
    static var mockDosPacietes : [PacientModel] = {
        let mock1 = PacientModel()
        let mock2 = PacientModel()
        let mock3 = PacientModel()
        return [mock1, mock2 , mock3]
    }()
    
    init( ) {
       
    }
    
    static func == (lhs: PacientModel, rhs: PacientModel) -> Bool {
        return lhs.name == rhs.name
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
