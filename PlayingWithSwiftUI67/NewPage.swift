//
//  NewPage.swift
//  PlayingWithSwiftUI67
//
//  Created by Ricky Suprayudi on 07/05/24.
//

import SwiftUI

struct NewPage: View {
    var body: some View {
        Text("New Page using another file")
            .padding()
        NavigationLink {
            SettingPage()
        } label: {
            Text("Go to setting page")
                .padding()
                .foregroundColor(.blue)
        }
        .navigationTitle("New Page")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

#Preview {
    NewPage()
}
