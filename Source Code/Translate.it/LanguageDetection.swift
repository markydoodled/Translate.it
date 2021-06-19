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
                    Spacer()
                    GroupBox {
                        VStack {
                            Group {
                        HStack {
                            Spacer()
                            Text("Detectable Languages")
                                .bold()
                                .font(.title3)
                                .padding()
                            Spacer()
                        }
                            Text("Amharic")
                            Text("Arabic")
                            Text("Armenian")
                            Text("Bengali")
                            Text("Bulgarian")
                            Text("Burmese")
                            Text("Catalan")
                            Text("Cherokee")
                            Text("Croatian")
                            }
                            Group {
                            Text("Czech")
                            Text("Danish")
                            Text("Dutch")
                                Text("English")
                                Text("Finnish")
                                Text("French")
                                Text("Georgian")
                                Text("German")
                                Text("Greek")
                                Text("Gujarati")
                            }
                                Group {
                                Text("Hebrew")
                                    Text("Hindi")
                                    Text("Hungarian")
                                    Text("Icelandic")
                                    Text("Indonesian")
                                    Text("Italian")
                                    Text("Japanese")
                                    Text("Kannada")
                                    Text("Khmer")
                                    Text("Korean")
                                }
                            Group {
                                    Text("Lao")
                                Text("Malay")
                                Text("Malayalam")
                                Text("Marathi")
                                Text("Mongolian")
                                Text("Norwegian")
                                Text("Oriya")
                                Text("Persian")
                                Text("Polish")
                                Text("Portuguese")
                            }
                            Group {
                                Text("Punjabi")
                                Text("Romanian")
                                Text("Russian")
                                Text("Simplified Chinese")
                                Text("Sinhalese")
                                Text("Slovak")
                                Text("Spanish")
                                Text("Swedish")
                                Text("Tamil")
                                Text("Telugu")
                            }
                            Group {
                                Text("Thai")
                                Text("Tibetan")
                                Text("Traditional Chinese")
                                Text("Turkish")
                                Text("Ukrainian")
                                Text("Urdu")
                                Text("Vietnamese")
                            }
                    }
                        .padding()
                    }
                    .padding()
                    Spacer()
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
                        .help("Start Detection")
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {hideKeyboard()}) {
                            Image(systemName: "keyboard.chevron.compact.down")
                        }
                        .help("Hide Keyboard")
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
            Spacer()
            GroupBox {
                VStack {
                    Group {
                HStack {
                    Spacer()
                    Text("Detectable Languages")
                        .bold()
                        .font(.title3)
                        .padding()
                    Spacer()
                }
                    Text("Amharic")
                    Text("Arabic")
                    Text("Armenian")
                    Text("Bengali")
                    Text("Bulgarian")
                    Text("Burmese")
                    Text("Catalan")
                    Text("Cherokee")
                    Text("Croatian")
                    }
                    Group {
                    Text("Czech")
                    Text("Danish")
                    Text("Dutch")
                        Text("English")
                        Text("Finnish")
                        Text("French")
                        Text("Georgian")
                        Text("German")
                        Text("Greek")
                        Text("Gujarati")
                    }
                        Group {
                        Text("Hebrew")
                            Text("Hindi")
                            Text("Hungarian")
                            Text("Icelandic")
                            Text("Indonesian")
                            Text("Italian")
                            Text("Japanese")
                            Text("Kannada")
                            Text("Khmer")
                            Text("Korean")
                        }
                    Group {
                            Text("Lao")
                        Text("Malay")
                        Text("Malayalam")
                        Text("Marathi")
                        Text("Mongolian")
                        Text("Norwegian")
                        Text("Oriya")
                        Text("Persian")
                        Text("Polish")
                        Text("Portuguese")
                    }
                    Group {
                        Text("Punjabi")
                        Text("Romanian")
                        Text("Russian")
                        Text("Simplified Chinese")
                        Text("Sinhalese")
                        Text("Slovak")
                        Text("Spanish")
                        Text("Swedish")
                        Text("Tamil")
                        Text("Telugu")
                    }
                    Group {
                        Text("Thai")
                        Text("Tibetan")
                        Text("Traditional Chinese")
                        Text("Turkish")
                        Text("Ukrainian")
                        Text("Urdu")
                        Text("Vietnamese")
                    }
            }
                .padding()
            }
            .padding()
            Spacer()
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
                .help("Start Detection")
            }
            ToolbarItem(placement: .navigationBarLeading) {
                Button(action: {hideKeyboard()}) {
                    Image(systemName: "keyboard.chevron.compact.down")
                }
                .help("Hide Keyboard")
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
