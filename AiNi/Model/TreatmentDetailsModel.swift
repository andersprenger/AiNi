//
//  TreatmentDetailsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//
import SwiftUI
import Foundation

class TreatmentDetailsModel: ObservableObject, Equatable {
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

