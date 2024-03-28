//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by MaćKo on 28/03/2024.
//

import SwiftUI

struct ProminentTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundStyle(.blue)
    }
}

extension View {
    func prominentTitleStyle() -> some View {
        modifier(ProminentTitle())
    }
}

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
                .prominentTitleStyle()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
