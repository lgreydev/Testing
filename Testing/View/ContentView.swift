//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI

struct ContentView: View {
    @State var isPlaying: Bool = false

    var body: some View {
        PlayButton(isPlaying: $isPlaying)
    }
}


struct CustomButton<Label>: View where Label: View {
    let action: () -> Void
    let label: () -> Label

    @State private var isHighlighted = false
}

/*
 var body: some View {
     Button(isPlaying ? "Pause" : "Play") {
         isPlaying.toggle()
     }
 }
 */

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




