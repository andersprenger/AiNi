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
    @State private var repeating: Bool = false
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
                        
                        Image(systemName: "trash")
                    }
                }
            }
            .padding()
            
            VStack {
                ZStack{
                    RoundedRectangle(cornerRadius: 10.0).fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)).opacity(0.1)
                        .frame(height: 46, alignment: .center)
                        .foregroundColor(Color("card-color"))
                    TextField("Título", text: $title).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/.opacity(0.5)).padding()
                    
                    
                }
            }
            .padding(.leading)
            .padding(.trailing)
            
            
                            
                
                
                VStack{
                    TextField("Passo a passo", text: $byStep).padding(.horizontal).padding(.vertical)
                        
                   Spacer()
                }.background(  RoundedRectangle(cornerRadius: 10.0).fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)).opacity(0.1))
                .padding(.bottom).padding(.horizontal)
       
                VStack{
                    HStack {
                        Text("Adicionar imagem").foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                            .sheet(isPresented: $mostrandoPicker, onDismiss: loadImage, content: {
                                ImagePicker(image: self.$inputImage)
                                
                                
                            })
                        Spacer()
                    } .onTapGesture {
                        mostrandoPicker = true
                    }
                    .padding()
                    HStack{
                    if image != nil{
                        image?.resizable().scaledToFit().cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/).padding()
                        
                
                        Spacer()
                    }
                        
                    }
                    
                }.background(  RoundedRectangle(cornerRadius: 10.0).fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing)).opacity(0.1))
                .padding(.horizontal)
                // FIXME: adicionar imagem aqui
            
            
            
            Spacer()
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray6))
                
                HStack {
                    
                        
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40, alignment:.center)
                                    .foregroundColor(Color(.systemBlue))
                                    .padding(.leading)
                                Image(systemName: "repeat.circle").frame(alignment:.center).foregroundColor(.white).padding(.leading)
                            }
                            Text("REPETIR")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        
                    Spacer()
                    Toggle("repetir" ,isOn: $repeating).onTapGesture {
                        repeating.toggle()
                    }
                        .labelsHidden()
                    
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }.shadow(radius: 5.0,x: CGFloat(-1),
                     y: CGFloat(3))
            .padding(.horizontal)
            .padding(.top)
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray6))
                
                
                HStack {
                    
                        HStack {
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40, alignment:.center)
                                    .foregroundColor(Color(.systemBlue))
                                    .padding(.leading)
                                Image(systemName: "stopwatch").frame(alignment:.center).foregroundColor(.white).padding(.leading)
                            }
                            Text("TEMPO DA ATIVIDADE")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        }
                    Toggle(isOn: $activityTime){}.onTapGesture {
                        activityTime.toggle()
                    }
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }.shadow(radius: 5.0,x: CGFloat(-1),
                     y: CGFloat(3))
            .padding()
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0)
                    .frame(height: 65, alignment: .center)
                    .foregroundColor(Color(.systemGray6))
                
                HStack {
                    
                        HStack{
                            ZStack{
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: 40, height: 40, alignment:.center)
                                    .foregroundColor(Color(.systemBlue))
                                    .padding(.leading)
                                Image(systemName: "clock.arrow.2.circlepath").frame(alignment:.center).foregroundColor(.white).padding(.leading)
                            }
                            Text("FREQUÊNCIA")
                                //.frame(width: 116, height: 16, alignment:.leading)
                                .font(.caption)
                        }
                    Toggle(isOn: $frequency){}.onTapGesture {
                        frequency.toggle()
                    }
                }
                .padding(.trailing) // desgruda o toggle da borda do retangulo
            }.shadow(radius: 5.0,x: CGFloat(-1),
                     y: CGFloat(3))
            .padding(.horizontal)
            
            ZStack {
                RoundedRectangle(cornerRadius: 10.0) .fill(LinearGradient(gradient: Gradient(colors: [Color(.systemBlue), Color(.systemIndigo)]), startPoint: .leading, endPoint: .trailing))
                    .frame(width: 150, height: 45, alignment: .center)
                
                
                Text("Concluir").foregroundColor(.white)
                    .font(.footnote)
                
            }.padding()
            .onTapGesture {
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
