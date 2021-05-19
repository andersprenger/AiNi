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
    @State var minutes: CGFloat = 1
    @State var seconds: CGFloat = 30
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        
        ZStack {
            
            VStack(spacing: 25) {
                
                ZStack(content: {
                    
                    Circle()
                        .stroke(Color.white.opacity(0.3), style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                    
                    Circle()
                        .trim(from: 0, to: 1 - ((defaultTImeRemaining - timeRemaining) / defaultTImeRemaining))
                        .stroke(timeRemaining > defaultTImeRemaining / 2 ? Color.blue : timeRemaining > defaultTImeRemaining / 4 ? Color.blue : Color.gray, style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
                        .rotationEffect(.degrees(-90))
                        .animation(.easeIn)
                    
                    Text("\(timeRemaining == 0 ? "Pronto!" : "\(Int(timeRemaining))")")
                        .font(.largeTitle)
                        .fontWeight(.light).foregroundColor(.black)
                    
                }).frame(width: radius * 3, height: radius * 3, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                
                HStack(spacing: 20) {
                                        
                    Label("\(isActive ? "Pause" : !isActive && timeRemaining == defaultTImeRemaining ? "Play" : "Resume")", systemImage: "\(isActive ? "pause.fill" : "play.fill")").onTapGesture(perform: {
                        isActive.toggle()
                        
                    }).foregroundColor(isActive ? .gray : !isActive && timeRemaining < defaultTImeRemaining ? .blue : .black)
                    
                    Label("Reset", systemImage: "backward.fill").onTapGesture(perform: {
                        isActive = false
                        timeRemaining = defaultTImeRemaining
                        
                    }).foregroundColor(.black)
                }
                                
            }.onReceive(timer, perform: { _ in
                guard isActive else { return }
                
                if seconds > 0 {
                    seconds -= 1
                    
                }else if seconds > 60 {
                    minutes -= 1
                    
                }else{
                    
                    isActive = false
                    timeRemaining = defaultTImeRemaining
                }
            })
        }
    }
}

struct TreatmentTimer_Previews: PreviewProvider {
    static var previews: some View {
        TreatmentTimer()
    }
}
