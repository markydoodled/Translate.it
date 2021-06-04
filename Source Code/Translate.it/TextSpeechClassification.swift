//
//  TextSpeechClassification.swift
//  Translate.it
//
//  Created by Mark Howard on 02/06/2021.
//

import SwiftUI
import NaturalLanguage

struct TextSpeechClassification: View {
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var text = "Type Some Text..."
    @State var speechResults = "Speech Classification Results"
    var body: some View {
        if horizontalSizeClass == .compact {
            VStack {
                TextEditor(text: $text)
                    .foregroundColor(.white)
                    .background(Color.secondary)
                    .cornerRadius(10)
                    .padding()
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
            }
            .navigationTitle("Speech Classification")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {let text = text
                            let tagger = NLTagger(tagSchemes: [.lexicalClass])
                            tagger.string = text
                            let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace]
                        tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .lexicalClass, options: options) { tag, tokenRange in
                                if let tag = tag {
                                    print("\(text[tokenRange]): \(tag.rawValue)")
                                }
                                return true
                            }
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
        } else {
            Text("Hello World")
        }
    }
}

struct TextSpeechClassification_Previews: PreviewProvider {
    static var previews: some View {
        TextSpeechClassification()
    }
}
