//
//  PeoplePlacesOrganisationDetection.swift
//  Translate.it
//
//  Created by Mark Howard on 31/05/2021.
//

import SwiftUI
import NaturalLanguage

struct PeoplePlacesOrganisationDetection: View {
    init() {
        UITextView.appearance().backgroundColor = .clear
    }
    @State var text = "Type Some Text..."
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var peoplePlacesOrganResults = "People, Places And Organistaion Detection Results"
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
                    Text("\(peoplePlacesOrganResults)")
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
                .navigationTitle("People, Places And Organisation Detection")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {let text = text
                                
                                let tagger = NLTagger(tagSchemes: [.nameType])
                                tagger.string = text

                                let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames]
                                let tags: [NLTag] = [.personalName, .placeName, .organizationName]

                                tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .nameType, options: options) { tag, tokenRange in
                                    // Get the most likely tag, and print it if it's a named entity.
                                    if let tag = tag, tags.contains(tag) {
                                        print("\(text[tokenRange]): \(tag.rawValue)")
                                    }
                                        
                                    // Get multiple possible tags with their associated confidence scores.
                                    let (hypotheses, _) = tagger.tagHypotheses(at: tokenRange.lowerBound, unit: .word, scheme: .nameType, maximumCount: 100)
                                    //let hype2 = hypotheses * 100
                                    print(hypotheses)
                                        
                                   return true
                                }}) {
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

struct PeoplePlacesOrganisationDetection_Previews: PreviewProvider {
    static var previews: some View {
        PeoplePlacesOrganisationDetection()
    }
}
