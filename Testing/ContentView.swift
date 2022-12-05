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
//            Icon(name: "camera.macro.circle.fill")
            DecorativeImage(name: "apple")
        }

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

struct DecorativeImage: View {
    var name: String

    var body: some View {
        GeometryReader { proxy in
            Image(name)
                .resizable()
                .scaledToFit()
    //            .scaledToFill()
    //            .aspectRatio(contentMode: .fit)
    //            .frame(maxWidth: 100)
                .frame(width: proxy.size.width * 0.5)
                .frame(width: proxy.size.width, height: proxy.size.height)
    //            .clipped()
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
