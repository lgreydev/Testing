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
//            Icon(name: "")
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
            .frame(width: 30, height: 30)
    }
}

struct DecorativeImage: View {
    var name: String

    var body: some View {
            Image(name)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200)
    }
}

/*

 struct CategoryGrid: View {
     var categories: [Category]

     var body: some View {
         LazyVGrid(columns: columns) {
             ForEach(categories) { category in
                 Text(category.name)
                     .padding()
                     .background(category.color)
                     .foregroundColor(.white)
                     .cornerRadius(10)
             }
         }
         .padding()
     }

     private var columns: [GridItem] {
         let item = GridItem(.flexible(minimum: 50, maximum: .infinity))
         return [item, item]
     }
 }
*/


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
