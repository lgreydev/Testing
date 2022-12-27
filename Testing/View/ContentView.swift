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
                .overlay(alignment: .topLeading) { Star(color: .red) }
                .overlay(alignment: .topTrailing) { Star(color: .yellow) }
                .overlay(alignment: .bottomLeading) { Star(color: .blue) }
                .overlay(alignment: .bottomTrailing) { Star(color: .green) }
                
        }
       
    }
}


struct Star: View {
    
    var color: Color //= .clear
    
    var body: some View {
        Image(systemName: "star.fill")
//            .foregroundColor(color)
            .foregroundStyle(color)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




