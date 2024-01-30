//
//  ContentView.swift
//  SwiftScromdinger
//
//  Created by racoon on 2024/01/30.
//

import CoreData
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Hello, world!")
            ProgressBarView()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
