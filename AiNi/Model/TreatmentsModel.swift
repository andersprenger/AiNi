//
//  TreatmentsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

import Foundation
import SwiftUI

class TreatmentsModel: ObservableObject {
    @Published var treatmentList : [TreatmentDetailsModel] = []
    
    init() {}
}
