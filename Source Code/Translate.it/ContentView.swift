//
//  ContentView.swift
//  Translate.it
//
//  Created by Mark Howard on 23/05/2021.
//

import SwiftUI
import CoreML
import NaturalLanguage
import MLKitTranslate

struct ContentView: View {
    init() {
            UITextView.appearance().backgroundColor = .clear
        }
    @State var tabSelection = 1
    @State var showingSettings = false
    @State var languageDetectionText = "Type Some Text..."
    @State var languageTranslationText = "Type Some Text..."
    @State var detectedLanguages = "None"
    @State var translationResults = "Language Translation"
    @AppStorage("languageTranslationPicker1") var languageTranslationPicker1 = 60
    @AppStorage("languageTranslationPicker2") var languageTranslationPicker2 = 60
    @AppStorage("languageTranslation1") var languageTranslation1 = "None"
    @AppStorage("languageTranslation2") var languageTranslation2 = "None"
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        if horizontalSizeClass == .compact {
        TabView(selection: $tabSelection) {
            NavigationView {
                VStack {
                    GroupBox {
                    HStack {
                        Picker(selection: $languageTranslationPicker1, label: Text("Language 1 - \(languageTranslation1)")) {
                            Group {
                                Text("Afrikaans").tag(1)
                                Text("Arabic").tag(2)
                                Text("Belarusian").tag(3)
                                Text("Bulgarian").tag(4)
                                Text("Bengali").tag(5)
                                Text("Catalan").tag(6)
                                Text("Czech").tag(7)
                                Text("Welsh").tag(8)
                                Text("Danish").tag(9)
                                Text("German").tag(10)
                        }
                            Group {
                                Text("Greek").tag(11)
                                Text("English").tag(12)
                                Text("Esperanto").tag(13)
                                Text("Spanish").tag(14)
                                Text("Estonian").tag(15)
                                Text("Persian").tag(16)
                                Text("Finnish").tag(17)
                                Text("French").tag(18)
                                Text("Irish").tag(19)
                                Text("Galician").tag(20)
                            }
                            Group {
                                Text("Gujarati").tag(21)
                                Text("Hebrew").tag(22)
                                Text("Hindi").tag(23)
                                Text("Croatian").tag(24)
                                Text("Haitian").tag(25)
                                Text("Hungarian").tag(26)
                                Text("Indonesian").tag(27)
                                Text("Icelandic").tag(28)
                                Text("Italian").tag(29)
                                Text("Japanese").tag(30)
                            }
                            Group {
                                Text("Georgian").tag(31)
                                Text("Kannada").tag(32)
                                Text("Korean").tag(33)
                                Text("Lithuanian").tag(34)
                                Text("Latvian").tag(35)
                                Text("Macedonian").tag(36)
                                Text("Marathi").tag(37)
                                Text("Malay").tag(38)
                                Text("Maltese").tag(39)
                                Text("Dutch").tag(40)
                            }
                            Group {
                                Text("Norwegian").tag(41)
                                Text("Polish").tag(42)
                                Text("Portuguese").tag(43)
                                Text("Romanian").tag(44)
                                Text("Russian").tag(45)
                                Text("Slovak").tag(46)
                                Text("Slovenian").tag(47)
                                Text("Albanian").tag(48)
                                Text("Swedish").tag(49)
                                Text("Swahili").tag(50)
                            }
                            Group {
                                Text("Tamil").tag(51)
                                Text("Telugu").tag(52)
                                Text("Thai").tag(53)
                                Text("Tagalog").tag(54)
                                Text("Turkish").tag(55)
                                Text("Ukrainian").tag(56)
                                Text("Urdu").tag(57)
                                Text("Vietnamese").tag(58)
                                Text("Chinese").tag(59)
                                Text("None").tag(60)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        Spacer()
                        Picker(selection: $languageTranslationPicker2, label: Text("Language 2 - \(languageTranslation2)")) {
                            Group {
                                Text("Afrikaans").tag(1)
                                Text("Arabic").tag(2)
                                Text("Belarusian").tag(3)
                                Text("Bulgarian").tag(4)
                                Text("Bengali").tag(5)
                                Text("Catalan").tag(6)
                                Text("Czech").tag(7)
                                Text("Welsh").tag(8)
                                Text("Danish").tag(9)
                                Text("German").tag(10)
                        }
                            Group {
                                Text("Greek").tag(11)
                                Text("English").tag(12)
                                Text("Esperanto").tag(13)
                                Text("Spanish").tag(14)
                                Text("Estonian").tag(15)
                                Text("Persian").tag(16)
                                Text("Finnish").tag(17)
                                Text("French").tag(18)
                                Text("Irish").tag(19)
                                Text("Galician").tag(20)
                            }
                            Group {
                                Text("Gujarati").tag(21)
                                Text("Hebrew").tag(22)
                                Text("Hindi").tag(23)
                                Text("Croatian").tag(24)
                                Text("Haitian").tag(25)
                                Text("Hungarian").tag(26)
                                Text("Indonesian").tag(27)
                                Text("Icelandic").tag(28)
                                Text("Italian").tag(29)
                                Text("Japanese").tag(30)
                            }
                            Group {
                                Text("Georgian").tag(31)
                                Text("Kannada").tag(32)
                                Text("Korean").tag(33)
                                Text("Lithuanian").tag(34)
                                Text("Latvian").tag(35)
                                Text("Macedonian").tag(36)
                                Text("Marathi").tag(37)
                                Text("Malay").tag(38)
                                Text("Maltese").tag(39)
                                Text("Dutch").tag(40)
                            }
                            Group {
                                Text("Norwegian").tag(41)
                                Text("Polish").tag(42)
                                Text("Portuguese").tag(43)
                                Text("Romanian").tag(44)
                                Text("Russian").tag(45)
                                Text("Slovak").tag(46)
                                Text("Slovenian").tag(47)
                                Text("Albanian").tag(48)
                                Text("Swedish").tag(49)
                                Text("Swahili").tag(50)
                            }
                            Group {
                                Text("Tamil").tag(51)
                                Text("Telugu").tag(52)
                                Text("Thai").tag(53)
                                Text("Tagalog").tag(54)
                                Text("Turkish").tag(55)
                                Text("Ukrainian").tag(56)
                                Text("Urdu").tag(57)
                                Text("Vietnamese").tag(58)
                                Text("Chinese").tag(59)
                                Text("None").tag(60)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                    }
                }
                    .padding()
                    TextEditor(text: $languageTranslationText)
                        .foregroundColor(.white)
                        .background(Color.secondary)
                        .cornerRadius(10)
                    .padding()
                    Divider()
                    GroupBox {
                        VStack {
                            HStack {
                    Text("\(translationResults)")
                        .font(.title3)
                        .foregroundColor(.white)
                                Spacer()
                            }
                    Spacer()
                        }
                    }
                    .groupBoxStyle(BlueGroupBox())
                    .padding()
                }
                .navigationTitle("Translation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {}) {
                            Image(systemName: "play.fill")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {hideKeyboard()}) {
                            Image(systemName: "keyboard.chevron.compact.down")
                        }
                    }
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {}) {
                            Image(systemName: "square.and.arrow.down")
                        }
                    }
                }
        }
            .onAppear {
                if languageTranslationPicker1 == 1 {
                    languageTranslation1 = "Afrikaans"
                } else if languageTranslationPicker1 == 2 {
                    languageTranslation1 = "Arabic"
                } else if languageTranslationPicker1 == 3 {
                    languageTranslation1 = "Belarusian"
                } else if languageTranslationPicker1 == 4 {
                    languageTranslation1 = "Bulgarian"
                } else if languageTranslationPicker1 == 5 {
                    languageTranslation1 = "Bengali"
                } else if languageTranslationPicker1 == 6 {
                    languageTranslation1 = "Catalan"
                } else if languageTranslationPicker1 == 7 {
                    languageTranslation1 = "Czech"
                }
            }
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.3.offgrid.bubble.left")
                        Text("Translation")
                    }
                }
            NavigationView {
                VStack {
                    TextEditor(text: $languageDetectionText)
                        .foregroundColor(.white)
                        .background(Color.secondary)
                        .cornerRadius(10)
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
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Detection")
                    }
                }
            NavigationView {
                HStack {
                    NavigationLink(destination: PositivityDetection()) {
                        VStack {
                            Image(systemName: "person.fill.checkmark")
                                .padding()
                            Text("Positivity Detection")
                        }
                    }
                }
                .padding()
                .navigationTitle("More")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.showingSettings = true}) {
                            Image(systemName: "gearshape")
                        }
                        .sheet(isPresented: $showingSettings) {
                            NavigationView {
                                Form {
                                    Section(header: Label("Misc.", systemImage: "ellipsis.circle")) {
                                        HStack {
                                           Text("Version")
                                            Spacer()
                                            Text("1.0")
                                        }
                                        HStack {
                                            Text("Build")
                                            Spacer()
                                            Text("1")
                                        }
                                    }
                                }
                                .navigationTitle("Settings")
                                .toolbar {
                                    ToolbarItem(placement: .navigationBarTrailing) {
                                        Button(action: {self.showingSettings = false}) {
                                            Text("Done")
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
        }
                .tag(3)
                .tabItem {
                    VStack {
                        Image(systemName: "ellipsis.circle")
                        Text("More")
                    }
                }
        }
        } else {
            Text("Test")
        }
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct BlueGroupBox: GroupBoxStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.content
            .frame(maxWidth: .infinity)
            .padding()
            .background(RoundedRectangle(cornerRadius: 8).fill(Color.blue))
            .overlay(configuration.label.padding(.leading, 4), alignment: .topLeading)
    }
}


