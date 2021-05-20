//
//  TreatmentDetailsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//
import SwiftUI
import Foundation

class TreatmentDetailsModel: ObservableObject, Equatable {
    
    
    static var mockDosDetalhesDosTratamentos : [TreatmentDetailsModel] = {
        let mock1 = TreatmentDetailsModel()
        mock1.treatmentName = "Tratamento do pé"
        mock1.stepList = StepDetailsModel.mockDosSteps1
        mock1.description = "Tratamento dermatológico do pé"
        mock1.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[4])
        mock1.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[1])
        mock1.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[2])
        mock1.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[6])
        mock1.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[10])
        let mock2 = TreatmentDetailsModel()
        mock2.treatmentName = "Tratamento da mão"
        mock2.stepList = StepDetailsModel.mockDosSteps2
        mock2.description = "Tratamento para rugas nas mãos"
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[2])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[7])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[8])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[4])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[10])
        let mock3 = TreatmentDetailsModel()
        mock3.treatmentName = "Tratamento da Rinite"
        mock3.stepList = StepDetailsModel.mockDosSteps3
        mock3.description = "Tratamento de Rinite com spray"
        mock3.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[3])
        mock3.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[6])
        mock3.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[10])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[2])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[7])
        mock2.thisTreatmentPacients.append(AllPacientsModel.mockDosPacientes.pacients[8])
        
        return [mock1, mock2, mock3]
    }()
    
    
    
    
    
    
    var id : UUID = .init()
    @Published var treatmentName: String = ""
    @Published var description: String = ""
    @Published var stepList: [StepDetailsModel] = []
    @Published var thisTreatmentPacients : [PacientModel] = []
    
//    init() {
//
//    }
    
    static func == (lhs: TreatmentDetailsModel, rhs: TreatmentDetailsModel) -> Bool {
        lhs.stepList == rhs.stepList && lhs.thisTreatmentPacients == rhs.thisTreatmentPacients
    }
}

