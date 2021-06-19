//
//  PeoplePlacesOrganisationDetection.swift
//  Translate.it
//
//  Created by Mark Howard on 31/05/2021.
//

import SwiftUI
import NaturalLanguage

struct PeoplePlacesOrganisationDetection: View {
    @State var text = "Type Some Text..."
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var peoplePlacesOrganResults = "People, Places And Organistaion Detection Results"
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
                    .frame(minHeight: 150, maxHeight: 350)
                }
                Spacer()
                GroupBox {
                    VStack {
                        HStack {
                        Spacer()
                        Text("Detectable Language Features")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                    }
                        Text("People's Names")
                        Text("Place Names")
                        Text("Name Of An Organization")
                        }
                    .padding()
                }
                .padding()
                Spacer()
        }
                .navigationTitle("People, Places And Organisation Detection")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {let text = text
                                peoplePlacesOrganResults = ""
                                let tagger = NLTagger(tagSchemes: [.nameType])
                                tagger.string = text

                                let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames, .joinContractions]
                                let tags: [NLTag] = [.personalName, .placeName, .organizationName]

                                tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .nameType, options: options) { tag, tokenRange in
                                    if let tag = tag, tags.contains(tag) {
                                        print("\(text[tokenRange]): \(tag.rawValue)")
                                    }
                                        
                                    let (hypotheses, _) = tagger.tagHypotheses(at: tokenRange.lowerBound, unit: .word, scheme: .nameType, maximumCount: 100)
                                    print(hypotheses)
                                    peoplePlacesOrganResults += "\(text[tokenRange]) - \(tag!.rawValue) \n"
                                        
                                   return true
                                }}) {
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
                            pasteboard.string = peoplePlacesOrganResults
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
                .frame(minHeight: 150, maxHeight: 350)
            }
                Spacer()
                GroupBox {
                    VStack {
                    HStack {
                        Spacer()
                        Text("Detectable Language Features")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                    }
                        Text("People's Names")
                        Text("Place Names")
                        Text("Name Of An Organization")
                        }
                    .padding()
                }
                .padding()
                Spacer()
        }
            .navigationTitle("People, Places And Organisation Detection")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {let text = text
                            peoplePlacesOrganResults = ""
                            let tagger = NLTagger(tagSchemes: [.nameType])
                            tagger.string = text

                            let options: NLTagger.Options = [.omitPunctuation, .omitWhitespace, .joinNames, .joinContractions]
                            let tags: [NLTag] = [.personalName, .placeName, .organizationName]

                            tagger.enumerateTags(in: text.startIndex..<text.endIndex, unit: .word, scheme: .nameType, options: options) { tag, tokenRange in
                                if let tag = tag, tags.contains(tag) {
                                    print("\(text[tokenRange]): \(tag.rawValue)")
                                }
                                    
                                let (hypotheses, _) = tagger.tagHypotheses(at: tokenRange.lowerBound, unit: .word, scheme: .nameType, maximumCount: 100)
                                print(hypotheses)
                                peoplePlacesOrganResults += "\(text[tokenRange]) - \(tag!.rawValue) \n"
                                    
                               return true
                            }}) {
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
                        pasteboard.string = peoplePlacesOrganResults
                    }) {
                        Image(systemName: "doc.on.doc")
                    }
                    .help("Copy Result")
                }
            }
        }
    }
}

struct PeoplePlacesOrganisationDetection_Previews: PreviewProvider {
    static var previews: some View {
        PeoplePlacesOrganisationDetection()
    }
}
