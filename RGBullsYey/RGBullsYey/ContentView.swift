//
//  ContentView.swift
//  RGBullsYey
//
//  Created by Mitya Kim on 12/28/23.
//

import SwiftUI

struct ContentView: View {
    
    let rTarget = Double.random(in: 0..<1)
    let gTarget = Double.random(in: 0..<1)
    let bTarget = Double.random(in: 0..<1)
    
    @State var rGuess: Double
    @State var gGuess: Double
    @State var bGuess: Double
    @State private var showAlert = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    VStack {
                        Color(red: rTarget, green: gTarget, blue: bTarget)
                        self.showAlert ?
                        Text("R:\(Int(rTarget*255)) G:\(Int(gTarget*255)) B:\(Int(bTarget*255))") :
                        Text("Match this color")
                    }
                    VStack {
                        ZStack {
                            Color(red: rGuess, green: gGuess, blue: bGuess)
                            Text("1")
                                .padding(.all, 5)
                                .background(.white)
                                .mask(Circle())
                                .foregroundStyle(.black)
                        }
                        Text("R:\(Int(rGuess*255)) G:\(Int(gGuess*255)) B:\(Int(bGuess*255))")
                    }
                }
                Button(action: {
                    self.showAlert = true
                }) {
                    Text("Hit me!")
                }.alert(isPresented: $showAlert) {
                    Alert(title: Text("Your Score:"), message: Text(String(computeScore())))
                }.padding()
                
                VStack {
                    ColorSlider(value: $rGuess, textColor: .red)
                    ColorSlider(value: $gGuess, textColor: .green)
                    ColorSlider(value: $bGuess, textColor: .blue)
                }.padding(.horizontal)
                
                
            }
        }
    }
    
    func computeScore() -> Int {
        let rDiff = rGuess - rTarget
        let gDiff = gGuess - gTarget
        let bDiff = bGuess - bTarget
        let diff = sqrt(rDiff*rDiff + gDiff*gDiff + bDiff*bDiff)
        return Int((1.0-diff)*100.0+0.5)
    }
}

#Preview {
    ContentView(rGuess: 0.5, gGuess: 0.5, bGuess: 0.5)
        .previewLayout(.fixed(width: 500, height: 320))
}

struct ColorSlider: View {
    
    @Binding var value: Double
    var textColor: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundStyle(.red)
            Slider(value: $value)
                .background(textColor)
                .cornerRadius(10)
            Text("255").foregroundStyle(.red)
        }
    }
}
