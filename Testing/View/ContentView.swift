//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI


struct ContentView: View {

    var body: some View {
    
        VStack {
            RoundedRectangle(cornerRadius: 8)
                .frame(width: 200, height: 100)
                .overlay(alignment: .topLeading) { Star(colors: [.red, .yellow]) }
                .overlay(alignment: .topTrailing) { Star(colors: [.blue, .orange]) }
                .overlay(alignment: .bottomLeading) { Star(colors: [.indigo, .red]) }
                .overlay(alignment: .bottomTrailing) { Star(colors: [.brown, .mint]) }
            
            Color.blue
                .frame(width: 100, height: 100)
                .overlay(alignment: .center) {
                    Circle()
                        .frame(width: 50, height: 50)
                    Star(colors: [.red, .yellow])
                }
            
            Spacer()
                
        }
    }
}


struct Star: View {
    
    var colors: [Color]
    
    var body: some View {
        Image(systemName: "star.fill")
//            .foregroundColor(color)
            .foregroundStyle(.linearGradient(colors: colors, startPoint: .top, endPoint: .bottom))
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




