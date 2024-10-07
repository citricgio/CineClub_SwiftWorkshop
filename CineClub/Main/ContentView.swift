//
//  ContentView.swift
//  CineClub
//
//  Created by Giovanna Micher on 02/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            HomeView()
        }
        .tint(.white)
    }
}

#Preview {
    ContentView()
}
