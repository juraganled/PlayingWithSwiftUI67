//
//  ContentView.swift
//  PlayingWithSwiftUI67
//
//  Created by Ricky Suprayudi on 07/05/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var present: Bool = false
    @State var presentSetting: Bool = false
    
    var body: some View {
        NavigationStack {
            TabView {
                VStack {
                    Text("Hello, world!")
                        .padding()
                    
                    NavigationLink {
                        NewPage()
                    } label: {
                        VStack{
                            Image("Maxwell")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 60)
                            Text("continue to next page")
                        }
                        .padding()
                        .border(.blue)
                    }
                    
                    Button(action: {
                        present = true
                    }, label: {
                        ZStack {
                            Text("Go To Black")
                                .padding()
                                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 100)
                                .background(.black)
                            Path { path in
                                path.addArc(center: CGPoint(x: 200, y: 200), radius: 100, startAngle: .degrees(-45), endAngle: .degrees(225), clockwise: false)
                                
                            }
                            .stroke(Color.blue, lineWidth: 2)
                            .scaleEffect(CGSize(width: 1.0, height: 0.5))
                            
                        }
                    })
                    .sheet(isPresented: $present, content: {
                        BlackDestination()
                    })
                    
                }
                    .tabItem {
                        Label("Navigation", systemImage: "globe")
                    }
                
                GaugeView()
                    .tabItem {
                        Label("Gauge", systemImage: "gauge.with.needle")
                    }
                    .padding()

            }
            .navigationTitle("Main Page")
        }
    }
}

#Preview {
    ContentView()
}
