//
//  PlayButton.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-08.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(isPlaying ? "Pause" : "Play") {
            isPlaying.toggle()
        }
    }
}

struct PlayButton_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
