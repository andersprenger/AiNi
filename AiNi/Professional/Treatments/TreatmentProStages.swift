//
//  TreatmentProStages.swift
//  AiNi
//
//  Etapas de um tratamento, a view chamada ao editar um tratamento.
//
//  Created by Anderson Sprenger on 07/05/21.
//


import SwiftUI

struct TreatmentProStages: View {
    
    
    @ObservedObject var viewModel : TreatmentDetailsModel = TreatmentDetailsModel()
    
    @State var novaEtapa = false
    @State private var selectedStage: StepDetailsModel?
    
    var body: some View {
        ScrollView {
            VStack (alignment: .center, spacing: 15) {
                Text("Crie o seu tratamento do jeito que quiser, adicione etapas, tarefas, frequência e tempo.")
                    .font(.footnote)
                    .frame(width: 339, alignment: .center)
                    .padding(.top, 15)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 10.0)
                        .frame(height: 46, alignment: .center)
                        .foregroundColor(Color("card-color"))
                    
                    Text("\(Image(systemName: "plus")) Nova Etapa")
                        .font(.footnote)
                        .sheet(isPresented: $novaEtapa) {
                            ModalNewStep(viewModel : StepDetailsModel(title: "Nova Etapa", stepByStep: "", activityTime: false, frequency: false),completeStep: completeStep)
                        }
                        .onTapGesture {
                            novaEtapa = true
                        }
                }
                ForEach(viewModel.stepList) { stepItem in
                    TreatmentProStage(text:stepItem.title)
                        .onTapGesture {
                            selectedStage = stepItem
                        }
                }
                .sheet(item: $selectedStage) { step in
                    ModalNewStep(viewModel: step, completeStep: completeStep)
                }
            }
            .padding(.horizontal)
        }
    }
    
    
    func completeStep(id: UUID, title: String, stepByStep: String, activityTime : Bool, frequency : Bool) {
        if let model = viewModel.stepList.first(where: { step in
            step.id == id
        }){
            viewModel.objectWillChange.send()
            model.title = title
            model.stepByStep = stepByStep
            model.activityTime = activityTime
            model.frequency = frequency
        } else {
            let step : StepDetailsModel = StepDetailsModel(title:title, stepByStep:stepByStep, activityTime:activityTime, frequency:frequency)
            viewModel.stepList.append(step)
        }
    }
}

struct TreatmentProStages_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentProStages()
    }
}
