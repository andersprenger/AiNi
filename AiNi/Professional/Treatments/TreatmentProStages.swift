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
    
    
    @ObservedObject var viewModel : TreatmentDetailsModel
    
    @State var novaEtapa = false
    @State private var selectedStage: StepDetailsModel?
    
    var body: some View {
        VStack{
            ScrollView {
                VStack (alignment: .center, spacing: 15) {
                    Text("Crie o seu tratamento do jeito que quiser, adicione etapas, tarefas, frequência e tempo.")
                        .font(.footnote)
                        .frame(width: 339, alignment: .center)
                        .padding(.top, 15)
                    
                    ZStack {
                        RoundedRectangle(cornerRadius: 10.0).fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)).opacity(0.1)
                            .frame(height: 46, alignment: .center)
                            .foregroundColor(Color("card-color"))
                        
                        Text("\(Image(systemName: "plus")) Nova Etapa")
                            .font(.footnote).foregroundColor(.blue)
                            .sheet(isPresented: $novaEtapa) {
                                ModalNewStep(viewModel : StepDetailsModel(title: "Nova Etapa", stepByStep: "", activityTime: false, frequency: false),completeStep: completeStep)
                            }
                            .onTapGesture {
                                novaEtapa = true
                            }
                    }
                    ForEach(viewModel.stepList) { stepItem in
                        Button(action: {
                            selectedStage = stepItem
                            
                        }){
                            Text(stepItem.title)
                                .foregroundColor(.white)
                            
                        }.buttonStyle(StageCard())
                        .background(CardsGradientStyle())
                        .cornerRadius(10)
                        
                        
                    }.sheet(item: $selectedStage) { step in
                        ModalNewStep(viewModel: step, completeStep: completeStep)
                        
                    }
                }
                .padding(.horizontal)
                
                
                
            }
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 10.0) .fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 150, height: 45, alignment: .center)
                
                
                Text("Seguinte").foregroundColor(.white)
                    .font(.footnote)
                
                
            }.padding()
            .onTapGesture {
                /////////////
            }
            
        }.navigationTitle(viewModel.treatmentName)
        .navigationBarTitleDisplayMode(.inline)
        // MARK: --TODO: adicionar botoes de add e editar quando prontos
        .navigationBarItems(leading: EmptyView(), trailing: HStack {
            Image(systemName: "eye")
                .onTapGesture {
                    print("clock")
                }
            Image(systemName: "person.badge.plus")
                .onTapGesture {
                    print("plus")
                }
        })
        
        
    }
    func completeStep(id: UUID, title: String, stepByStep: String, activityTime : Bool, frequency : Bool, image : UIImage? = nil) {
        if let model = viewModel.stepList.first(where: { step in
            step.id == id
        }){
            viewModel.objectWillChange.send()
            model.title = title
            model.stepByStep = stepByStep
            model.activityTime = activityTime
            model.frequency = frequency
            model.image = image
        } else {
            let step : StepDetailsModel = StepDetailsModel(title:title, stepByStep:stepByStep, activityTime:activityTime, frequency:frequency, image: image)
            viewModel.stepList.append(step)
        }
    }
}

struct TreatmentProStages_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            TreatmentProStages(viewModel: .init())
        }
    }
}
