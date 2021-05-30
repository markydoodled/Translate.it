//
//  PositivityDetection.swift
//  Translate.it
//
//  Created by Mark Howard on 29/05/2021.
//

import SwiftUI
import CoreML
import NaturalLanguage

struct PositivityDetection: View {
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var positivityText = "Type Some Text..."
    var body: some View {
    if horizontalSizeClass == .compact {
        NavigationView {
            VStack {
                TextEditor(text: $positivityText)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .padding()
            }
            .navigationTitle("Positivity Detection")
        }
    } else {
        Text("Hello World")
    }
    }
}

struct PositivityDetection_Previews: PreviewProvider {
    static var previews: some View {
        PositivityDetection()
    }
}
