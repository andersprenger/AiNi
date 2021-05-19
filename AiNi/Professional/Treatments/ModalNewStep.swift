//
//  ModalNovaEtapa.swift
//  AiNi
//
//  Created by Heitor Feijó Kunrath on 11/05/21.
//

// FIXME: Make me testable!

import SwiftUI

struct ModalNewStep: View {
    
    @Environment (\.presentationMode) var presentationMode
    @State private var title: String
    @State private var activityTime: Bool
    @State private var frequency: Bool
    @State private var byStep: String
    var completeStep : ((UUID, String, String, Bool, Bool) -> Void)
    var stepId: UUID
    @State var inputImage: UIImage?
    @State var mostrandoPicker: Bool = false
    @State var image : Image?
    
    init(viewModel: StepDetailsModel, completeStep: @escaping ((UUID, String, String,  Bool, Bool) -> Void)){
        _title = .init(initialValue: viewModel.title)
        _activityTime = .init(initialValue: viewModel.activityTime)
        _frequency = .init(initialValue: viewModel.frequency)
        _byStep = .init(initialValue: viewModel.stepByStep)
        self.completeStep = completeStep
        self.stepId = viewModel.id
    }
    
    var body: some View {
        VStack {
            ZStack {
                VStack (alignment: .center){
                    Text(title)
                        .font(.title)
                }
                
                VStack (alignment: .trailing) {
                    HStack {
                        Spacer()
                        
                        Text("Lixo")
                    }
                }
            }
            .padding()
            
            VStack {
                HStack {
                    Text("Título:")
                    
                    Spacer()
                }
                
                TextField("\(title)", text: $title)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
            
            VStack {
                HStack {
                    Text("Passo a passo:")
                    
                    Spacer()
                }
                
                
                TextField("\(byStep)", text: $byStep)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(height: 40.0)
            }
            .padding()
            
            VStack {
                HStack {
                    
                    Text("Inserir imagem").sheet(isPresented: $mostrandoPicker, onDismiss: loadImage, content: {
                        ImagePicker(image: self.$inputImage)
                        
                    })
                    Spacer()
                    } .onTapGesture {
                        mostrandoPicker = true
                     }
                if image != nil{
                    image?.resizable().scaledToFit()
                    
                    
                    Spacer()
                }
               
                
                // FIXME: adicionar imagem aqui
            }
            .padding()
            
            Spacer()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray5))
                
                HStack {
                    Toggle(isOn: $activityTime){
                        HStack {
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40, alignment:.center)
                                .foregroundColor(Color(.systemGray6))
                                .padding(.leading)
                            
                            Text("TEMPO DA ATIVIDADE")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        }
                    }
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray5))
                
                HStack {
                    Toggle(isOn: $frequency){
                        HStack{
                            RoundedRectangle(cornerRadius: 10)
                                .frame(width: 40, height: 40, alignment:.center)
                                .foregroundColor(Color(.systemGray6))
                                .padding(.leading)

                            Text("FREQUÊNCIA")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        }
                    }
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(width: 150, height: 45, alignment: .center)
                    .foregroundColor(Color(.systemGray6))
                
                Text("concluir")
                    .font(.footnote)
                
            }.onTapGesture {
                self.completeStep(stepId,title,byStep,activityTime,frequency)
                self.presentationMode.wrappedValue.dismiss()
            }
            
        }
    }
    
    func loadImage(){
        guard let inputImage = inputImage else {return}
        image = Image(uiImage: inputImage)
        
    }
    
    
}

struct ModalNewStep_Previews: PreviewProvider {
    static var previews: some View {
        ModalNewStep(viewModel: StepDetailsModel(title: "", stepByStep: "", activityTime: false, frequency: false)) {_, _, _, _, _ in
        }
    }
}
