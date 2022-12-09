//
//  ContentView.swift
//  Testing
//
//  Created by Sergey Lukaschuk on 2022-12-01.
//

import SwiftUI

// MARK: Parent View
struct ContentView: View {
    @State private var isPresentingAlert = false

    var body: some View {
        VStack(spacing: 10) {
            Button {
                isPresentingAlert = true
            } label: {
                Text("Present an Alert")
                    .font(.title)
            }
            .alert(isPresented: $isPresentingAlert) {
                Alert(title: Text("Alert!"))
            }
        }
    }
}


//MARK: Child View
struct CustomButton: View {
//    @State var isOn: Bool
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




