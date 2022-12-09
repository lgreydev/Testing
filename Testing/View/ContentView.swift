//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI

struct ContentView: View {
    @State var isOn: Bool = false

    var body: some View {
        VStack(spacing: 10) {
            Text(isOn ? "On" : "Off")
                .font(.title)
            Button(isOn ? "Test Button On" : "Test Button Off") {
                isOn.toggle()
            }

            CustomButton(isOn: $isOn)
        }
    }
}


struct CustomButton: View {
    @Binding var isOn: Bool

    var body: some View {
        Button(isOn ? "Custom Button On" : "Custom Button Off") {
            isOn.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




