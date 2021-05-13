//
//  StepDetailsModel.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

import Foundation
import SwiftUI

class StepDetailsModel : ObservableObject , Hashable {
    
    @Published var title : String = ""
    @Published var stepByStep : String = ""
    @Published var image : String = ""
    @Published var activityTime : Bool = false
    @Published var frequency : Bool = false
    
    init(title : String, stepByStep:String, activityTime : Bool, frequency : Bool) {
        self.title = title
        self.stepByStep = stepByStep
        self.image = ""
        self.activityTime = activityTime
        self.frequency = frequency
    }
    
    static func == (lhs: StepDetailsModel, rhs: StepDetailsModel) -> Bool {
        return lhs.title == rhs.title
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(self.title)
        hasher.combine(self.stepByStep)
        hasher.combine(self.image)
        hasher.combine(self.activityTime)
        hasher.combine(self.frequency)
    }
}



