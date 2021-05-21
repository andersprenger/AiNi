//
//  StepDetailsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

import Foundation
import SwiftUI

class StepDetailsModel: ObservableObject, Hashable, Identifiable, Equatable{
    
    
    
    static var mockDosSteps1 : [StepDetailsModel] = {
        let mock1 = StepDetailsModel(title: "Massagear o pé", stepByStep: "massagear o pé em movimentos circulares na palma do pé", activityTime: true, frequency: true)
        
        let mock2 = StepDetailsModel(title: "Passar o creme cicratizante na sola do pé", stepByStep: "Passar o creme em movimentos contínuos até que não esteja mais gosmento e pegajoso", activityTime: false, frequency: true)
        
        let mock3 = StepDetailsModel(title: "Analisar e anotar", stepByStep: "Analisar e anotar mudanças semanais com o pé", activityTime: false, frequency: true)
        
        
        return [mock1, mock2,mock3]
    }()
    static var mockDosSteps2 : [StepDetailsModel] = {
        let mock1 = StepDetailsModel(title: "Lavar as mãos com o sabonete especial", stepByStep: "Lavar as mãos por 1 minuto e meio com o sabonete dermatológico", activityTime: true, frequency: true)
        
        let mock2 = StepDetailsModel(title: "Aplicar o creme dermatológico para rugas antes de dormir", stepByStep: "Passar o creme em movimentos contínuos até que não esteja mais gosmento e pegajoso", activityTime: false, frequency: true)
        
        
        return [mock1, mock2]
    }()
    static var mockDosSteps3 : [StepDetailsModel] = {
        let mock1 = StepDetailsModel(title: "Passar o remédio nasal", stepByStep: "Dois espirros do remédio em cana narina 3  vezes ao dia", activityTime: false, frequency: true)
        
        
        return [mock1]
    }()
    
    
    
    @Published var title: String = ""
    @Published var stepByStep: String = ""
    @Published var image: UIImage?
    @Published var activityTime: Bool = false
    @Published var frequency: Bool = false
    
    var id: UUID = UUID()
    
    init(title: String, stepByStep:String, activityTime: Bool, frequency: Bool, image: UIImage? = nil) {
        self.title = title
        self.stepByStep = stepByStep
        self.image = image
        self.activityTime = activityTime
        self.frequency = frequency
    }
    
    
    static func isInTreatment(tratamento : TreatmentDetailsModel, paciente : PacientModel ) -> Bool{
        
        for pacient in tratamento.thisTreatmentPacients {
            print( pacient.name == paciente.name )
            if paciente.name.lowercased() == pacient.name.lowercased(){
                print("CADE SEU DEUS O CARALHO ")
                return true
            }
        }
        
        return false
        
    }
    
    
    
    
    static func == (lhs: StepDetailsModel, rhs: StepDetailsModel) -> Bool {
        return lhs.title == rhs.title
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



