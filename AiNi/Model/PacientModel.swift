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
    
    var id: UUID = UUID()
    
    
    static var mockDosPacietes : [PacientModel] = {
        let mock2 = PacientModel()
        mock2.name = "Renato"
        let mock4 = PacientModel()
        mock4.name = "Sarah"
        let mock5 = PacientModel()
        mock5.name = "Leonardo"
        let mock6 = PacientModel()
        mock6.name = "Juliana"
        let mock7 = PacientModel()
        mock7.name = "Clarissa"
        let mock8 = PacientModel()
        mock8.name = "Bernardo"
        let mock9 = PacientModel()
        mock9.name = "Gabriela"
        let mock10 = PacientModel()
        mock10.name = "Cintia"
        let mock11 = PacientModel()
        mock11.name = "Ana Paula"
        
        return [mock2 , mock4, mock5, mock6, mock7, mock8, mock9, mock10, mock11]
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
