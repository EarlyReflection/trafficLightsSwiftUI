//
//  RoundView.swift
//  trafficLightsSwiftUI
//
//  Created by Vladimir Dvornikov on 23.02.2023.
//

import SwiftUI

struct RoundView: View {
    let color: Color
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 150, height: 150)
            .overlay(Circle().stroke(.white, lineWidth: 3))
            .shadow(radius: 10)
    }
}

struct RoundView_Previews: PreviewProvider {
    static var previews: some View {
        RoundView(color: .black)
    }
}
