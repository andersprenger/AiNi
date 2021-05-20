//
//  Timer.swift
//  AiNi
//
//  Created by Julia Silveira de Souza on 18/05/21.
//

import SwiftUI

var defaultTImeRemaining: CGFloat = 10
var lineWidth: CGFloat = 5
var radius: CGFloat = 70

struct TreatmentTimer: View {
    @State private var isActive = false
    @State private var timeRemaining: CGFloat = defaultTImeRemaining
    //@State var minutes: CGFloat = 1
    //@State var seconds: CGFloat = 30
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            VStack(spacing: 25) {
                VStack(content: {
                    ZStack {
                        Circle()
                            .stroke(Color.white.opacity(0.3), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                        
                        Circle()
                            .trim(from: 0, to: 1 - ((defaultTImeRemaining - timeRemaining) / defaultTImeRemaining))
                            .stroke(timeRemaining > defaultTImeRemaining / 2 ? Color.blue : timeRemaining > defaultTImeRemaining / 4 ? Color.blue : Color.gray, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                            .rotationEffect(.degrees(90))
                            .animation(.easeOut)
                        
                        VStack {
                            Text("\(timeRemaining == 0 ? "Pronto!" : "\(Int(timeRemaining))")")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                            
                            HStack{
                                
                                Button(action: {isActive = false
                                        timeRemaining = defaultTImeRemaining}, label: {
                                            Text("\(Image(systemName:"goforward")) Repetir")
                                                .font(.subheadline)
                                                .fontWeight(.light)
                                                .foregroundColor(.black)
                                        })
                                    .padding(6)
                                
                            }.padding(.top)
                        }
                    }
                    
                }).frame(width: radius * 2.7, height: radius * 2.7, alignment: .center)
                
                VStack {
                    HStack {
                        Button("\(isActive ? "Pausar" : !isActive && timeRemaining == defaultTImeRemaining ? "Começar" : "Pausado")", action: {
                            isActive.toggle()
                            
                        }).buttonStyle(BlueButton())
                        
                        if isActive == false {
                            DoneStageButton()
                            
                        }
                    }
                }
            }
            
        }.onReceive(timer, perform: { _ in
            guard isActive else { return }
            
            if timeRemaining > 0 {
                timeRemaining -= 1
                
                //                }else if seconds > 60 {
                //                    minutes -= 1
                
            }else{
                
                isActive = false
                timeRemaining = defaultTImeRemaining
            }
        })
    }
}

struct TreatmentTimer_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentTimer()
    }
}
