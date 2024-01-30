//
//  ProgressView.swift
//  SwiftScromdinger
//
//  Created by racoon on 2024/01/30.
//

import SwiftUI

struct ProgressBarView: View {
    @State private var prograssBarValue: Double = 0
    
    var body: some View {
        VStack {
            ProgressView(value: prograssBarValue, total: 15)
            HStack {
                VStack(alignment: .leading) {
                    Text("Seconds Elapsed")
                        .font(.caption)
                    Label("300", systemImage: "hourglass.tophalf.fill")
                }
                Spacer()
                VStack(alignment: .trailing) {
                    Text("Seconds Remaining")
                        .font(.caption)
                    Label("600", systemImage: "hourglass.bottomhalf.fill")
                }
            }
            .accessibilityElement(children: .ignore)
            .accessibilityLabel("Time remaining")
            .accessibilityValue("10 minutes")
            
            Circle()
                .strokeBorder(lineWidth: 24)
            HStack {
                Text("Speaker 1 of 3")
                Spacer()
                Button(action: {
                    if prograssBarValue <= 15 {
                        prograssBarValue = prograssBarValue + 5
                    } else {
                        prograssBarValue = 0
                    }
                }) {
                    Image(systemName: "forward.fill")
                }
                .accessibilityLabel("Next speaker")
            }
        }.padding()
    }
}

struct ProgressBarView_Previews: PreviewProvider {
    static var previews: some View {
        ProgressBarView()
    }
}
