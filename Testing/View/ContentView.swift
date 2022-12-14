//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
        ZStack() {
//            Text("Home")
//            Text("Option")
//                .offset(y: 15)
//                .padding(.bottom, 15)
//            Text("Help")

            Image("scotland")



            Text("Scotland")
                .padding(4)
                .background(.black)
                .foregroundColor(.white)
                .offset(x: 100, y: 150)

        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




