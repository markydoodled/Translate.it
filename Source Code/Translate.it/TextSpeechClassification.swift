//
//  TextSpeechClassification.swift
//  Translate.it
//
//  Created by Mark Howard on 02/06/2021.
//

import SwiftUI
import NaturalLanguage

struct TextSpeechClassification: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var text = "Type Some Text..."
    @State var speechResults = "Speech Classification Results"
    var body: some View {
        if horizontalSizeClass == .compact {
            ScrollView {
            VStack {
                TextEditor(text: $text)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .padding()
                    .frame(height: 150)
                Divider()
                GroupBox {
                    VStack {
                        ScrollView {
                        HStack {
                Text("\(speechResults)")
                    .font(.title3)
                    .foregroundColor(.white)
                            Spacer()
                        }
                    }
                Spacer()
                    }
                }
                .groupBoxStyle(BlueGroupBox())
                .padding()
                .frame(minHeight: 150, maxHeight: 350)
            }
                Spacer()
                GroupBox {
                    VStack {
                        Group {
                    HStack {
                        Spacer()
                        Text("Detectable Language Features")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                    }
                        Text("Nouns")
                        Text("Verbs")
                        Text("Adjectives")
                        Text("Adverbs")
                        Text("Pronouns")
                        Text("Determiner")
                        Text("Particle")
                        }
                        Group {
                        Text("Preposition")
                        Text("Number")
                        Text("Conjunction")
                        Text("Interjection")
                        Text("Classifier")
                        Text("Idiom")
                        Text("Other Words")
                        }
                }
                    .padding()
                }
                .padding()
                Spacer()
        }
            .navigationTitle("Speech Classification")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {let text = text
                        speechResults = ""
                            let tagger = NLTagger(tagSchemes: [.lexicalClass])
                            tagger.string = text
                            let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace]
                        tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lexicalClass, options: options) { tag, tokenRange in
                                if let tag = tag {
                                    speechResults += "\(text[tokenRange]) - \(tag.rawValue) \n"
                                    print("\(text[tokenRange]): \(tag.rawValue)")
                                }
                                return true
                            }
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
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {let pasteboard = UIPasteboard.general
                        pasteboard.string = speechResults
                    }) {
                        Image(systemName: "doc.on.doc")
                    }
                    .help("Copy Result")
                }
            }
        } else {
            ScrollView {
            HStack {
                TextEditor(text: $text)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .padding()
                    .frame(height: 150)
                GroupBox {
                    VStack {
                        ScrollView {
                        HStack {
                Text("\(speechResults)")
                    .font(.title3)
                    .foregroundColor(.white)
                            Spacer()
                        }
                    }
                Spacer()
                    }
                }
                .groupBoxStyle(BlueGroupBox())
                .padding()
                .frame(minHeight: 150, maxHeight: 350)
            }
                Spacer()
                GroupBox {
                    VStack {
                        Group {
                    HStack {
                        Spacer()
                        Text("Detectable Language Features")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                    }
                        Text("Nouns")
                        Text("Verbs")
                        Text("Adjectives")
                        Text("Adverbs")
                        Text("Pronouns")
                        Text("Determiner")
                        Text("Particle")
                        }
                        Group {
                        Text("Preposition")
                        Text("Number")
                        Text("Conjunction")
                        Text("Interjection")
                        Text("Classifier")
                        Text("Idiom")
                        Text("Other Words")
                        }
                }
                    .padding()
                }
                .padding()
                Spacer()
        }
            .navigationTitle("Speech Classification")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {let text = text
                        speechResults = ""
                            let tagger = NLTagger(tagSchemes: [.lexicalClass])
                            tagger.string = text
                            let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace]
                        tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lexicalClass, options: options) { tag, tokenRange in
                                if let tag = tag {
                                    speechResults += "\(text[tokenRange]) - \(tag.rawValue) \n"
                                    print("\(text[tokenRange]): \(tag.rawValue)")
                                }
                                return true
                            }
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
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {let pasteboard = UIPasteboard.general
                        pasteboard.string = speechResults
                    }) {
                        Image(systemName: "doc.on.doc")
                    }
                    .help("Copy Result")
                }
            }
        }
    }
}

struct TextSpeechClassification_Previews: PreviewProvider {
    static var previews: some View {
        TextSpeechClassification()
    }
}
