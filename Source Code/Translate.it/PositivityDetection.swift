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
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var positivityText = "Type Some Text..."
    @State var detectedPositivity = "None"
    var body: some View {
    if horizontalSizeClass == .compact {
        ScrollView {
            VStack {
                TextEditor(text: $positivityText)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .frame(height: 150)
                    .padding()
                HStack {
                    Spacer()
                Text("The Detected Positivity Is: \(detectedPositivity)")
                    .foregroundColor(.white)
                .padding()
                .background(Rectangle().foregroundColor(.accentColor).cornerRadius(25))
                    Spacer()
                }
                .padding()
            }
    }
            .navigationTitle("Positivity Detection")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {analysePositivity()}) {
                        Image(systemName: "play.fill")
                    }
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {hideKeyboard()}) {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                }
            }
    } else {
        ScrollView {
        VStack {
            TextEditor(text: $positivityText)
                .foregroundColor(.white)
                .background(Color.secondary)
                .cornerRadius(10)
                .frame(height: 150)
                .padding()
            HStack {
                Spacer()
            Text("The Detected Positivity Is: \(detectedPositivity)")
                .foregroundColor(.white)
            .padding()
            .background(Rectangle().foregroundColor(.accentColor).cornerRadius(25))
                Spacer()
            }
            .padding()
        }
    }
        .navigationTitle("Positivity Detection")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {analysePositivity()}) {
                    Image(systemName: "play.fill")
                }
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {hideKeyboard()}) {
                    Image(systemName: "keyboard.chevron.compact.down")
                }
            }
        }
    }
    }
    func analysePositivity() {
        let model = try! PositivityDetection_1(configuration: MLModelConfiguration()).model
            let positivityPredictor = try! NLModel(mlModel: model)
            positivityPredictor.predictedLabel(for: positivityText)
        detectedPositivity = positivityPredictor.predictedLabel(for: positivityText)!
    }
}

struct PositivityDetection_Previews: PreviewProvider {
    static var previews: some View {
        PositivityDetection()
    }
}
