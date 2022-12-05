//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            Icon(name: "camera.macro.circle.fill")
    }
}

struct Icon: View {
    var name: String
    var tintColor: Color = .blue

    var body: some View {
        Image(systemName: name)
            .foregroundColor(tintColor)
            .frame(width: 100, height: 100)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
