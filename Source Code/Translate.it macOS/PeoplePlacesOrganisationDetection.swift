//
//  PeoplePlacesOrganisationDetection.swift
//  Translate.it
//
//  Created by Mark Howard on 13/06/2021.
//

import SwiftUI
import NaturalLanguage

struct PeoplePlacesOrganisationDetection: View {
    @State var text = "Type Some Text..."
    @State var peoplePlacesOrganResults = "People, Places And Organistaion Detection Results"
    var body: some View {
        ScrollView {
        HStack {
            CustomizableTextEditor(text: $text)
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
            .frame(minHeight: 0, maxHeight: 350)
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
            ToolbarItem(placement: .status) {
                Button(action: {
                    let paste = NSPasteboard.general
                    paste.clearContents()
                    paste.setString(peoplePlacesOrganResults, forType: .string)
                }) {
                    Image(systemName: "doc.on.doc")
                }
                .help("Copy Results")
            }
            ToolbarItem(placement: .primaryAction) {
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
        }
    }
}

struct PeoplePlacesOrganisationDetection_Previews: PreviewProvider {
    static var previews: some View {
        PeoplePlacesOrganisationDetection()
    }
}
