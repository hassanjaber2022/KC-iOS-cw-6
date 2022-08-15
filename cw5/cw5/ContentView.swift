//
//  ContentView.swift
//  cw5
//
//  Created by ... on 23/06/2022.
//

import SwiftUI

struct ContentView: View {
    @State var counter: [Int] = [0, 0, 0]
    var body: some View {
        VStack{
            MyButton(title: "استغفر الله العظيم", myCuonter: $counter [0])
            MyButton(title: "الحمدلله", myCuonter: $counter [1])
            MyButton(title: "سبحان الله وبحمده", myCuonter: $counter [2])
        }
    }
}

// يجب عمل extract



struct MyButton: View {
    @State var title : String
    @Binding var myCuonter : Int
    var body: some View {
        
        HStack{
            Text(title).font(.title)
            Spacer()
            Text("\(myCuonter)")

                .font(.largeTitle)
               .frame(width: 100, height: 100, alignment: .center)
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
                .padding()
                .onTapGesture {
                    myCuonter = myCuonter + 1
                }
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
