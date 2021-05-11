//
//  StepDetailsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

import Foundation
import SwiftUI

class StepDetailsModel : ObservableObject {
    
    @Published var title : String = ""
    @Published var stepByStep : String = ""
    @Published var image : Image = Image("")
    @Published var activityTime : Bool = false
    @Published var frequency : Bool = false
    
    init() {
        
    }
}
