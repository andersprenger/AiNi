//
//  TreatmentDetailsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//
import SwiftUI
import Foundation

class TreatmentDetailsModel: ObservableObject {
    @Published var treatmentName: String = ""
    @Published var stepList: [StepDetailsModel] = []
    
    init() {
        
    }
}

