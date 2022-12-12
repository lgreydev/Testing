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
                isPresentingAlert = false
            } label: {
                Text("Present an Alert")
                    .font(.title)
            }
            .alert(isPresented: $isPresentingAlert) {
                CustomAlertView(text: "1", isBeingPresented: $isPresentingAlert)
            }
        }
    }
}

// CustomAlertView

//MARK: Child View
struct CustomAlertView: View {
    let text: Text

    @Binding var isBeingPresented: Bool


    var body: some View {
        VStack {
            Alert(title: Text(isBeingPresented ? "true" : "false"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




