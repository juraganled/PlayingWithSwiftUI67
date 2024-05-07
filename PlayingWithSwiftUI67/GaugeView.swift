//
//  GaugeView.swift
//  PlayingWithSwiftUI67
//
//  Created by Ricky Suprayudi on 07/05/24.
//

import SwiftUI

struct GaugeView: View {
    @State var speed: Double = 0.0
    var body: some View {
        VStack{
            Slider(value: $speed, in: 0...250) {
                
                Text("Speed")
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("250")
            }
            
            Gauge(value: speed, in: 0...250) {
                
                Text("Speed")
            } currentValueLabel: {
                Text(Int(speed), format: .number)
            } minimumValueLabel: {
                Text("0")
            } maximumValueLabel: {
                Text("250")
            }
        }
    }
}

#Preview {
    GaugeView()
}
