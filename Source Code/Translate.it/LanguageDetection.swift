//
//  LanguageDetection.swift
//  Translate.it
//
//  Created by Mark Howard on 04/06/2021.
//

import SwiftUI
import NaturalLanguage

struct LanguageDetection: View {
    @State var languageDetectionText = "Type Some Text..."
    @State var detectedLanguages = "None"
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        if horizontalSizeClass == .compact {
            NavigationView {
                ScrollView {
                VStack {
                    TextEditor(text: $languageDetectionText)
                        .foregroundColor(.white)
                        .background(Color.secondary)
                        .cornerRadius(10)
                        .padding()
                        .frame(height: 150)
                    HStack {
                        Spacer()
                    Text("The Detected Language Is: \(detectedLanguages)")
                        .foregroundColor(.white)
                    .padding()
                    .background(Rectangle().foregroundColor(.accentColor).cornerRadius(25))
                        Spacer()
                    }
                    .padding()
                }
            }
                .navigationTitle("Language Detection")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {let recognizer = NLLanguageRecognizer()
                            recognizer.processString(languageDetectionText)
                        let languageCode = recognizer.dominantLanguage?.rawValue
                        let detectedLanguage = Locale.current.localizedString(forIdentifier: languageCode ?? "None")
                        detectedLanguages = detectedLanguage ?? "None"
                    }) {
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
        } else {
        ScrollView {
        VStack {
            TextEditor(text: $languageDetectionText)
                .foregroundColor(.white)
                .background(Color.secondary)
                .cornerRadius(10)
                .frame(height: 150)
                .padding()
            HStack {
                Spacer()
                Text("The Detected Language Is: \(detectedLanguages)")
                .foregroundColor(.white)
            .padding()
            .background(Rectangle().foregroundColor(.accentColor).cornerRadius(25))
                Spacer()
            }
            .padding()
        }
        }
        .navigationTitle("Language Detection")
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: {let recognizer = NLLanguageRecognizer()
                    recognizer.processString(languageDetectionText)
                let languageCode = recognizer.dominantLanguage?.rawValue
                let detectedLanguage = Locale.current.localizedString(forIdentifier: languageCode ?? "None")
                    detectedLanguages = detectedLanguage ?? "None"
            }) {
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
}

struct LanguageDetection_Previews: PreviewProvider {
    static var previews: some View {
        LanguageDetection()
    }
}
