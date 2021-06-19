//
//  PositivityDetection.swift
//  Translate.it
//
//  Created by Mark Howard on 13/06/2021.
//

import SwiftUI
import CoreML
import NaturalLanguage

struct PositivityDetection: View {
    @State var positivityText = "Type Some Text..."
    @State var detectedPositivity = "None"
    var body: some View {
        ScrollView {
        VStack {
            CustomizableTextEditor(text: $positivityText)
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
            Spacer()
            GroupBox {
                VStack {
                HStack {
                    Spacer()
                    Text("Detectable Moods")
                        .bold()
                        .font(.title3)
                        .padding()
                    Spacer()
                }
                    Text("Positive")
                    Text("Negative")
                    Text("Neutral")
            }
                .padding()
            }
            .padding()
            Spacer()
    }
        .navigationTitle("Positivity Detection")
        .toolbar {
            ToolbarItem(placement: .primaryAction) {
                Button(action: {analysePositivity()}) {
                    Image(systemName: "play.fill")
                }
                .help("Start Detection")
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
