//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {

            // MARK shapes
            Rectangle()
                .fill(.gray)
                .frame(width: 200, height: 200)

            RoundedRectangle(cornerRadius: 25, style: .continuous)
                .fill(.red)
                .frame(width: 180, height: 180)

            Capsule()
                .fill(.green)
                .frame(width: 150, height: 80)

            Ellipse()
                .fill(.blue)
                .frame(width: 120, height: 70)

            Circle()
                .fill(.white)
                .frame(width: 80, height: 50)
        }

    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
