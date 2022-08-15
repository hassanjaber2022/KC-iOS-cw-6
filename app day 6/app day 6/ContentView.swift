//
//  ContentView.swift
//  app day 6
//
//  Created by mac on 13/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var weigth = ""
    @State var height = ""
    @State var result = 0.0
    @State var health = ""
    var body: some View {
        ZStack{
            Color.mint
                .ignoresSafeArea()
        VStack{
        TextField("Weigth", text: $weigth)
            TextField("height", text: $height)
                
            Button {
                result = bmiCalc(w:Double(weigth) ?? 0.0, h:Double(height) ?? 0.0)
                    
                    
                if result <= 20{
                    health = "ضعيف"
                } else if result <= 25{
                    health = "جيد"
                }
            } label: {
                Text("احسب")
                    .font(.largeTitle)
                    .frame(width: 100, height: 60)
                    .foregroundColor(Color.black)
                    .background(.white)
                    .clipShape(Capsule())
                    
                    
            }
            Text("BMI = \(result)")
            Text("الحالة = \(health)")
            
        } .padding()
            }
        }
    }
func bmiCalc(w: Double, h:
             Double) -> Double{
    return w / (h * h)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}
