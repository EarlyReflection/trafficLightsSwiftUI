//
//  TrafficLigtsView.swift
//  trafficLightsSwiftUI
//
//  Created by Vladimir Dvornikov on 22.02.2023.
//

import SwiftUI

struct TrafficLigtsView: View {
    @State private var colorOne: Color = .black
    @State private var colorTwo: Color = .black
    @State private var colorThree: Color = .black
    @State private var buttonTitle = "START"
    
    private func nextColor() {
        if colorOne == .red {
            colorOne = .black
            colorTwo = .yellow
        } else if colorTwo == .yellow {
            colorTwo = .black
            colorThree = .green
        } else {
            colorOne = .red
            colorThree = .black
        }
    }
    
    var body: some View {
        VStack {
            RoundView(color: colorOne)
            RoundView(color: colorTwo)
            RoundView(color: colorThree)
            Spacer()
            Button(action: {
                if buttonTitle != "NEXT" {
                    buttonTitle = "NEXT"
                }
                nextColor()
            }) {
                Text(buttonTitle)
                    .font(.largeTitle)
                    .shadow(radius: 10)
            }
        }
        .padding()
        .padding(.top)
    }
}

struct TrafficLigtsView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLigtsView()
    }
}
