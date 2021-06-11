//
//  Translation.swift
//  Translate.it
//
//  Created by Mark Howard on 04/06/2021.
//

import SwiftUI
import MLKitTranslate

struct Translation: View {
    @AppStorage("languageTranslationPicker1") var languageTranslationPicker1 = 1
    @AppStorage("languageTranslationPicker2") var languageTranslationPicker2 = 1
    @AppStorage("languageTranslation1") var languageTranslation1 = "Afrikaans"
    @AppStorage("languageTranslation2") var languageTranslation2 = "Afrikaans"
    @AppStorage("sourceLanguage") var sourceLanguage = TranslateLanguage.afrikaans
    @AppStorage("destinationLanguage") var destinationLanguage = TranslateLanguage.afrikaans
    @State var languageTranslationText = "Type Some Text..."
    @State var translationResults = "Language Translation"
    @State var showingDownloading = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        if horizontalSizeClass == .compact {
            NavigationView {
            ScrollView {
                VStack {
                    GroupBox {
                    HStack {
                        Picker(selection: $languageTranslationPicker1, label: Text("Source - \(languageTranslation1)").font(.callout)) {
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
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .onChange(of: languageTranslationPicker1) { newValue in
                            if languageTranslationPicker1 == 1 {
                                languageTranslation1 = "Afrikaans"
                                sourceLanguage = TranslateLanguage.afrikaans
                            } else if languageTranslationPicker1 == 2 {
                                languageTranslation1 = "Arabic"
                                sourceLanguage = TranslateLanguage.arabic
                            } else if languageTranslationPicker1 == 3 {
                                languageTranslation1 = "Belarusian"
                                sourceLanguage = TranslateLanguage.belarusian
                            } else if languageTranslationPicker1 == 4 {
                                languageTranslation1 = "Bulgarian"
                                sourceLanguage = TranslateLanguage.bulgarian
                            } else if languageTranslationPicker1 == 5 {
                                languageTranslation1 = "Bengali"
                                sourceLanguage = TranslateLanguage.bengali
                            } else if languageTranslationPicker1 == 6 {
                                languageTranslation1 = "Catalan"
                                sourceLanguage = TranslateLanguage.catalan
                            } else if languageTranslationPicker1 == 7 {
                                languageTranslation1 = "Czech"
                                sourceLanguage = TranslateLanguage.czech
                            } else if languageTranslationPicker1 == 8 {
                                languageTranslation1 = "Welsh"
                                sourceLanguage = TranslateLanguage.welsh
                            } else if languageTranslationPicker1 == 9 {
                                languageTranslation1 = "Danish"
                                sourceLanguage = TranslateLanguage.danish
                            } else if languageTranslationPicker1 == 10 {
                                languageTranslation1 = "German"
                                sourceLanguage = TranslateLanguage.german
                            } else if languageTranslationPicker1 == 11 {
                                languageTranslation1 = "Greek"
                                sourceLanguage = TranslateLanguage.greek
                            } else if languageTranslationPicker1 == 12 {
                                languageTranslation1 = "English"
                                sourceLanguage = TranslateLanguage.english
                            } else if languageTranslationPicker1 == 13 {
                                languageTranslation1 = "Esperanto"
                                sourceLanguage = TranslateLanguage.eperanto
                            } else if languageTranslationPicker1 == 14 {
                                languageTranslation1 = "Spanish"
                                sourceLanguage = TranslateLanguage.spanish
                            } else if languageTranslationPicker1 == 15 {
                                languageTranslation1 = "Estonian"
                                sourceLanguage = TranslateLanguage.estonian
                            } else if languageTranslationPicker1 == 16 {
                                languageTranslation1 = "Persian"
                                sourceLanguage = TranslateLanguage.persian
                            } else if languageTranslationPicker1 == 17 {
                                languageTranslation1 = "Finnish"
                                sourceLanguage = TranslateLanguage.finnish
                            } else if languageTranslationPicker1 == 18 {
                                languageTranslation1 = "French"
                                sourceLanguage = TranslateLanguage.french
                            } else if languageTranslationPicker1 == 19 {
                                languageTranslation1 = "Irish"
                                sourceLanguage = TranslateLanguage.irish
                            } else if languageTranslationPicker1 == 20 {
                                languageTranslation1 = "Galician"
                                sourceLanguage = TranslateLanguage.galician
                            } else if languageTranslationPicker1 == 21 {
                                languageTranslation1 = "Gujarati"
                                sourceLanguage = TranslateLanguage.gujarati
                            } else if languageTranslationPicker1 == 22 {
                                languageTranslation1 = "Hebrew"
                                sourceLanguage = TranslateLanguage.hebrew
                            } else if languageTranslationPicker1 == 23 {
                                languageTranslation1 = "Hindi"
                                sourceLanguage = TranslateLanguage.hindi
                            } else if languageTranslationPicker1 == 24 {
                                languageTranslation1 = "Croatian"
                                sourceLanguage = TranslateLanguage.croatian
                            } else if languageTranslationPicker1 == 25 {
                                languageTranslation1 = "Haitian"
                                sourceLanguage = TranslateLanguage.haitianCreole
                            } else if languageTranslationPicker1 == 26 {
                                languageTranslation1 = "Hungarian"
                                sourceLanguage = TranslateLanguage.hungarian
                            } else if languageTranslationPicker1 == 27 {
                                languageTranslation1 = "Indonesian"
                                sourceLanguage = TranslateLanguage.indonesian
                            } else if languageTranslationPicker1 == 28 {
                                languageTranslation1 = "Icelandic"
                                sourceLanguage = TranslateLanguage.icelandic
                            } else if languageTranslationPicker1 == 29 {
                                languageTranslation1 = "Italian"
                                sourceLanguage = TranslateLanguage.italian
                            } else if languageTranslationPicker1 == 30 {
                                languageTranslation1 = "Japanese"
                                sourceLanguage = TranslateLanguage.japanese
                            } else if languageTranslationPicker1 == 31 {
                                languageTranslation1 = "Georgian"
                                sourceLanguage = TranslateLanguage.georgian
                            } else if languageTranslationPicker1 == 32 {
                                languageTranslation1 = "Kannada"
                                sourceLanguage = TranslateLanguage.kannada
                            } else if languageTranslationPicker1 == 33 {
                                languageTranslation1 = "Korean"
                                sourceLanguage = TranslateLanguage.korean
                            } else if languageTranslationPicker1 == 34 {
                                languageTranslation1 = "Lithuanian"
                                sourceLanguage = TranslateLanguage.lithuanian
                            } else if languageTranslationPicker1 == 35 {
                                languageTranslation1 = "Latvian"
                                sourceLanguage = TranslateLanguage.latvian
                            } else if languageTranslationPicker1 == 36 {
                                languageTranslation1 = "Macedonian"
                                sourceLanguage = TranslateLanguage.macedonian
                            } else if languageTranslationPicker1 == 37 {
                                languageTranslation1 = "Marathi"
                                sourceLanguage = TranslateLanguage.marathi
                            } else if languageTranslationPicker1 == 38 {
                                languageTranslation1 = "Malay"
                                sourceLanguage = TranslateLanguage.malay
                            } else if languageTranslationPicker1 == 39 {
                                languageTranslation1 = "Maltese"
                                sourceLanguage = TranslateLanguage.maltese
                            } else if languageTranslationPicker1 == 40 {
                                languageTranslation1 = "Dutch"
                                sourceLanguage = TranslateLanguage.dutch
                            } else if languageTranslationPicker1 == 41 {
                                languageTranslation1 = "Norwegian"
                                sourceLanguage = TranslateLanguage.norwegian
                            } else if languageTranslationPicker1 == 42 {
                                languageTranslation1 = "Polish"
                                sourceLanguage = TranslateLanguage.polish
                            } else if languageTranslationPicker1 == 43 {
                                languageTranslation1 = "Portuguese"
                                sourceLanguage = TranslateLanguage.portuguese
                            } else if languageTranslationPicker1 == 44 {
                                languageTranslation1 = "Romanian"
                                sourceLanguage = TranslateLanguage.romanian
                            } else if languageTranslationPicker1 == 45 {
                                languageTranslation1 = "Russian"
                                sourceLanguage = TranslateLanguage.russian
                            } else if languageTranslationPicker1 == 46 {
                                languageTranslation1 = "Slovak"
                                sourceLanguage = TranslateLanguage.slovak
                            } else if languageTranslationPicker1 == 47 {
                                languageTranslation1 = "Slovenian"
                                sourceLanguage = TranslateLanguage.slovenian
                            } else if languageTranslationPicker1 == 48 {
                                languageTranslation1 = "Albanian"
                                sourceLanguage = TranslateLanguage.albanian
                            } else if languageTranslationPicker1 == 49 {
                                languageTranslation1 = "Swedish"
                                sourceLanguage = TranslateLanguage.swedish
                            } else if languageTranslationPicker1 == 50 {
                                languageTranslation1 = "Swahili"
                                sourceLanguage = TranslateLanguage.swahili
                            } else if languageTranslationPicker1 == 51 {
                                languageTranslation1 = "Tamil"
                                sourceLanguage = TranslateLanguage.tamil
                            } else if languageTranslationPicker1 == 52 {
                                languageTranslation1 = "Telugu"
                                sourceLanguage = TranslateLanguage.telugu
                            } else if languageTranslationPicker1 == 53 {
                                languageTranslation1 = "Thai"
                                sourceLanguage = TranslateLanguage.thai
                            } else if languageTranslationPicker1 == 54 {
                                languageTranslation1 = "Tagalog"
                                sourceLanguage = TranslateLanguage.tagalog
                            } else if languageTranslationPicker1 == 55 {
                                languageTranslation1 = "Turkish"
                                sourceLanguage = TranslateLanguage.turkish
                            } else if languageTranslationPicker1 == 56 {
                                languageTranslation1 = "Ukrainian"
                                sourceLanguage = TranslateLanguage.ukrainian
                            } else if languageTranslationPicker1 == 57 {
                                languageTranslation1 = "Urdu"
                                sourceLanguage = TranslateLanguage.urdu
                            } else if languageTranslationPicker1 == 58 {
                                languageTranslation1 = "Vietnamese"
                                sourceLanguage = TranslateLanguage.vietnamese
                            } else if languageTranslationPicker1 == 59 {
                                languageTranslation1 = "Chinese"
                                sourceLanguage = TranslateLanguage.chinese
                            } else {
                                print("Unknown")
                            }
                        }
                        Spacer()
                        Divider()
                        Spacer()
                        Picker(selection: $languageTranslationPicker2, label: Text("Destination - \(languageTranslation2)").font(.callout)) {
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
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        .onChange(of: languageTranslationPicker2) { newValue in
                            if languageTranslationPicker2 == 1 {
                                languageTranslation2 = "Afrikaans"
                                destinationLanguage = TranslateLanguage.afrikaans
                            } else if languageTranslationPicker2 == 2 {
                                languageTranslation2 = "Arabic"
                                destinationLanguage = TranslateLanguage.arabic
                            } else if languageTranslationPicker2 == 3 {
                                languageTranslation2 = "Belarusian"
                                destinationLanguage = TranslateLanguage.belarusian
                            } else if languageTranslationPicker2 == 4 {
                                languageTranslation2 = "Bulgarian"
                                destinationLanguage = TranslateLanguage.bulgarian
                            } else if languageTranslationPicker2 == 5 {
                                languageTranslation2 = "Bengali"
                                destinationLanguage = TranslateLanguage.bengali
                            } else if languageTranslationPicker2 == 6 {
                                languageTranslation2 = "Catalan"
                                destinationLanguage = TranslateLanguage.catalan
                            } else if languageTranslationPicker2 == 7 {
                                languageTranslation2 = "Czech"
                                destinationLanguage = TranslateLanguage.czech
                            } else if languageTranslationPicker2 == 8 {
                                languageTranslation2 = "Welsh"
                                destinationLanguage = TranslateLanguage.welsh
                            } else if languageTranslationPicker2 == 9 {
                                languageTranslation2 = "Danish"
                                destinationLanguage = TranslateLanguage.danish
                            } else if languageTranslationPicker2 == 10 {
                                languageTranslation2 = "German"
                                destinationLanguage = TranslateLanguage.german
                            } else if languageTranslationPicker2 == 11 {
                                languageTranslation2 = "Greek"
                                destinationLanguage = TranslateLanguage.greek
                            } else if languageTranslationPicker2 == 12 {
                                languageTranslation2 = "English"
                                destinationLanguage = TranslateLanguage.english
                            } else if languageTranslationPicker2 == 13 {
                                languageTranslation2 = "Esperanto"
                                destinationLanguage = TranslateLanguage.eperanto
                            } else if languageTranslationPicker2 == 14 {
                                languageTranslation2 = "Spanish"
                                destinationLanguage = TranslateLanguage.spanish
                            } else if languageTranslationPicker2 == 15 {
                                languageTranslation2 = "Estonian"
                                destinationLanguage = TranslateLanguage.estonian
                            } else if languageTranslationPicker2 == 16 {
                                languageTranslation2 = "Persian"
                                destinationLanguage = TranslateLanguage.persian
                            } else if languageTranslationPicker2 == 17 {
                                languageTranslation2 = "Finnish"
                                destinationLanguage = TranslateLanguage.finnish
                            } else if languageTranslationPicker2 == 18 {
                                languageTranslation2 = "French"
                                destinationLanguage = TranslateLanguage.french
                            } else if languageTranslationPicker2 == 19 {
                                languageTranslation2 = "Irish"
                                destinationLanguage = TranslateLanguage.irish
                            } else if languageTranslationPicker2 == 20 {
                                languageTranslation2 = "Galician"
                                destinationLanguage = TranslateLanguage.galician
                            } else if languageTranslationPicker2 == 21 {
                                languageTranslation2 = "Gujarati"
                                destinationLanguage = TranslateLanguage.gujarati
                            } else if languageTranslationPicker2 == 22 {
                                languageTranslation2 = "Hebrew"
                                destinationLanguage = TranslateLanguage.hebrew
                            } else if languageTranslationPicker2 == 23 {
                                languageTranslation2 = "Hindi"
                                destinationLanguage = TranslateLanguage.hindi
                            } else if languageTranslationPicker2 == 24 {
                                languageTranslation2 = "Croatian"
                                destinationLanguage = TranslateLanguage.croatian
                            } else if languageTranslationPicker2 == 25 {
                                languageTranslation2 = "Haitian"
                                destinationLanguage = TranslateLanguage.haitianCreole
                            } else if languageTranslationPicker2 == 26 {
                                languageTranslation2 = "Hungarian"
                                destinationLanguage = TranslateLanguage.hungarian
                            } else if languageTranslationPicker2 == 27 {
                                languageTranslation2 = "Indonesian"
                                destinationLanguage = TranslateLanguage.indonesian
                            } else if languageTranslationPicker2 == 28 {
                                languageTranslation2 = "Icelandic"
                                destinationLanguage = TranslateLanguage.icelandic
                            } else if languageTranslationPicker2 == 29 {
                                languageTranslation2 = "Italian"
                                destinationLanguage = TranslateLanguage.italian
                            } else if languageTranslationPicker2 == 30 {
                                languageTranslation2 = "Japanese"
                                destinationLanguage = TranslateLanguage.japanese
                            } else if languageTranslationPicker2 == 31 {
                                languageTranslation2 = "Georgian"
                                destinationLanguage = TranslateLanguage.georgian
                            } else if languageTranslationPicker2 == 32 {
                                languageTranslation2 = "Kannada"
                                destinationLanguage = TranslateLanguage.kannada
                            } else if languageTranslationPicker2 == 33 {
                                languageTranslation2 = "Korean"
                                destinationLanguage = TranslateLanguage.korean
                            } else if languageTranslationPicker2 == 34 {
                                languageTranslation2 = "Lithuanian"
                                destinationLanguage = TranslateLanguage.lithuanian
                            } else if languageTranslationPicker2 == 35 {
                                languageTranslation2 = "Latvian"
                                destinationLanguage = TranslateLanguage.latvian
                            } else if languageTranslationPicker2 == 36 {
                                languageTranslation2 = "Macedonian"
                                destinationLanguage = TranslateLanguage.macedonian
                            } else if languageTranslationPicker2 == 37 {
                                languageTranslation2 = "Marathi"
                                destinationLanguage = TranslateLanguage.marathi
                            } else if languageTranslationPicker2 == 38 {
                                languageTranslation2 = "Malay"
                                destinationLanguage = TranslateLanguage.malay
                            } else if languageTranslationPicker2 == 39 {
                                languageTranslation2 = "Maltese"
                                destinationLanguage = TranslateLanguage.maltese
                            } else if languageTranslationPicker2 == 40 {
                                languageTranslation2 = "Dutch"
                                destinationLanguage = TranslateLanguage.dutch
                            } else if languageTranslationPicker2 == 41 {
                                languageTranslation2 = "Norwegian"
                                destinationLanguage = TranslateLanguage.norwegian
                            } else if languageTranslationPicker2 == 42 {
                                languageTranslation2 = "Polish"
                                destinationLanguage = TranslateLanguage.polish
                            } else if languageTranslationPicker2 == 43 {
                                languageTranslation2 = "Portuguese"
                                destinationLanguage = TranslateLanguage.portuguese
                            } else if languageTranslationPicker2 == 44 {
                                languageTranslation2 = "Romanian"
                                destinationLanguage = TranslateLanguage.romanian
                            } else if languageTranslationPicker2 == 45 {
                                languageTranslation2 = "Russian"
                                destinationLanguage = TranslateLanguage.russian
                            } else if languageTranslationPicker2 == 46 {
                                languageTranslation2 = "Slovak"
                                destinationLanguage = TranslateLanguage.slovak
                            } else if languageTranslationPicker2 == 47 {
                                languageTranslation2 = "Slovenian"
                                destinationLanguage = TranslateLanguage.slovenian
                            } else if languageTranslationPicker2 == 48 {
                                languageTranslation2 = "Albanian"
                                destinationLanguage = TranslateLanguage.albanian
                            } else if languageTranslationPicker2 == 49 {
                                languageTranslation2 = "Swedish"
                                destinationLanguage = TranslateLanguage.swedish
                            } else if languageTranslationPicker2 == 50 {
                                languageTranslation2 = "Swahili"
                                destinationLanguage = TranslateLanguage.swahili
                            } else if languageTranslationPicker2 == 51 {
                                languageTranslation2 = "Tamil"
                                destinationLanguage = TranslateLanguage.tamil
                            } else if languageTranslationPicker2 == 52 {
                                languageTranslation2 = "Telugu"
                                destinationLanguage = TranslateLanguage.telugu
                            } else if languageTranslationPicker2 == 53 {
                                languageTranslation2 = "Thai"
                                destinationLanguage = TranslateLanguage.thai
                            } else if languageTranslationPicker2 == 54 {
                                languageTranslation2 = "Tagalog"
                                destinationLanguage = TranslateLanguage.tagalog
                            } else if languageTranslationPicker2 == 55 {
                                languageTranslation2 = "Turkish"
                                destinationLanguage = TranslateLanguage.turkish
                            } else if languageTranslationPicker2 == 56 {
                                languageTranslation2 = "Ukrainian"
                                destinationLanguage = TranslateLanguage.ukrainian
                            } else if languageTranslationPicker2 == 57 {
                                languageTranslation2 = "Urdu"
                                destinationLanguage = TranslateLanguage.urdu
                            } else if languageTranslationPicker2 == 58 {
                                languageTranslation2 = "Vietnamese"
                                destinationLanguage = TranslateLanguage.vietnamese
                            } else if languageTranslationPicker2 == 59 {
                                languageTranslation2 = "Chinese"
                                destinationLanguage = TranslateLanguage.chinese
                            } else {
                                print("Unknown")
                            }
                        }
                    }
                }
                    .padding()
                    TextEditor(text: $languageTranslationText)
                        .foregroundColor(.white)
                        .background(Color.secondary)
                        .cornerRadius(10)
                        .frame(height: 150)
                    .padding()
                    Divider()
                    GroupBox {
                        VStack {
                            ScrollView {
                            HStack {
                    Text("\(translationResults)")
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
                .navigationTitle("Translation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {let options = TranslatorOptions(sourceLanguage: sourceLanguage, targetLanguage: destinationLanguage)
                            let translator = Translator.translator(options: options)
                            let conditions = ModelDownloadConditions(allowsCellularAccess: true, allowsBackgroundDownloading: true)
                            self.showingDownloading = true
                            translator.downloadModelIfNeeded(with: conditions) { error in
                                guard error == nil else { return }
                                self.showingDownloading = true
                                translator.translate(languageTranslationText) { translatedText, error in
                                    guard error == nil, let translatedText = translatedText else { return }
                                    print(translatedText)
                                    translationResults = translatedText
                                }
                                self.showingDownloading = false
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
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {let pasteboard = UIPasteboard.general
                            pasteboard.string = translationResults
                        }) {
                            Image(systemName: "doc.on.doc")
                        }
                    }
                }
            }
        }
            .alert(isPresented: $showingDownloading) {
                Alert(title: Text("Downloading And Translating"), message: Text("Downloading The Translation Model And Translating. Please Wait..."), dismissButton: .cancel() {print("Cancel")
                    let model = TranslateRemoteModel.translateRemoteModel(language: destinationLanguage)
                    ModelManager.modelManager().deleteDownloadedModel(model) { error in
                        guard error == nil else { return }
                    }
                })
            }
            .onAppear {
                if languageTranslationPicker1 == 1 {
                    languageTranslation1 = "Afrikaans"
                    sourceLanguage = TranslateLanguage.afrikaans
                } else if languageTranslationPicker1 == 2 {
                    languageTranslation1 = "Arabic"
                    sourceLanguage = TranslateLanguage.arabic
                } else if languageTranslationPicker1 == 3 {
                    languageTranslation1 = "Belarusian"
                    sourceLanguage = TranslateLanguage.belarusian
                } else if languageTranslationPicker1 == 4 {
                    languageTranslation1 = "Bulgarian"
                    sourceLanguage = TranslateLanguage.bulgarian
                } else if languageTranslationPicker1 == 5 {
                    languageTranslation1 = "Bengali"
                    sourceLanguage = TranslateLanguage.bengali
                } else if languageTranslationPicker1 == 6 {
                    languageTranslation1 = "Catalan"
                    sourceLanguage = TranslateLanguage.catalan
                } else if languageTranslationPicker1 == 7 {
                    languageTranslation1 = "Czech"
                    sourceLanguage = TranslateLanguage.czech
                } else if languageTranslationPicker1 == 8 {
                    languageTranslation1 = "Welsh"
                    sourceLanguage = TranslateLanguage.welsh
                } else if languageTranslationPicker1 == 9 {
                    languageTranslation1 = "Danish"
                    sourceLanguage = TranslateLanguage.danish
                } else if languageTranslationPicker1 == 10 {
                    languageTranslation1 = "German"
                    sourceLanguage = TranslateLanguage.german
                } else if languageTranslationPicker1 == 11 {
                    languageTranslation1 = "Greek"
                    sourceLanguage = TranslateLanguage.greek
                } else if languageTranslationPicker1 == 12 {
                    languageTranslation1 = "English"
                    sourceLanguage = TranslateLanguage.english
                } else if languageTranslationPicker1 == 13 {
                    languageTranslation1 = "Esperanto"
                    sourceLanguage = TranslateLanguage.eperanto
                } else if languageTranslationPicker1 == 14 {
                    languageTranslation1 = "Spanish"
                    sourceLanguage = TranslateLanguage.spanish
                } else if languageTranslationPicker1 == 15 {
                    languageTranslation1 = "Estonian"
                    sourceLanguage = TranslateLanguage.estonian
                } else if languageTranslationPicker1 == 16 {
                    languageTranslation1 = "Persian"
                    sourceLanguage = TranslateLanguage.persian
                } else if languageTranslationPicker1 == 17 {
                    languageTranslation1 = "Finnish"
                    sourceLanguage = TranslateLanguage.finnish
                } else if languageTranslationPicker1 == 18 {
                    languageTranslation1 = "French"
                    sourceLanguage = TranslateLanguage.french
                } else if languageTranslationPicker1 == 19 {
                    languageTranslation1 = "Irish"
                    sourceLanguage = TranslateLanguage.irish
                } else if languageTranslationPicker1 == 20 {
                    languageTranslation1 = "Galician"
                    sourceLanguage = TranslateLanguage.galician
                } else if languageTranslationPicker1 == 21 {
                    languageTranslation1 = "Gujarati"
                    sourceLanguage = TranslateLanguage.gujarati
                } else if languageTranslationPicker1 == 22 {
                    languageTranslation1 = "Hebrew"
                    sourceLanguage = TranslateLanguage.hebrew
                } else if languageTranslationPicker1 == 23 {
                    languageTranslation1 = "Hindi"
                    sourceLanguage = TranslateLanguage.hindi
                } else if languageTranslationPicker1 == 24 {
                    languageTranslation1 = "Croatian"
                    sourceLanguage = TranslateLanguage.croatian
                } else if languageTranslationPicker1 == 25 {
                    languageTranslation1 = "Haitian"
                    sourceLanguage = TranslateLanguage.haitianCreole
                } else if languageTranslationPicker1 == 26 {
                    languageTranslation1 = "Hungarian"
                    sourceLanguage = TranslateLanguage.hungarian
                } else if languageTranslationPicker1 == 27 {
                    languageTranslation1 = "Indonesian"
                    sourceLanguage = TranslateLanguage.indonesian
                } else if languageTranslationPicker1 == 28 {
                    languageTranslation1 = "Icelandic"
                    sourceLanguage = TranslateLanguage.icelandic
                } else if languageTranslationPicker1 == 29 {
                    languageTranslation1 = "Italian"
                    sourceLanguage = TranslateLanguage.italian
                } else if languageTranslationPicker1 == 30 {
                    languageTranslation1 = "Japanese"
                    sourceLanguage = TranslateLanguage.japanese
                } else if languageTranslationPicker1 == 31 {
                    languageTranslation1 = "Georgian"
                    sourceLanguage = TranslateLanguage.georgian
                } else if languageTranslationPicker1 == 32 {
                    languageTranslation1 = "Kannada"
                    sourceLanguage = TranslateLanguage.kannada
                } else if languageTranslationPicker1 == 33 {
                    languageTranslation1 = "Korean"
                    sourceLanguage = TranslateLanguage.korean
                } else if languageTranslationPicker1 == 34 {
                    languageTranslation1 = "Lithuanian"
                    sourceLanguage = TranslateLanguage.lithuanian
                } else if languageTranslationPicker1 == 35 {
                    languageTranslation1 = "Latvian"
                    sourceLanguage = TranslateLanguage.latvian
                } else if languageTranslationPicker1 == 36 {
                    languageTranslation1 = "Macedonian"
                    sourceLanguage = TranslateLanguage.macedonian
                } else if languageTranslationPicker1 == 37 {
                    languageTranslation1 = "Marathi"
                    sourceLanguage = TranslateLanguage.marathi
                } else if languageTranslationPicker1 == 38 {
                    languageTranslation1 = "Malay"
                    sourceLanguage = TranslateLanguage.malay
                } else if languageTranslationPicker1 == 39 {
                    languageTranslation1 = "Maltese"
                    sourceLanguage = TranslateLanguage.maltese
                } else if languageTranslationPicker1 == 40 {
                    languageTranslation1 = "Dutch"
                    sourceLanguage = TranslateLanguage.dutch
                } else if languageTranslationPicker1 == 41 {
                    languageTranslation1 = "Norwegian"
                    sourceLanguage = TranslateLanguage.norwegian
                } else if languageTranslationPicker1 == 42 {
                    languageTranslation1 = "Polish"
                    sourceLanguage = TranslateLanguage.polish
                } else if languageTranslationPicker1 == 43 {
                    languageTranslation1 = "Portuguese"
                    sourceLanguage = TranslateLanguage.portuguese
                } else if languageTranslationPicker1 == 44 {
                    languageTranslation1 = "Romanian"
                    sourceLanguage = TranslateLanguage.romanian
                } else if languageTranslationPicker1 == 45 {
                    languageTranslation1 = "Russian"
                    sourceLanguage = TranslateLanguage.russian
                } else if languageTranslationPicker1 == 46 {
                    languageTranslation1 = "Slovak"
                    sourceLanguage = TranslateLanguage.slovak
                } else if languageTranslationPicker1 == 47 {
                    languageTranslation1 = "Slovenian"
                    sourceLanguage = TranslateLanguage.slovenian
                } else if languageTranslationPicker1 == 48 {
                    languageTranslation1 = "Albanian"
                    sourceLanguage = TranslateLanguage.albanian
                } else if languageTranslationPicker1 == 49 {
                    languageTranslation1 = "Swedish"
                    sourceLanguage = TranslateLanguage.swedish
                } else if languageTranslationPicker1 == 50 {
                    languageTranslation1 = "Swahili"
                    sourceLanguage = TranslateLanguage.swahili
                } else if languageTranslationPicker1 == 51 {
                    languageTranslation1 = "Tamil"
                    sourceLanguage = TranslateLanguage.tamil
                } else if languageTranslationPicker1 == 52 {
                    languageTranslation1 = "Telugu"
                    sourceLanguage = TranslateLanguage.telugu
                } else if languageTranslationPicker1 == 53 {
                    languageTranslation1 = "Thai"
                    sourceLanguage = TranslateLanguage.thai
                } else if languageTranslationPicker1 == 54 {
                    languageTranslation1 = "Tagalog"
                    sourceLanguage = TranslateLanguage.tagalog
                } else if languageTranslationPicker1 == 55 {
                    languageTranslation1 = "Turkish"
                    sourceLanguage = TranslateLanguage.turkish
                } else if languageTranslationPicker1 == 56 {
                    languageTranslation1 = "Ukrainian"
                    sourceLanguage = TranslateLanguage.ukrainian
                } else if languageTranslationPicker1 == 57 {
                    languageTranslation1 = "Urdu"
                    sourceLanguage = TranslateLanguage.urdu
                } else if languageTranslationPicker1 == 58 {
                    languageTranslation1 = "Vietnamese"
                    sourceLanguage = TranslateLanguage.vietnamese
                } else if languageTranslationPicker1 == 59 {
                    languageTranslation1 = "Chinese"
                    sourceLanguage = TranslateLanguage.chinese
                } else {
                    print("Unknown")
                }
                
                if languageTranslationPicker2 == 1 {
                    languageTranslation2 = "Afrikaans"
                    destinationLanguage = TranslateLanguage.afrikaans
                } else if languageTranslationPicker2 == 2 {
                    languageTranslation2 = "Arabic"
                    destinationLanguage = TranslateLanguage.arabic
                } else if languageTranslationPicker2 == 3 {
                    languageTranslation2 = "Belarusian"
                    destinationLanguage = TranslateLanguage.belarusian
                } else if languageTranslationPicker2 == 4 {
                    languageTranslation2 = "Bulgarian"
                    destinationLanguage = TranslateLanguage.bulgarian
                } else if languageTranslationPicker2 == 5 {
                    languageTranslation2 = "Bengali"
                    destinationLanguage = TranslateLanguage.bengali
                } else if languageTranslationPicker2 == 6 {
                    languageTranslation2 = "Catalan"
                    destinationLanguage = TranslateLanguage.catalan
                } else if languageTranslationPicker2 == 7 {
                    languageTranslation2 = "Czech"
                    destinationLanguage = TranslateLanguage.czech
                } else if languageTranslationPicker2 == 8 {
                    languageTranslation2 = "Welsh"
                    destinationLanguage = TranslateLanguage.welsh
                } else if languageTranslationPicker2 == 9 {
                    languageTranslation2 = "Danish"
                    destinationLanguage = TranslateLanguage.danish
                } else if languageTranslationPicker2 == 10 {
                    languageTranslation2 = "German"
                    destinationLanguage = TranslateLanguage.german
                } else if languageTranslationPicker2 == 11 {
                    languageTranslation2 = "Greek"
                    destinationLanguage = TranslateLanguage.greek
                } else if languageTranslationPicker2 == 12 {
                    languageTranslation2 = "English"
                    destinationLanguage = TranslateLanguage.english
                } else if languageTranslationPicker2 == 13 {
                    languageTranslation2 = "Esperanto"
                    destinationLanguage = TranslateLanguage.eperanto
                } else if languageTranslationPicker2 == 14 {
                    languageTranslation2 = "Spanish"
                    destinationLanguage = TranslateLanguage.spanish
                } else if languageTranslationPicker2 == 15 {
                    languageTranslation2 = "Estonian"
                    destinationLanguage = TranslateLanguage.estonian
                } else if languageTranslationPicker2 == 16 {
                    languageTranslation2 = "Persian"
                    destinationLanguage = TranslateLanguage.persian
                } else if languageTranslationPicker2 == 17 {
                    languageTranslation2 = "Finnish"
                    destinationLanguage = TranslateLanguage.finnish
                } else if languageTranslationPicker2 == 18 {
                    languageTranslation2 = "French"
                    destinationLanguage = TranslateLanguage.french
                } else if languageTranslationPicker2 == 19 {
                    languageTranslation2 = "Irish"
                    destinationLanguage = TranslateLanguage.irish
                } else if languageTranslationPicker2 == 20 {
                    languageTranslation2 = "Galician"
                    destinationLanguage = TranslateLanguage.galician
                } else if languageTranslationPicker2 == 21 {
                    languageTranslation2 = "Gujarati"
                    destinationLanguage = TranslateLanguage.gujarati
                } else if languageTranslationPicker2 == 22 {
                    languageTranslation2 = "Hebrew"
                    destinationLanguage = TranslateLanguage.hebrew
                } else if languageTranslationPicker2 == 23 {
                    languageTranslation2 = "Hindi"
                    destinationLanguage = TranslateLanguage.hindi
                } else if languageTranslationPicker2 == 24 {
                    languageTranslation2 = "Croatian"
                    destinationLanguage = TranslateLanguage.croatian
                } else if languageTranslationPicker2 == 25 {
                    languageTranslation2 = "Haitian"
                    destinationLanguage = TranslateLanguage.haitianCreole
                } else if languageTranslationPicker2 == 26 {
                    languageTranslation2 = "Hungarian"
                    destinationLanguage = TranslateLanguage.hungarian
                } else if languageTranslationPicker2 == 27 {
                    languageTranslation2 = "Indonesian"
                    destinationLanguage = TranslateLanguage.indonesian
                } else if languageTranslationPicker2 == 28 {
                    languageTranslation2 = "Icelandic"
                    destinationLanguage = TranslateLanguage.icelandic
                } else if languageTranslationPicker2 == 29 {
                    languageTranslation2 = "Italian"
                    destinationLanguage = TranslateLanguage.italian
                } else if languageTranslationPicker2 == 30 {
                    languageTranslation2 = "Japanese"
                    destinationLanguage = TranslateLanguage.japanese
                } else if languageTranslationPicker2 == 31 {
                    languageTranslation2 = "Georgian"
                    destinationLanguage = TranslateLanguage.georgian
                } else if languageTranslationPicker2 == 32 {
                    languageTranslation2 = "Kannada"
                    destinationLanguage = TranslateLanguage.kannada
                } else if languageTranslationPicker2 == 33 {
                    languageTranslation2 = "Korean"
                    destinationLanguage = TranslateLanguage.korean
                } else if languageTranslationPicker2 == 34 {
                    languageTranslation2 = "Lithuanian"
                    destinationLanguage = TranslateLanguage.lithuanian
                } else if languageTranslationPicker2 == 35 {
                    languageTranslation2 = "Latvian"
                    destinationLanguage = TranslateLanguage.latvian
                } else if languageTranslationPicker2 == 36 {
                    languageTranslation2 = "Macedonian"
                    destinationLanguage = TranslateLanguage.macedonian
                } else if languageTranslationPicker2 == 37 {
                    languageTranslation2 = "Marathi"
                    destinationLanguage = TranslateLanguage.marathi
                } else if languageTranslationPicker2 == 38 {
                    languageTranslation2 = "Malay"
                    destinationLanguage = TranslateLanguage.malay
                } else if languageTranslationPicker2 == 39 {
                    languageTranslation2 = "Maltese"
                    destinationLanguage = TranslateLanguage.maltese
                } else if languageTranslationPicker2 == 40 {
                    languageTranslation2 = "Dutch"
                    destinationLanguage = TranslateLanguage.dutch
                } else if languageTranslationPicker2 == 41 {
                    languageTranslation2 = "Norwegian"
                    destinationLanguage = TranslateLanguage.norwegian
                } else if languageTranslationPicker2 == 42 {
                    languageTranslation2 = "Polish"
                    destinationLanguage = TranslateLanguage.polish
                } else if languageTranslationPicker2 == 43 {
                    languageTranslation2 = "Portuguese"
                    destinationLanguage = TranslateLanguage.portuguese
                } else if languageTranslationPicker2 == 44 {
                    languageTranslation2 = "Romanian"
                    destinationLanguage = TranslateLanguage.romanian
                } else if languageTranslationPicker2 == 45 {
                    languageTranslation2 = "Russian"
                    destinationLanguage = TranslateLanguage.russian
                } else if languageTranslationPicker2 == 46 {
                    languageTranslation2 = "Slovak"
                    destinationLanguage = TranslateLanguage.slovak
                } else if languageTranslationPicker2 == 47 {
                    languageTranslation2 = "Slovenian"
                    destinationLanguage = TranslateLanguage.slovenian
                } else if languageTranslationPicker2 == 48 {
                    languageTranslation2 = "Albanian"
                    destinationLanguage = TranslateLanguage.albanian
                } else if languageTranslationPicker2 == 49 {
                    languageTranslation2 = "Swedish"
                    destinationLanguage = TranslateLanguage.swedish
                } else if languageTranslationPicker2 == 50 {
                    languageTranslation2 = "Swahili"
                    destinationLanguage = TranslateLanguage.swahili
                } else if languageTranslationPicker2 == 51 {
                    languageTranslation2 = "Tamil"
                    destinationLanguage = TranslateLanguage.tamil
                } else if languageTranslationPicker2 == 52 {
                    languageTranslation2 = "Telugu"
                    destinationLanguage = TranslateLanguage.telugu
                } else if languageTranslationPicker2 == 53 {
                    languageTranslation2 = "Thai"
                    destinationLanguage = TranslateLanguage.thai
                } else if languageTranslationPicker2 == 54 {
                    languageTranslation2 = "Tagalog"
                    destinationLanguage = TranslateLanguage.tagalog
                } else if languageTranslationPicker2 == 55 {
                    languageTranslation2 = "Turkish"
                    destinationLanguage = TranslateLanguage.turkish
                } else if languageTranslationPicker2 == 56 {
                    languageTranslation2 = "Ukrainian"
                    destinationLanguage = TranslateLanguage.ukrainian
                } else if languageTranslationPicker2 == 57 {
                    languageTranslation2 = "Urdu"
                    destinationLanguage = TranslateLanguage.urdu
                } else if languageTranslationPicker2 == 58 {
                    languageTranslation2 = "Vietnamese"
                    destinationLanguage = TranslateLanguage.vietnamese
                } else if languageTranslationPicker2 == 59 {
                    languageTranslation2 = "Chinese"
                    destinationLanguage = TranslateLanguage.chinese
                } else {
                    print("Unknown")
                }
            }
        } else {
            ScrollView {
            VStack {
                GroupBox {
                HStack {
                    Picker(selection: $languageTranslationPicker1, label: Text("Source - \(languageTranslation1)").font(.callout)) {
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
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .onChange(of: languageTranslationPicker1) { newValue in
                        if languageTranslationPicker1 == 1 {
                            languageTranslation1 = "Afrikaans"
                            sourceLanguage = TranslateLanguage.afrikaans
                        } else if languageTranslationPicker1 == 2 {
                            languageTranslation1 = "Arabic"
                            sourceLanguage = TranslateLanguage.arabic
                        } else if languageTranslationPicker1 == 3 {
                            languageTranslation1 = "Belarusian"
                            sourceLanguage = TranslateLanguage.belarusian
                        } else if languageTranslationPicker1 == 4 {
                            languageTranslation1 = "Bulgarian"
                            sourceLanguage = TranslateLanguage.bulgarian
                        } else if languageTranslationPicker1 == 5 {
                            languageTranslation1 = "Bengali"
                            sourceLanguage = TranslateLanguage.bengali
                        } else if languageTranslationPicker1 == 6 {
                            languageTranslation1 = "Catalan"
                            sourceLanguage = TranslateLanguage.catalan
                        } else if languageTranslationPicker1 == 7 {
                            languageTranslation1 = "Czech"
                            sourceLanguage = TranslateLanguage.czech
                        } else if languageTranslationPicker1 == 8 {
                            languageTranslation1 = "Welsh"
                            sourceLanguage = TranslateLanguage.welsh
                        } else if languageTranslationPicker1 == 9 {
                            languageTranslation1 = "Danish"
                            sourceLanguage = TranslateLanguage.danish
                        } else if languageTranslationPicker1 == 10 {
                            languageTranslation1 = "German"
                            sourceLanguage = TranslateLanguage.german
                        } else if languageTranslationPicker1 == 11 {
                            languageTranslation1 = "Greek"
                            sourceLanguage = TranslateLanguage.greek
                        } else if languageTranslationPicker1 == 12 {
                            languageTranslation1 = "English"
                            sourceLanguage = TranslateLanguage.english
                        } else if languageTranslationPicker1 == 13 {
                            languageTranslation1 = "Esperanto"
                            sourceLanguage = TranslateLanguage.eperanto
                        } else if languageTranslationPicker1 == 14 {
                            languageTranslation1 = "Spanish"
                            sourceLanguage = TranslateLanguage.spanish
                        } else if languageTranslationPicker1 == 15 {
                            languageTranslation1 = "Estonian"
                            sourceLanguage = TranslateLanguage.estonian
                        } else if languageTranslationPicker1 == 16 {
                            languageTranslation1 = "Persian"
                            sourceLanguage = TranslateLanguage.persian
                        } else if languageTranslationPicker1 == 17 {
                            languageTranslation1 = "Finnish"
                            sourceLanguage = TranslateLanguage.finnish
                        } else if languageTranslationPicker1 == 18 {
                            languageTranslation1 = "French"
                            sourceLanguage = TranslateLanguage.french
                        } else if languageTranslationPicker1 == 19 {
                            languageTranslation1 = "Irish"
                            sourceLanguage = TranslateLanguage.irish
                        } else if languageTranslationPicker1 == 20 {
                            languageTranslation1 = "Galician"
                            sourceLanguage = TranslateLanguage.galician
                        } else if languageTranslationPicker1 == 21 {
                            languageTranslation1 = "Gujarati"
                            sourceLanguage = TranslateLanguage.gujarati
                        } else if languageTranslationPicker1 == 22 {
                            languageTranslation1 = "Hebrew"
                            sourceLanguage = TranslateLanguage.hebrew
                        } else if languageTranslationPicker1 == 23 {
                            languageTranslation1 = "Hindi"
                            sourceLanguage = TranslateLanguage.hindi
                        } else if languageTranslationPicker1 == 24 {
                            languageTranslation1 = "Croatian"
                            sourceLanguage = TranslateLanguage.croatian
                        } else if languageTranslationPicker1 == 25 {
                            languageTranslation1 = "Haitian"
                            sourceLanguage = TranslateLanguage.haitianCreole
                        } else if languageTranslationPicker1 == 26 {
                            languageTranslation1 = "Hungarian"
                            sourceLanguage = TranslateLanguage.hungarian
                        } else if languageTranslationPicker1 == 27 {
                            languageTranslation1 = "Indonesian"
                            sourceLanguage = TranslateLanguage.indonesian
                        } else if languageTranslationPicker1 == 28 {
                            languageTranslation1 = "Icelandic"
                            sourceLanguage = TranslateLanguage.icelandic
                        } else if languageTranslationPicker1 == 29 {
                            languageTranslation1 = "Italian"
                            sourceLanguage = TranslateLanguage.italian
                        } else if languageTranslationPicker1 == 30 {
                            languageTranslation1 = "Japanese"
                            sourceLanguage = TranslateLanguage.japanese
                        } else if languageTranslationPicker1 == 31 {
                            languageTranslation1 = "Georgian"
                            sourceLanguage = TranslateLanguage.georgian
                        } else if languageTranslationPicker1 == 32 {
                            languageTranslation1 = "Kannada"
                            sourceLanguage = TranslateLanguage.kannada
                        } else if languageTranslationPicker1 == 33 {
                            languageTranslation1 = "Korean"
                            sourceLanguage = TranslateLanguage.korean
                        } else if languageTranslationPicker1 == 34 {
                            languageTranslation1 = "Lithuanian"
                            sourceLanguage = TranslateLanguage.lithuanian
                        } else if languageTranslationPicker1 == 35 {
                            languageTranslation1 = "Latvian"
                            sourceLanguage = TranslateLanguage.latvian
                        } else if languageTranslationPicker1 == 36 {
                            languageTranslation1 = "Macedonian"
                            sourceLanguage = TranslateLanguage.macedonian
                        } else if languageTranslationPicker1 == 37 {
                            languageTranslation1 = "Marathi"
                            sourceLanguage = TranslateLanguage.marathi
                        } else if languageTranslationPicker1 == 38 {
                            languageTranslation1 = "Malay"
                            sourceLanguage = TranslateLanguage.malay
                        } else if languageTranslationPicker1 == 39 {
                            languageTranslation1 = "Maltese"
                            sourceLanguage = TranslateLanguage.maltese
                        } else if languageTranslationPicker1 == 40 {
                            languageTranslation1 = "Dutch"
                            sourceLanguage = TranslateLanguage.dutch
                        } else if languageTranslationPicker1 == 41 {
                            languageTranslation1 = "Norwegian"
                            sourceLanguage = TranslateLanguage.norwegian
                        } else if languageTranslationPicker1 == 42 {
                            languageTranslation1 = "Polish"
                            sourceLanguage = TranslateLanguage.polish
                        } else if languageTranslationPicker1 == 43 {
                            languageTranslation1 = "Portuguese"
                            sourceLanguage = TranslateLanguage.portuguese
                        } else if languageTranslationPicker1 == 44 {
                            languageTranslation1 = "Romanian"
                            sourceLanguage = TranslateLanguage.romanian
                        } else if languageTranslationPicker1 == 45 {
                            languageTranslation1 = "Russian"
                            sourceLanguage = TranslateLanguage.russian
                        } else if languageTranslationPicker1 == 46 {
                            languageTranslation1 = "Slovak"
                            sourceLanguage = TranslateLanguage.slovak
                        } else if languageTranslationPicker1 == 47 {
                            languageTranslation1 = "Slovenian"
                            sourceLanguage = TranslateLanguage.slovenian
                        } else if languageTranslationPicker1 == 48 {
                            languageTranslation1 = "Albanian"
                            sourceLanguage = TranslateLanguage.albanian
                        } else if languageTranslationPicker1 == 49 {
                            languageTranslation1 = "Swedish"
                            sourceLanguage = TranslateLanguage.swedish
                        } else if languageTranslationPicker1 == 50 {
                            languageTranslation1 = "Swahili"
                            sourceLanguage = TranslateLanguage.swahili
                        } else if languageTranslationPicker1 == 51 {
                            languageTranslation1 = "Tamil"
                            sourceLanguage = TranslateLanguage.tamil
                        } else if languageTranslationPicker1 == 52 {
                            languageTranslation1 = "Telugu"
                            sourceLanguage = TranslateLanguage.telugu
                        } else if languageTranslationPicker1 == 53 {
                            languageTranslation1 = "Thai"
                            sourceLanguage = TranslateLanguage.thai
                        } else if languageTranslationPicker1 == 54 {
                            languageTranslation1 = "Tagalog"
                            sourceLanguage = TranslateLanguage.tagalog
                        } else if languageTranslationPicker1 == 55 {
                            languageTranslation1 = "Turkish"
                            sourceLanguage = TranslateLanguage.turkish
                        } else if languageTranslationPicker1 == 56 {
                            languageTranslation1 = "Ukrainian"
                            sourceLanguage = TranslateLanguage.ukrainian
                        } else if languageTranslationPicker1 == 57 {
                            languageTranslation1 = "Urdu"
                            sourceLanguage = TranslateLanguage.urdu
                        } else if languageTranslationPicker1 == 58 {
                            languageTranslation1 = "Vietnamese"
                            sourceLanguage = TranslateLanguage.vietnamese
                        } else if languageTranslationPicker1 == 59 {
                            languageTranslation1 = "Chinese"
                            sourceLanguage = TranslateLanguage.chinese
                        } else {
                            print("Unknown")
                        }
                    }
                    Spacer()
                    Divider()
                    Spacer()
                    Picker(selection: $languageTranslationPicker2, label: Text("Destination - \(languageTranslation2)").font(.callout)) {
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
                        }
                    }
                    .pickerStyle(MenuPickerStyle())
                    .onChange(of: languageTranslationPicker2) { newValue in
                        if languageTranslationPicker2 == 1 {
                            languageTranslation2 = "Afrikaans"
                            destinationLanguage = TranslateLanguage.afrikaans
                        } else if languageTranslationPicker2 == 2 {
                            languageTranslation2 = "Arabic"
                            destinationLanguage = TranslateLanguage.arabic
                        } else if languageTranslationPicker2 == 3 {
                            languageTranslation2 = "Belarusian"
                            destinationLanguage = TranslateLanguage.belarusian
                        } else if languageTranslationPicker2 == 4 {
                            languageTranslation2 = "Bulgarian"
                            destinationLanguage = TranslateLanguage.bulgarian
                        } else if languageTranslationPicker2 == 5 {
                            languageTranslation2 = "Bengali"
                            destinationLanguage = TranslateLanguage.bengali
                        } else if languageTranslationPicker2 == 6 {
                            languageTranslation2 = "Catalan"
                            destinationLanguage = TranslateLanguage.catalan
                        } else if languageTranslationPicker2 == 7 {
                            languageTranslation2 = "Czech"
                            destinationLanguage = TranslateLanguage.czech
                        } else if languageTranslationPicker2 == 8 {
                            languageTranslation2 = "Welsh"
                            destinationLanguage = TranslateLanguage.welsh
                        } else if languageTranslationPicker2 == 9 {
                            languageTranslation2 = "Danish"
                            destinationLanguage = TranslateLanguage.danish
                        } else if languageTranslationPicker2 == 10 {
                            languageTranslation2 = "German"
                            destinationLanguage = TranslateLanguage.german
                        } else if languageTranslationPicker2 == 11 {
                            languageTranslation2 = "Greek"
                            destinationLanguage = TranslateLanguage.greek
                        } else if languageTranslationPicker2 == 12 {
                            languageTranslation2 = "English"
                            destinationLanguage = TranslateLanguage.english
                        } else if languageTranslationPicker2 == 13 {
                            languageTranslation2 = "Esperanto"
                            destinationLanguage = TranslateLanguage.eperanto
                        } else if languageTranslationPicker2 == 14 {
                            languageTranslation2 = "Spanish"
                            destinationLanguage = TranslateLanguage.spanish
                        } else if languageTranslationPicker2 == 15 {
                            languageTranslation2 = "Estonian"
                            destinationLanguage = TranslateLanguage.estonian
                        } else if languageTranslationPicker2 == 16 {
                            languageTranslation2 = "Persian"
                            destinationLanguage = TranslateLanguage.persian
                        } else if languageTranslationPicker2 == 17 {
                            languageTranslation2 = "Finnish"
                            destinationLanguage = TranslateLanguage.finnish
                        } else if languageTranslationPicker2 == 18 {
                            languageTranslation2 = "French"
                            destinationLanguage = TranslateLanguage.french
                        } else if languageTranslationPicker2 == 19 {
                            languageTranslation2 = "Irish"
                            destinationLanguage = TranslateLanguage.irish
                        } else if languageTranslationPicker2 == 20 {
                            languageTranslation2 = "Galician"
                            destinationLanguage = TranslateLanguage.galician
                        } else if languageTranslationPicker2 == 21 {
                            languageTranslation2 = "Gujarati"
                            destinationLanguage = TranslateLanguage.gujarati
                        } else if languageTranslationPicker2 == 22 {
                            languageTranslation2 = "Hebrew"
                            destinationLanguage = TranslateLanguage.hebrew
                        } else if languageTranslationPicker2 == 23 {
                            languageTranslation2 = "Hindi"
                            destinationLanguage = TranslateLanguage.hindi
                        } else if languageTranslationPicker2 == 24 {
                            languageTranslation2 = "Croatian"
                            destinationLanguage = TranslateLanguage.croatian
                        } else if languageTranslationPicker2 == 25 {
                            languageTranslation2 = "Haitian"
                            destinationLanguage = TranslateLanguage.haitianCreole
                        } else if languageTranslationPicker2 == 26 {
                            languageTranslation2 = "Hungarian"
                            destinationLanguage = TranslateLanguage.hungarian
                        } else if languageTranslationPicker2 == 27 {
                            languageTranslation2 = "Indonesian"
                            destinationLanguage = TranslateLanguage.indonesian
                        } else if languageTranslationPicker2 == 28 {
                            languageTranslation2 = "Icelandic"
                            destinationLanguage = TranslateLanguage.icelandic
                        } else if languageTranslationPicker2 == 29 {
                            languageTranslation2 = "Italian"
                            destinationLanguage = TranslateLanguage.italian
                        } else if languageTranslationPicker2 == 30 {
                            languageTranslation2 = "Japanese"
                            destinationLanguage = TranslateLanguage.japanese
                        } else if languageTranslationPicker2 == 31 {
                            languageTranslation2 = "Georgian"
                            destinationLanguage = TranslateLanguage.georgian
                        } else if languageTranslationPicker2 == 32 {
                            languageTranslation2 = "Kannada"
                            destinationLanguage = TranslateLanguage.kannada
                        } else if languageTranslationPicker2 == 33 {
                            languageTranslation2 = "Korean"
                            destinationLanguage = TranslateLanguage.korean
                        } else if languageTranslationPicker2 == 34 {
                            languageTranslation2 = "Lithuanian"
                            destinationLanguage = TranslateLanguage.lithuanian
                        } else if languageTranslationPicker2 == 35 {
                            languageTranslation2 = "Latvian"
                            destinationLanguage = TranslateLanguage.latvian
                        } else if languageTranslationPicker2 == 36 {
                            languageTranslation2 = "Macedonian"
                            destinationLanguage = TranslateLanguage.macedonian
                        } else if languageTranslationPicker2 == 37 {
                            languageTranslation2 = "Marathi"
                            destinationLanguage = TranslateLanguage.marathi
                        } else if languageTranslationPicker2 == 38 {
                            languageTranslation2 = "Malay"
                            destinationLanguage = TranslateLanguage.malay
                        } else if languageTranslationPicker2 == 39 {
                            languageTranslation2 = "Maltese"
                            destinationLanguage = TranslateLanguage.maltese
                        } else if languageTranslationPicker2 == 40 {
                            languageTranslation2 = "Dutch"
                            destinationLanguage = TranslateLanguage.dutch
                        } else if languageTranslationPicker2 == 41 {
                            languageTranslation2 = "Norwegian"
                            destinationLanguage = TranslateLanguage.norwegian
                        } else if languageTranslationPicker2 == 42 {
                            languageTranslation2 = "Polish"
                            destinationLanguage = TranslateLanguage.polish
                        } else if languageTranslationPicker2 == 43 {
                            languageTranslation2 = "Portuguese"
                            destinationLanguage = TranslateLanguage.portuguese
                        } else if languageTranslationPicker2 == 44 {
                            languageTranslation2 = "Romanian"
                            destinationLanguage = TranslateLanguage.romanian
                        } else if languageTranslationPicker2 == 45 {
                            languageTranslation2 = "Russian"
                            destinationLanguage = TranslateLanguage.russian
                        } else if languageTranslationPicker2 == 46 {
                            languageTranslation2 = "Slovak"
                            destinationLanguage = TranslateLanguage.slovak
                        } else if languageTranslationPicker2 == 47 {
                            languageTranslation2 = "Slovenian"
                            destinationLanguage = TranslateLanguage.slovenian
                        } else if languageTranslationPicker2 == 48 {
                            languageTranslation2 = "Albanian"
                            destinationLanguage = TranslateLanguage.albanian
                        } else if languageTranslationPicker2 == 49 {
                            languageTranslation2 = "Swedish"
                            destinationLanguage = TranslateLanguage.swedish
                        } else if languageTranslationPicker2 == 50 {
                            languageTranslation2 = "Swahili"
                            destinationLanguage = TranslateLanguage.swahili
                        } else if languageTranslationPicker2 == 51 {
                            languageTranslation2 = "Tamil"
                            destinationLanguage = TranslateLanguage.tamil
                        } else if languageTranslationPicker2 == 52 {
                            languageTranslation2 = "Telugu"
                            destinationLanguage = TranslateLanguage.telugu
                        } else if languageTranslationPicker2 == 53 {
                            languageTranslation2 = "Thai"
                            destinationLanguage = TranslateLanguage.thai
                        } else if languageTranslationPicker2 == 54 {
                            languageTranslation2 = "Tagalog"
                            destinationLanguage = TranslateLanguage.tagalog
                        } else if languageTranslationPicker2 == 55 {
                            languageTranslation2 = "Turkish"
                            destinationLanguage = TranslateLanguage.turkish
                        } else if languageTranslationPicker2 == 56 {
                            languageTranslation2 = "Ukrainian"
                            destinationLanguage = TranslateLanguage.ukrainian
                        } else if languageTranslationPicker2 == 57 {
                            languageTranslation2 = "Urdu"
                            destinationLanguage = TranslateLanguage.urdu
                        } else if languageTranslationPicker2 == 58 {
                            languageTranslation2 = "Vietnamese"
                            destinationLanguage = TranslateLanguage.vietnamese
                        } else if languageTranslationPicker2 == 59 {
                            languageTranslation2 = "Chinese"
                            destinationLanguage = TranslateLanguage.chinese
                        } else {
                            print("Unknown")
                        }
                    }
                }
            }
                .padding()
                HStack {
                    TextEditor(text: $languageTranslationText)
                        .foregroundColor(.white)
                        .background(Color.secondary)
                        .cornerRadius(10)
                        .frame(height: 150)
                    .padding()
                    GroupBox {
                        VStack {
                            ScrollView {
                            HStack {
                    Text("\(translationResults)")
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
                .navigationTitle("Translation")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {let options = TranslatorOptions(sourceLanguage: sourceLanguage, targetLanguage: destinationLanguage)
                            let translator = Translator.translator(options: options)
                            let conditions = ModelDownloadConditions(allowsCellularAccess: true, allowsBackgroundDownloading: true)
                            self.showingDownloading = true
                            translator.downloadModelIfNeeded(with: conditions) { error in
                                guard error == nil else { return }
                                self.showingDownloading = true
                                translator.translate(languageTranslationText) { translatedText, error in
                                    guard error == nil, let translatedText = translatedText else { return }
                                    print(translatedText)
                                    translationResults = translatedText
                                }
                                self.showingDownloading = false
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
                    ToolbarItem(placement: .navigationBarLeading) {
                        Button(action: {let pasteboard = UIPasteboard.general
                            pasteboard.string = translationResults
                        }) {
                            Image(systemName: "doc.on.doc")
                        }
                    }
                }
        }
        }
            .alert(isPresented: $showingDownloading) {
                Alert(title: Text("Downloading And Translating"), message: Text("Downloading The Translation Model And Translating. Please Wait..."), dismissButton: .cancel() {print("Cancel")
                    let model = TranslateRemoteModel.translateRemoteModel(language: destinationLanguage)
                    ModelManager.modelManager().deleteDownloadedModel(model) { error in
                        guard error == nil else { return }
                    }
                })
            }
            .onAppear {
                if languageTranslationPicker1 == 1 {
                    languageTranslation1 = "Afrikaans"
                    sourceLanguage = TranslateLanguage.afrikaans
                } else if languageTranslationPicker1 == 2 {
                    languageTranslation1 = "Arabic"
                    sourceLanguage = TranslateLanguage.arabic
                } else if languageTranslationPicker1 == 3 {
                    languageTranslation1 = "Belarusian"
                    sourceLanguage = TranslateLanguage.belarusian
                } else if languageTranslationPicker1 == 4 {
                    languageTranslation1 = "Bulgarian"
                    sourceLanguage = TranslateLanguage.bulgarian
                } else if languageTranslationPicker1 == 5 {
                    languageTranslation1 = "Bengali"
                    sourceLanguage = TranslateLanguage.bengali
                } else if languageTranslationPicker1 == 6 {
                    languageTranslation1 = "Catalan"
                    sourceLanguage = TranslateLanguage.catalan
                } else if languageTranslationPicker1 == 7 {
                    languageTranslation1 = "Czech"
                    sourceLanguage = TranslateLanguage.czech
                } else if languageTranslationPicker1 == 8 {
                    languageTranslation1 = "Welsh"
                    sourceLanguage = TranslateLanguage.welsh
                } else if languageTranslationPicker1 == 9 {
                    languageTranslation1 = "Danish"
                    sourceLanguage = TranslateLanguage.danish
                } else if languageTranslationPicker1 == 10 {
                    languageTranslation1 = "German"
                    sourceLanguage = TranslateLanguage.german
                } else if languageTranslationPicker1 == 11 {
                    languageTranslation1 = "Greek"
                    sourceLanguage = TranslateLanguage.greek
                } else if languageTranslationPicker1 == 12 {
                    languageTranslation1 = "English"
                    sourceLanguage = TranslateLanguage.english
                } else if languageTranslationPicker1 == 13 {
                    languageTranslation1 = "Esperanto"
                    sourceLanguage = TranslateLanguage.eperanto
                } else if languageTranslationPicker1 == 14 {
                    languageTranslation1 = "Spanish"
                    sourceLanguage = TranslateLanguage.spanish
                } else if languageTranslationPicker1 == 15 {
                    languageTranslation1 = "Estonian"
                    sourceLanguage = TranslateLanguage.estonian
                } else if languageTranslationPicker1 == 16 {
                    languageTranslation1 = "Persian"
                    sourceLanguage = TranslateLanguage.persian
                } else if languageTranslationPicker1 == 17 {
                    languageTranslation1 = "Finnish"
                    sourceLanguage = TranslateLanguage.finnish
                } else if languageTranslationPicker1 == 18 {
                    languageTranslation1 = "French"
                    sourceLanguage = TranslateLanguage.french
                } else if languageTranslationPicker1 == 19 {
                    languageTranslation1 = "Irish"
                    sourceLanguage = TranslateLanguage.irish
                } else if languageTranslationPicker1 == 20 {
                    languageTranslation1 = "Galician"
                    sourceLanguage = TranslateLanguage.galician
                } else if languageTranslationPicker1 == 21 {
                    languageTranslation1 = "Gujarati"
                    sourceLanguage = TranslateLanguage.gujarati
                } else if languageTranslationPicker1 == 22 {
                    languageTranslation1 = "Hebrew"
                    sourceLanguage = TranslateLanguage.hebrew
                } else if languageTranslationPicker1 == 23 {
                    languageTranslation1 = "Hindi"
                    sourceLanguage = TranslateLanguage.hindi
                } else if languageTranslationPicker1 == 24 {
                    languageTranslation1 = "Croatian"
                    sourceLanguage = TranslateLanguage.croatian
                } else if languageTranslationPicker1 == 25 {
                    languageTranslation1 = "Haitian"
                    sourceLanguage = TranslateLanguage.haitianCreole
                } else if languageTranslationPicker1 == 26 {
                    languageTranslation1 = "Hungarian"
                    sourceLanguage = TranslateLanguage.hungarian
                } else if languageTranslationPicker1 == 27 {
                    languageTranslation1 = "Indonesian"
                    sourceLanguage = TranslateLanguage.indonesian
                } else if languageTranslationPicker1 == 28 {
                    languageTranslation1 = "Icelandic"
                    sourceLanguage = TranslateLanguage.icelandic
                } else if languageTranslationPicker1 == 29 {
                    languageTranslation1 = "Italian"
                    sourceLanguage = TranslateLanguage.italian
                } else if languageTranslationPicker1 == 30 {
                    languageTranslation1 = "Japanese"
                    sourceLanguage = TranslateLanguage.japanese
                } else if languageTranslationPicker1 == 31 {
                    languageTranslation1 = "Georgian"
                    sourceLanguage = TranslateLanguage.georgian
                } else if languageTranslationPicker1 == 32 {
                    languageTranslation1 = "Kannada"
                    sourceLanguage = TranslateLanguage.kannada
                } else if languageTranslationPicker1 == 33 {
                    languageTranslation1 = "Korean"
                    sourceLanguage = TranslateLanguage.korean
                } else if languageTranslationPicker1 == 34 {
                    languageTranslation1 = "Lithuanian"
                    sourceLanguage = TranslateLanguage.lithuanian
                } else if languageTranslationPicker1 == 35 {
                    languageTranslation1 = "Latvian"
                    sourceLanguage = TranslateLanguage.latvian
                } else if languageTranslationPicker1 == 36 {
                    languageTranslation1 = "Macedonian"
                    sourceLanguage = TranslateLanguage.macedonian
                } else if languageTranslationPicker1 == 37 {
                    languageTranslation1 = "Marathi"
                    sourceLanguage = TranslateLanguage.marathi
                } else if languageTranslationPicker1 == 38 {
                    languageTranslation1 = "Malay"
                    sourceLanguage = TranslateLanguage.malay
                } else if languageTranslationPicker1 == 39 {
                    languageTranslation1 = "Maltese"
                    sourceLanguage = TranslateLanguage.maltese
                } else if languageTranslationPicker1 == 40 {
                    languageTranslation1 = "Dutch"
                    sourceLanguage = TranslateLanguage.dutch
                } else if languageTranslationPicker1 == 41 {
                    languageTranslation1 = "Norwegian"
                    sourceLanguage = TranslateLanguage.norwegian
                } else if languageTranslationPicker1 == 42 {
                    languageTranslation1 = "Polish"
                    sourceLanguage = TranslateLanguage.polish
                } else if languageTranslationPicker1 == 43 {
                    languageTranslation1 = "Portuguese"
                    sourceLanguage = TranslateLanguage.portuguese
                } else if languageTranslationPicker1 == 44 {
                    languageTranslation1 = "Romanian"
                    sourceLanguage = TranslateLanguage.romanian
                } else if languageTranslationPicker1 == 45 {
                    languageTranslation1 = "Russian"
                    sourceLanguage = TranslateLanguage.russian
                } else if languageTranslationPicker1 == 46 {
                    languageTranslation1 = "Slovak"
                    sourceLanguage = TranslateLanguage.slovak
                } else if languageTranslationPicker1 == 47 {
                    languageTranslation1 = "Slovenian"
                    sourceLanguage = TranslateLanguage.slovenian
                } else if languageTranslationPicker1 == 48 {
                    languageTranslation1 = "Albanian"
                    sourceLanguage = TranslateLanguage.albanian
                } else if languageTranslationPicker1 == 49 {
                    languageTranslation1 = "Swedish"
                    sourceLanguage = TranslateLanguage.swedish
                } else if languageTranslationPicker1 == 50 {
                    languageTranslation1 = "Swahili"
                    sourceLanguage = TranslateLanguage.swahili
                } else if languageTranslationPicker1 == 51 {
                    languageTranslation1 = "Tamil"
                    sourceLanguage = TranslateLanguage.tamil
                } else if languageTranslationPicker1 == 52 {
                    languageTranslation1 = "Telugu"
                    sourceLanguage = TranslateLanguage.telugu
                } else if languageTranslationPicker1 == 53 {
                    languageTranslation1 = "Thai"
                    sourceLanguage = TranslateLanguage.thai
                } else if languageTranslationPicker1 == 54 {
                    languageTranslation1 = "Tagalog"
                    sourceLanguage = TranslateLanguage.tagalog
                } else if languageTranslationPicker1 == 55 {
                    languageTranslation1 = "Turkish"
                    sourceLanguage = TranslateLanguage.turkish
                } else if languageTranslationPicker1 == 56 {
                    languageTranslation1 = "Ukrainian"
                    sourceLanguage = TranslateLanguage.ukrainian
                } else if languageTranslationPicker1 == 57 {
                    languageTranslation1 = "Urdu"
                    sourceLanguage = TranslateLanguage.urdu
                } else if languageTranslationPicker1 == 58 {
                    languageTranslation1 = "Vietnamese"
                    sourceLanguage = TranslateLanguage.vietnamese
                } else if languageTranslationPicker1 == 59 {
                    languageTranslation1 = "Chinese"
                    sourceLanguage = TranslateLanguage.chinese
                } else {
                    print("Unknown")
                }
                
                if languageTranslationPicker2 == 1 {
                    languageTranslation2 = "Afrikaans"
                    destinationLanguage = TranslateLanguage.afrikaans
                } else if languageTranslationPicker2 == 2 {
                    languageTranslation2 = "Arabic"
                    destinationLanguage = TranslateLanguage.arabic
                } else if languageTranslationPicker2 == 3 {
                    languageTranslation2 = "Belarusian"
                    destinationLanguage = TranslateLanguage.belarusian
                } else if languageTranslationPicker2 == 4 {
                    languageTranslation2 = "Bulgarian"
                    destinationLanguage = TranslateLanguage.bulgarian
                } else if languageTranslationPicker2 == 5 {
                    languageTranslation2 = "Bengali"
                    destinationLanguage = TranslateLanguage.bengali
                } else if languageTranslationPicker2 == 6 {
                    languageTranslation2 = "Catalan"
                    destinationLanguage = TranslateLanguage.catalan
                } else if languageTranslationPicker2 == 7 {
                    languageTranslation2 = "Czech"
                    destinationLanguage = TranslateLanguage.czech
                } else if languageTranslationPicker2 == 8 {
                    languageTranslation2 = "Welsh"
                    destinationLanguage = TranslateLanguage.welsh
                } else if languageTranslationPicker2 == 9 {
                    languageTranslation2 = "Danish"
                    destinationLanguage = TranslateLanguage.danish
                } else if languageTranslationPicker2 == 10 {
                    languageTranslation2 = "German"
                    destinationLanguage = TranslateLanguage.german
                } else if languageTranslationPicker2 == 11 {
                    languageTranslation2 = "Greek"
                    destinationLanguage = TranslateLanguage.greek
                } else if languageTranslationPicker2 == 12 {
                    languageTranslation2 = "English"
                    destinationLanguage = TranslateLanguage.english
                } else if languageTranslationPicker2 == 13 {
                    languageTranslation2 = "Esperanto"
                    destinationLanguage = TranslateLanguage.eperanto
                } else if languageTranslationPicker2 == 14 {
                    languageTranslation2 = "Spanish"
                    destinationLanguage = TranslateLanguage.spanish
                } else if languageTranslationPicker2 == 15 {
                    languageTranslation2 = "Estonian"
                    destinationLanguage = TranslateLanguage.estonian
                } else if languageTranslationPicker2 == 16 {
                    languageTranslation2 = "Persian"
                    destinationLanguage = TranslateLanguage.persian
                } else if languageTranslationPicker2 == 17 {
                    languageTranslation2 = "Finnish"
                    destinationLanguage = TranslateLanguage.finnish
                } else if languageTranslationPicker2 == 18 {
                    languageTranslation2 = "French"
                    destinationLanguage = TranslateLanguage.french
                } else if languageTranslationPicker2 == 19 {
                    languageTranslation2 = "Irish"
                    destinationLanguage = TranslateLanguage.irish
                } else if languageTranslationPicker2 == 20 {
                    languageTranslation2 = "Galician"
                    destinationLanguage = TranslateLanguage.galician
                } else if languageTranslationPicker2 == 21 {
                    languageTranslation2 = "Gujarati"
                    destinationLanguage = TranslateLanguage.gujarati
                } else if languageTranslationPicker2 == 22 {
                    languageTranslation2 = "Hebrew"
                    destinationLanguage = TranslateLanguage.hebrew
                } else if languageTranslationPicker2 == 23 {
                    languageTranslation2 = "Hindi"
                    destinationLanguage = TranslateLanguage.hindi
                } else if languageTranslationPicker2 == 24 {
                    languageTranslation2 = "Croatian"
                    destinationLanguage = TranslateLanguage.croatian
                } else if languageTranslationPicker2 == 25 {
                    languageTranslation2 = "Haitian"
                    destinationLanguage = TranslateLanguage.haitianCreole
                } else if languageTranslationPicker2 == 26 {
                    languageTranslation2 = "Hungarian"
                    destinationLanguage = TranslateLanguage.hungarian
                } else if languageTranslationPicker2 == 27 {
                    languageTranslation2 = "Indonesian"
                    destinationLanguage = TranslateLanguage.indonesian
                } else if languageTranslationPicker2 == 28 {
                    languageTranslation2 = "Icelandic"
                    destinationLanguage = TranslateLanguage.icelandic
                } else if languageTranslationPicker2 == 29 {
                    languageTranslation2 = "Italian"
                    destinationLanguage = TranslateLanguage.italian
                } else if languageTranslationPicker2 == 30 {
                    languageTranslation2 = "Japanese"
                    destinationLanguage = TranslateLanguage.japanese
                } else if languageTranslationPicker2 == 31 {
                    languageTranslation2 = "Georgian"
                    destinationLanguage = TranslateLanguage.georgian
                } else if languageTranslationPicker2 == 32 {
                    languageTranslation2 = "Kannada"
                    destinationLanguage = TranslateLanguage.kannada
                } else if languageTranslationPicker2 == 33 {
                    languageTranslation2 = "Korean"
                    destinationLanguage = TranslateLanguage.korean
                } else if languageTranslationPicker2 == 34 {
                    languageTranslation2 = "Lithuanian"
                    destinationLanguage = TranslateLanguage.lithuanian
                } else if languageTranslationPicker2 == 35 {
                    languageTranslation2 = "Latvian"
                    destinationLanguage = TranslateLanguage.latvian
                } else if languageTranslationPicker2 == 36 {
                    languageTranslation2 = "Macedonian"
                    destinationLanguage = TranslateLanguage.macedonian
                } else if languageTranslationPicker2 == 37 {
                    languageTranslation2 = "Marathi"
                    destinationLanguage = TranslateLanguage.marathi
                } else if languageTranslationPicker2 == 38 {
                    languageTranslation2 = "Malay"
                    destinationLanguage = TranslateLanguage.malay
                } else if languageTranslationPicker2 == 39 {
                    languageTranslation2 = "Maltese"
                    destinationLanguage = TranslateLanguage.maltese
                } else if languageTranslationPicker2 == 40 {
                    languageTranslation2 = "Dutch"
                    destinationLanguage = TranslateLanguage.dutch
                } else if languageTranslationPicker2 == 41 {
                    languageTranslation2 = "Norwegian"
                    destinationLanguage = TranslateLanguage.norwegian
                } else if languageTranslationPicker2 == 42 {
                    languageTranslation2 = "Polish"
                    destinationLanguage = TranslateLanguage.polish
                } else if languageTranslationPicker2 == 43 {
                    languageTranslation2 = "Portuguese"
                    destinationLanguage = TranslateLanguage.portuguese
                } else if languageTranslationPicker2 == 44 {
                    languageTranslation2 = "Romanian"
                    destinationLanguage = TranslateLanguage.romanian
                } else if languageTranslationPicker2 == 45 {
                    languageTranslation2 = "Russian"
                    destinationLanguage = TranslateLanguage.russian
                } else if languageTranslationPicker2 == 46 {
                    languageTranslation2 = "Slovak"
                    destinationLanguage = TranslateLanguage.slovak
                } else if languageTranslationPicker2 == 47 {
                    languageTranslation2 = "Slovenian"
                    destinationLanguage = TranslateLanguage.slovenian
                } else if languageTranslationPicker2 == 48 {
                    languageTranslation2 = "Albanian"
                    destinationLanguage = TranslateLanguage.albanian
                } else if languageTranslationPicker2 == 49 {
                    languageTranslation2 = "Swedish"
                    destinationLanguage = TranslateLanguage.swedish
                } else if languageTranslationPicker2 == 50 {
                    languageTranslation2 = "Swahili"
                    destinationLanguage = TranslateLanguage.swahili
                } else if languageTranslationPicker2 == 51 {
                    languageTranslation2 = "Tamil"
                    destinationLanguage = TranslateLanguage.tamil
                } else if languageTranslationPicker2 == 52 {
                    languageTranslation2 = "Telugu"
                    destinationLanguage = TranslateLanguage.telugu
                } else if languageTranslationPicker2 == 53 {
                    languageTranslation2 = "Thai"
                    destinationLanguage = TranslateLanguage.thai
                } else if languageTranslationPicker2 == 54 {
                    languageTranslation2 = "Tagalog"
                    destinationLanguage = TranslateLanguage.tagalog
                } else if languageTranslationPicker2 == 55 {
                    languageTranslation2 = "Turkish"
                    destinationLanguage = TranslateLanguage.turkish
                } else if languageTranslationPicker2 == 56 {
                    languageTranslation2 = "Ukrainian"
                    destinationLanguage = TranslateLanguage.ukrainian
                } else if languageTranslationPicker2 == 57 {
                    languageTranslation2 = "Urdu"
                    destinationLanguage = TranslateLanguage.urdu
                } else if languageTranslationPicker2 == 58 {
                    languageTranslation2 = "Vietnamese"
                    destinationLanguage = TranslateLanguage.vietnamese
                } else if languageTranslationPicker2 == 59 {
                    languageTranslation2 = "Chinese"
                    destinationLanguage = TranslateLanguage.chinese
                } else {
                    print("Unknown")
                }
            }
                }
            }
        }

struct Translation_Previews: PreviewProvider {
    static var previews: some View {
        Translation()
    }
}
