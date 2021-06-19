//
//  Translation.swift
//  Translate.it
//
//  Created by Mark Howard on 13/06/2021.
//

import SwiftUI
import SwiftyTranslate

struct Translation: View {
    @AppStorage("languageTranslationPicker1") var languageTranslationPicker1 = 1
    @AppStorage("languageTranslationPicker2") var languageTranslationPicker2 = 1
    @AppStorage("languageTranslation1") var languageTranslation1 = "Afrikaans"
    @AppStorage("languageTranslation2") var languageTranslation2 = "Afrikaans"
    @AppStorage("sourceLanguage") var sourceLanguage = "af"
    @AppStorage("destinationLanguage") var destinationLanguage = "af"
    @State var languageTranslationText = "Type Some Text..."
    @State var translationResults = "Language Translation"
    var body: some View {
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
                        sourceLanguage = "af"
                    } else if languageTranslationPicker1 == 2 {
                        languageTranslation1 = "Arabic"
                        sourceLanguage = "ar"
                    } else if languageTranslationPicker1 == 3 {
                        languageTranslation1 = "Belarusian"
                        sourceLanguage = "be"
                    } else if languageTranslationPicker1 == 4 {
                        languageTranslation1 = "Bulgarian"
                        sourceLanguage = "bg"
                    } else if languageTranslationPicker1 == 5 {
                        languageTranslation1 = "Bengali"
                        sourceLanguage = "bn"
                    } else if languageTranslationPicker1 == 6 {
                        languageTranslation1 = "Catalan"
                        sourceLanguage = "ca"
                    } else if languageTranslationPicker1 == 7 {
                        languageTranslation1 = "Czech"
                        sourceLanguage = "cs"
                    } else if languageTranslationPicker1 == 8 {
                        languageTranslation1 = "Welsh"
                        sourceLanguage = "cy"
                    } else if languageTranslationPicker1 == 9 {
                        languageTranslation1 = "Danish"
                        sourceLanguage = "da"
                    } else if languageTranslationPicker1 == 10 {
                        languageTranslation1 = "German"
                        sourceLanguage = "de"
                    } else if languageTranslationPicker1 == 11 {
                        languageTranslation1 = "Greek"
                        sourceLanguage = "el"
                    } else if languageTranslationPicker1 == 12 {
                        languageTranslation1 = "English"
                        sourceLanguage = "en"
                    } else if languageTranslationPicker1 == 13 {
                        languageTranslation1 = "Esperanto"
                        sourceLanguage = "eo"
                    } else if languageTranslationPicker1 == 14 {
                        languageTranslation1 = "Spanish"
                        sourceLanguage = "es"
                    } else if languageTranslationPicker1 == 15 {
                        languageTranslation1 = "Estonian"
                        sourceLanguage = "et"
                    } else if languageTranslationPicker1 == 16 {
                        languageTranslation1 = "Persian"
                        sourceLanguage = "fa"
                    } else if languageTranslationPicker1 == 17 {
                        languageTranslation1 = "Finnish"
                        sourceLanguage = "fi"
                    } else if languageTranslationPicker1 == 18 {
                        languageTranslation1 = "French"
                        sourceLanguage = "fr"
                    } else if languageTranslationPicker1 == 19 {
                        languageTranslation1 = "Irish"
                        sourceLanguage = "ga"
                    } else if languageTranslationPicker1 == 20 {
                        languageTranslation1 = "Galician"
                        sourceLanguage = "gl"
                    } else if languageTranslationPicker1 == 21 {
                        languageTranslation1 = "Gujarati"
                        sourceLanguage = "gu"
                    } else if languageTranslationPicker1 == 22 {
                        languageTranslation1 = "Hebrew"
                        sourceLanguage = "he"
                    } else if languageTranslationPicker1 == 23 {
                        languageTranslation1 = "Hindi"
                        sourceLanguage = "hi"
                    } else if languageTranslationPicker1 == 24 {
                        languageTranslation1 = "Croatian"
                        sourceLanguage = "hr"
                    } else if languageTranslationPicker1 == 25 {
                        languageTranslation1 = "Haitian"
                        sourceLanguage = "ht"
                    } else if languageTranslationPicker1 == 26 {
                        languageTranslation1 = "Hungarian"
                        sourceLanguage = "hu"
                    } else if languageTranslationPicker1 == 27 {
                        languageTranslation1 = "Indonesian"
                        sourceLanguage = "id"
                    } else if languageTranslationPicker1 == 28 {
                        languageTranslation1 = "Icelandic"
                        sourceLanguage = "is"
                    } else if languageTranslationPicker1 == 29 {
                        languageTranslation1 = "Italian"
                        sourceLanguage = "it"
                    } else if languageTranslationPicker1 == 30 {
                        languageTranslation1 = "Japanese"
                        sourceLanguage = "ja"
                    } else if languageTranslationPicker1 == 31 {
                        languageTranslation1 = "Georgian"
                        sourceLanguage = "ka"
                    } else if languageTranslationPicker1 == 32 {
                        languageTranslation1 = "Kannada"
                        sourceLanguage = "kn"
                    } else if languageTranslationPicker1 == 33 {
                        languageTranslation1 = "Korean"
                        sourceLanguage = "ko"
                    } else if languageTranslationPicker1 == 34 {
                        languageTranslation1 = "Lithuanian"
                        sourceLanguage = "lt"
                    } else if languageTranslationPicker1 == 35 {
                        languageTranslation1 = "Latvian"
                        sourceLanguage = "lv"
                    } else if languageTranslationPicker1 == 36 {
                        languageTranslation1 = "Macedonian"
                        sourceLanguage = "mk"
                    } else if languageTranslationPicker1 == 37 {
                        languageTranslation1 = "Marathi"
                        sourceLanguage = "mr"
                    } else if languageTranslationPicker1 == 38 {
                        languageTranslation1 = "Malay"
                        sourceLanguage = "ms"
                    } else if languageTranslationPicker1 == 39 {
                        languageTranslation1 = "Maltese"
                        sourceLanguage = "mt"
                    } else if languageTranslationPicker1 == 40 {
                        languageTranslation1 = "Dutch"
                        sourceLanguage = "nl"
                    } else if languageTranslationPicker1 == 41 {
                        languageTranslation1 = "Norwegian"
                        sourceLanguage = "no"
                    } else if languageTranslationPicker1 == 42 {
                        languageTranslation1 = "Polish"
                        sourceLanguage = "pl"
                    } else if languageTranslationPicker1 == 43 {
                        languageTranslation1 = "Portuguese"
                        sourceLanguage = "pt"
                    } else if languageTranslationPicker1 == 44 {
                        languageTranslation1 = "Romanian"
                        sourceLanguage = "ro"
                    } else if languageTranslationPicker1 == 45 {
                        languageTranslation1 = "Russian"
                        sourceLanguage = "ru"
                    } else if languageTranslationPicker1 == 46 {
                        languageTranslation1 = "Slovak"
                        sourceLanguage = "sk"
                    } else if languageTranslationPicker1 == 47 {
                        languageTranslation1 = "Slovenian"
                        sourceLanguage = "sl"
                    } else if languageTranslationPicker1 == 48 {
                        languageTranslation1 = "Albanian"
                        sourceLanguage = "sq"
                    } else if languageTranslationPicker1 == 49 {
                        languageTranslation1 = "Swedish"
                        sourceLanguage = "sv"
                    } else if languageTranslationPicker1 == 50 {
                        languageTranslation1 = "Swahili"
                        sourceLanguage = "sw"
                    } else if languageTranslationPicker1 == 51 {
                        languageTranslation1 = "Tamil"
                        sourceLanguage = "ta"
                    } else if languageTranslationPicker1 == 52 {
                        languageTranslation1 = "Telugu"
                        sourceLanguage = "te"
                    } else if languageTranslationPicker1 == 53 {
                        languageTranslation1 = "Thai"
                        sourceLanguage = "th"
                    } else if languageTranslationPicker1 == 54 {
                        languageTranslation1 = "Tagalog"
                        sourceLanguage = "tl"
                    } else if languageTranslationPicker1 == 55 {
                        languageTranslation1 = "Turkish"
                        sourceLanguage = "tr"
                    } else if languageTranslationPicker1 == 56 {
                        languageTranslation1 = "Ukrainian"
                        sourceLanguage = "uk"
                    } else if languageTranslationPicker1 == 57 {
                        languageTranslation1 = "Urdu"
                        sourceLanguage = "ur"
                    } else if languageTranslationPicker1 == 58 {
                        languageTranslation1 = "Vietnamese"
                        sourceLanguage = "vi"
                    } else if languageTranslationPicker1 == 59 {
                        languageTranslation1 = "Chinese"
                        sourceLanguage = "zh"
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
                        destinationLanguage = "af"
                    } else if languageTranslationPicker2 == 2 {
                        languageTranslation2 = "Arabic"
                        destinationLanguage = "ar"
                    } else if languageTranslationPicker2 == 3 {
                        languageTranslation2 = "Belarusian"
                        destinationLanguage = "be"
                    } else if languageTranslationPicker2 == 4 {
                        languageTranslation2 = "Bulgarian"
                        destinationLanguage = "bg"
                    } else if languageTranslationPicker2 == 5 {
                        languageTranslation2 = "Bengali"
                        destinationLanguage = "bn"
                    } else if languageTranslationPicker2 == 6 {
                        languageTranslation2 = "Catalan"
                        destinationLanguage = "ca"
                    } else if languageTranslationPicker2 == 7 {
                        languageTranslation2 = "Czech"
                        destinationLanguage = "cs"
                    } else if languageTranslationPicker2 == 8 {
                        languageTranslation2 = "Welsh"
                        destinationLanguage = "cy"
                    } else if languageTranslationPicker2 == 9 {
                        languageTranslation2 = "Danish"
                        destinationLanguage = "da"
                    } else if languageTranslationPicker2 == 10 {
                        languageTranslation2 = "German"
                        destinationLanguage = "de"
                    } else if languageTranslationPicker2 == 11 {
                        languageTranslation2 = "Greek"
                        destinationLanguage = "el"
                    } else if languageTranslationPicker2 == 12 {
                        languageTranslation2 = "English"
                        destinationLanguage = "en"
                    } else if languageTranslationPicker2 == 13 {
                        languageTranslation2 = "Esperanto"
                        destinationLanguage = "eo"
                    } else if languageTranslationPicker2 == 14 {
                        languageTranslation2 = "Spanish"
                        destinationLanguage = "es"
                    } else if languageTranslationPicker2 == 15 {
                        languageTranslation2 = "Estonian"
                        destinationLanguage = "et"
                    } else if languageTranslationPicker2 == 16 {
                        languageTranslation2 = "Persian"
                        destinationLanguage = "fa"
                    } else if languageTranslationPicker2 == 17 {
                        languageTranslation2 = "Finnish"
                        destinationLanguage = "fi"
                    } else if languageTranslationPicker2 == 18 {
                        languageTranslation2 = "French"
                        destinationLanguage = "fr"
                    } else if languageTranslationPicker2 == 19 {
                        languageTranslation2 = "Irish"
                        destinationLanguage = "ga"
                    } else if languageTranslationPicker2 == 20 {
                        languageTranslation2 = "Galician"
                        destinationLanguage = "gl"
                    } else if languageTranslationPicker2 == 21 {
                        languageTranslation2 = "Gujarati"
                        destinationLanguage = "gu"
                    } else if languageTranslationPicker2 == 22 {
                        languageTranslation2 = "Hebrew"
                        destinationLanguage = "he"
                    } else if languageTranslationPicker2 == 23 {
                        languageTranslation2 = "Hindi"
                        destinationLanguage = "hi"
                    } else if languageTranslationPicker2 == 24 {
                        languageTranslation2 = "Croatian"
                        destinationLanguage = "hr"
                    } else if languageTranslationPicker2 == 25 {
                        languageTranslation2 = "Haitian"
                        destinationLanguage = "ht"
                    } else if languageTranslationPicker2 == 26 {
                        languageTranslation2 = "Hungarian"
                        destinationLanguage = "hu"
                    } else if languageTranslationPicker2 == 27 {
                        languageTranslation2 = "Indonesian"
                        destinationLanguage = "id"
                    } else if languageTranslationPicker2 == 28 {
                        languageTranslation2 = "Icelandic"
                        destinationLanguage = "is"
                    } else if languageTranslationPicker2 == 29 {
                        languageTranslation2 = "Italian"
                        destinationLanguage = "it"
                    } else if languageTranslationPicker2 == 30 {
                        languageTranslation2 = "Japanese"
                        destinationLanguage = "ja"
                    } else if languageTranslationPicker2 == 31 {
                        languageTranslation2 = "Georgian"
                        destinationLanguage = "ka"
                    } else if languageTranslationPicker2 == 32 {
                        languageTranslation2 = "Kannada"
                        destinationLanguage = "kn"
                    } else if languageTranslationPicker2 == 33 {
                        languageTranslation2 = "Korean"
                        destinationLanguage = "ko"
                    } else if languageTranslationPicker2 == 34 {
                        languageTranslation2 = "Lithuanian"
                        destinationLanguage = "lt"
                    } else if languageTranslationPicker2 == 35 {
                        languageTranslation2 = "Latvian"
                        destinationLanguage = "lv"
                    } else if languageTranslationPicker2 == 36 {
                        languageTranslation2 = "Macedonian"
                        destinationLanguage = "mk"
                    } else if languageTranslationPicker2 == 37 {
                        languageTranslation2 = "Marathi"
                        destinationLanguage = "mr"
                    } else if languageTranslationPicker2 == 38 {
                        languageTranslation2 = "Malay"
                        destinationLanguage = "ms"
                    } else if languageTranslationPicker2 == 39 {
                        languageTranslation2 = "Maltese"
                        destinationLanguage = "mt"
                    } else if languageTranslationPicker2 == 40 {
                        languageTranslation2 = "Dutch"
                        destinationLanguage = "nl"
                    } else if languageTranslationPicker2 == 41 {
                        languageTranslation2 = "Norwegian"
                        destinationLanguage = "no"
                    } else if languageTranslationPicker2 == 42 {
                        languageTranslation2 = "Polish"
                        destinationLanguage = "pl"
                    } else if languageTranslationPicker2 == 43 {
                        languageTranslation2 = "Portuguese"
                        destinationLanguage = "pt"
                    } else if languageTranslationPicker2 == 44 {
                        languageTranslation2 = "Romanian"
                        destinationLanguage = "ro"
                    } else if languageTranslationPicker2 == 45 {
                        languageTranslation2 = "Russian"
                        destinationLanguage = "ru"
                    } else if languageTranslationPicker2 == 46 {
                        languageTranslation2 = "Slovak"
                        destinationLanguage = "sk"
                    } else if languageTranslationPicker2 == 47 {
                        languageTranslation2 = "Slovenian"
                        destinationLanguage = "sl"
                    } else if languageTranslationPicker2 == 48 {
                        languageTranslation2 = "Albanian"
                        destinationLanguage = "sq"
                    } else if languageTranslationPicker2 == 49 {
                        languageTranslation2 = "Swedish"
                        destinationLanguage = "sv"
                    } else if languageTranslationPicker2 == 50 {
                        languageTranslation2 = "Swahili"
                        destinationLanguage = "sw"
                    } else if languageTranslationPicker2 == 51 {
                        languageTranslation2 = "Tamil"
                        destinationLanguage = "ta"
                    } else if languageTranslationPicker2 == 52 {
                        languageTranslation2 = "Telugu"
                        destinationLanguage = "te"
                    } else if languageTranslationPicker2 == 53 {
                        languageTranslation2 = "Thai"
                        destinationLanguage = "th"
                    } else if languageTranslationPicker2 == 54 {
                        languageTranslation2 = "Tagalog"
                        destinationLanguage = "tl"
                    } else if languageTranslationPicker2 == 55 {
                        languageTranslation2 = "Turkish"
                        destinationLanguage = "tr"
                    } else if languageTranslationPicker2 == 56 {
                        languageTranslation2 = "Ukrainian"
                        destinationLanguage = "uk"
                    } else if languageTranslationPicker2 == 57 {
                        languageTranslation2 = "Urdu"
                        destinationLanguage = "ur"
                    } else if languageTranslationPicker2 == 58 {
                        languageTranslation2 = "Vietnamese"
                        destinationLanguage = "vi"
                    } else if languageTranslationPicker2 == 59 {
                        languageTranslation2 = "Chinese"
                        destinationLanguage = "zh"
                    } else {
                        print("Unknown")
                    }
                }
            }
        }
            .padding()
            HStack {
                CustomizableTextEditor(text: $languageTranslationText)
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
                ToolbarItem(placement: .status) {
                    Button(action: {let paste = NSPasteboard.general
                        paste.clearContents()
                        paste.setString(translationResults, forType: .string)
                    }) {
                        Image(systemName: "doc.on.doc")
                    }
                    .help("Copy Result")
                }
                ToolbarItem(placement: .primaryAction) {
                    Button(action: {
                        SwiftyTranslate.translate(text: languageTranslationText, from: sourceLanguage, to: destinationLanguage) { result in
                            switch result {
                            case .success(let translation):
                                print("Translated: \(translation.translated)")
                                translationResults = translation.translated
                            case .failure(let error):
                                print("Error: \(error)")
                                translationResults = "Error. Please Check Your Network Connection And Try Again..."
                            }
                        }
                    }) {
                        Image(systemName: "play.fill")
                    }
                    .help("Start Detection")
                }
            }
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
                        Text("Afrikaans")
                        Text("Arabic")
                        Text("Belarusian")
                        Text("Bulgarian")
                        Text("Bengali")
                        Text("Catalan")
                        Text("Czech")
                        Text("Welsh")
                        Text("Danish")
                    }
                        Group {
                        Text("German")
                        Text("Greek")
                        Text("English")
                            Text("Esperanto")
                            Text("Spanish")
                            Text("Estonian")
                            Text("Persian")
                            Text("Finnish")
                            Text("French")
                            Text("Irish")
                        }
                    Group {
                            Text("Galician")
                        Text("Gujarati")
                        Text("Hebrew")
                        Text("Hindi")
                        Text("Croatian")
                        Text("Haitian")
                        Text("Hungarian")
                        Text("Indonesian")
                        Text("Icelandic")
                        Text("Italian")
                    }
                    Group {
                        Text("Japanese")
                        Text("Georgian")
                        Text("Kannada")
                        Text("Korean")
                        Text("Lithuanian")
                        Text("Latvian")
                        Text("Macedonian")
                        Text("Marathi")
                        Text("Malay")
                        Text("Maltese")
                    }
                    Group {
                        Text("Dutch")
                        Text("Norwegian")
                        Text("Polish")
                        Text("Portuguese")
                        Text("Romanian")
                        Text("Russian")
                        Text("Slovak")
                        Text("Slovenian")
                        Text("Albanian")
                        Text("Swedish")
                    }
                    Group {
                        Text("Swahili")
                        Text("Tamil")
                        Text("Telugu")
                        Text("Thai")
                        Text("Tagalog")
                        Text("Turkish")
                        Text("Ukrainian")
                        Text("Urdu")
                        Text("Vietnamese")
                        Text("Chinese")
                    }
                }
                .padding()
            }
            .padding()
            Spacer()
    }
        .onAppear {
            if languageTranslationPicker1 == 1 {
                languageTranslation1 = "Afrikaans"
                sourceLanguage = "af"
            } else if languageTranslationPicker1 == 2 {
                languageTranslation1 = "Arabic"
                sourceLanguage = "ar"
            } else if languageTranslationPicker1 == 3 {
                languageTranslation1 = "Belarusian"
                sourceLanguage = "be"
            } else if languageTranslationPicker1 == 4 {
                languageTranslation1 = "Bulgarian"
                sourceLanguage = "bg"
            } else if languageTranslationPicker1 == 5 {
                languageTranslation1 = "Bengali"
                sourceLanguage = "bn"
            } else if languageTranslationPicker1 == 6 {
                languageTranslation1 = "Catalan"
                sourceLanguage = "ca"
            } else if languageTranslationPicker1 == 7 {
                languageTranslation1 = "Czech"
                sourceLanguage = "cs"
            } else if languageTranslationPicker1 == 8 {
                languageTranslation1 = "Welsh"
                sourceLanguage = "cy"
            } else if languageTranslationPicker1 == 9 {
                languageTranslation1 = "Danish"
                sourceLanguage = "da"
            } else if languageTranslationPicker1 == 10 {
                languageTranslation1 = "German"
                sourceLanguage = "de"
            } else if languageTranslationPicker1 == 11 {
                languageTranslation1 = "Greek"
                sourceLanguage = "el"
            } else if languageTranslationPicker1 == 12 {
                languageTranslation1 = "English"
                sourceLanguage = "en"
            } else if languageTranslationPicker1 == 13 {
                languageTranslation1 = "Esperanto"
                sourceLanguage = "eo"
            } else if languageTranslationPicker1 == 14 {
                languageTranslation1 = "Spanish"
                sourceLanguage = "es"
            } else if languageTranslationPicker1 == 15 {
                languageTranslation1 = "Estonian"
                sourceLanguage = "et"
            } else if languageTranslationPicker1 == 16 {
                languageTranslation1 = "Persian"
                sourceLanguage = "fa"
            } else if languageTranslationPicker1 == 17 {
                languageTranslation1 = "Finnish"
                sourceLanguage = "fi"
            } else if languageTranslationPicker1 == 18 {
                languageTranslation1 = "French"
                sourceLanguage = "fr"
            } else if languageTranslationPicker1 == 19 {
                languageTranslation1 = "Irish"
                sourceLanguage = "ga"
            } else if languageTranslationPicker1 == 20 {
                languageTranslation1 = "Galician"
                sourceLanguage = "gl"
            } else if languageTranslationPicker1 == 21 {
                languageTranslation1 = "Gujarati"
                sourceLanguage = "gu"
            } else if languageTranslationPicker1 == 22 {
                languageTranslation1 = "Hebrew"
                sourceLanguage = "he"
            } else if languageTranslationPicker1 == 23 {
                languageTranslation1 = "Hindi"
                sourceLanguage = "hi"
            } else if languageTranslationPicker1 == 24 {
                languageTranslation1 = "Croatian"
                sourceLanguage = "hr"
            } else if languageTranslationPicker1 == 25 {
                languageTranslation1 = "Haitian"
                sourceLanguage = "ht"
            } else if languageTranslationPicker1 == 26 {
                languageTranslation1 = "Hungarian"
                sourceLanguage = "hu"
            } else if languageTranslationPicker1 == 27 {
                languageTranslation1 = "Indonesian"
                sourceLanguage = "id"
            } else if languageTranslationPicker1 == 28 {
                languageTranslation1 = "Icelandic"
                sourceLanguage = "is"
            } else if languageTranslationPicker1 == 29 {
                languageTranslation1 = "Italian"
                sourceLanguage = "it"
            } else if languageTranslationPicker1 == 30 {
                languageTranslation1 = "Japanese"
                sourceLanguage = "ja"
            } else if languageTranslationPicker1 == 31 {
                languageTranslation1 = "Georgian"
                sourceLanguage = "ka"
            } else if languageTranslationPicker1 == 32 {
                languageTranslation1 = "Kannada"
                sourceLanguage = "kn"
            } else if languageTranslationPicker1 == 33 {
                languageTranslation1 = "Korean"
                sourceLanguage = "ko"
            } else if languageTranslationPicker1 == 34 {
                languageTranslation1 = "Lithuanian"
                sourceLanguage = "lt"
            } else if languageTranslationPicker1 == 35 {
                languageTranslation1 = "Latvian"
                sourceLanguage = "lv"
            } else if languageTranslationPicker1 == 36 {
                languageTranslation1 = "Macedonian"
                sourceLanguage = "mk"
            } else if languageTranslationPicker1 == 37 {
                languageTranslation1 = "Marathi"
                sourceLanguage = "mr"
            } else if languageTranslationPicker1 == 38 {
                languageTranslation1 = "Malay"
                sourceLanguage = "ms"
            } else if languageTranslationPicker1 == 39 {
                languageTranslation1 = "Maltese"
                sourceLanguage = "mt"
            } else if languageTranslationPicker1 == 40 {
                languageTranslation1 = "Dutch"
                sourceLanguage = "nl"
            } else if languageTranslationPicker1 == 41 {
                languageTranslation1 = "Norwegian"
                sourceLanguage = "no"
            } else if languageTranslationPicker1 == 42 {
                languageTranslation1 = "Polish"
                sourceLanguage = "pl"
            } else if languageTranslationPicker1 == 43 {
                languageTranslation1 = "Portuguese"
                sourceLanguage = "pt"
            } else if languageTranslationPicker1 == 44 {
                languageTranslation1 = "Romanian"
                sourceLanguage = "ro"
            } else if languageTranslationPicker1 == 45 {
                languageTranslation1 = "Russian"
                sourceLanguage = "ru"
            } else if languageTranslationPicker1 == 46 {
                languageTranslation1 = "Slovak"
                sourceLanguage = "sk"
            } else if languageTranslationPicker1 == 47 {
                languageTranslation1 = "Slovenian"
                sourceLanguage = "sl"
            } else if languageTranslationPicker1 == 48 {
                languageTranslation1 = "Albanian"
                sourceLanguage = "sq"
            } else if languageTranslationPicker1 == 49 {
                languageTranslation1 = "Swedish"
                sourceLanguage = "sv"
            } else if languageTranslationPicker1 == 50 {
                languageTranslation1 = "Swahili"
                sourceLanguage = "sw"
            } else if languageTranslationPicker1 == 51 {
                languageTranslation1 = "Tamil"
                sourceLanguage = "ta"
            } else if languageTranslationPicker1 == 52 {
                languageTranslation1 = "Telugu"
                sourceLanguage = "te"
            } else if languageTranslationPicker1 == 53 {
                languageTranslation1 = "Thai"
                sourceLanguage = "th"
            } else if languageTranslationPicker1 == 54 {
                languageTranslation1 = "Tagalog"
                sourceLanguage = "tl"
            } else if languageTranslationPicker1 == 55 {
                languageTranslation1 = "Turkish"
                sourceLanguage = "tr"
            } else if languageTranslationPicker1 == 56 {
                languageTranslation1 = "Ukrainian"
                sourceLanguage = "uk"
            } else if languageTranslationPicker1 == 57 {
                languageTranslation1 = "Urdu"
                sourceLanguage = "ur"
            } else if languageTranslationPicker1 == 58 {
                languageTranslation1 = "Vietnamese"
                sourceLanguage = "vi"
            } else if languageTranslationPicker1 == 59 {
                languageTranslation1 = "Chinese"
                sourceLanguage = "zh"
            } else {
                print("Unknown")
            }
            
            if languageTranslationPicker2 == 1 {
                languageTranslation2 = "Afrikaans"
                destinationLanguage = "af"
            } else if languageTranslationPicker2 == 2 {
                languageTranslation2 = "Arabic"
                destinationLanguage = "ar"
            } else if languageTranslationPicker2 == 3 {
                languageTranslation2 = "Belarusian"
                destinationLanguage = "be"
            } else if languageTranslationPicker2 == 4 {
                languageTranslation2 = "Bulgarian"
                destinationLanguage = "bg"
            } else if languageTranslationPicker2 == 5 {
                languageTranslation2 = "Bengali"
                destinationLanguage = "bn"
            } else if languageTranslationPicker2 == 6 {
                languageTranslation2 = "Catalan"
                destinationLanguage = "ca"
            } else if languageTranslationPicker2 == 7 {
                languageTranslation2 = "Czech"
                destinationLanguage = "cs"
            } else if languageTranslationPicker2 == 8 {
                languageTranslation2 = "Welsh"
                destinationLanguage = "cy"
            } else if languageTranslationPicker2 == 9 {
                languageTranslation2 = "Danish"
                destinationLanguage = "da"
            } else if languageTranslationPicker2 == 10 {
                languageTranslation2 = "German"
                destinationLanguage = "de"
            } else if languageTranslationPicker2 == 11 {
                languageTranslation2 = "Greek"
                destinationLanguage = "el"
            } else if languageTranslationPicker2 == 12 {
                languageTranslation2 = "English"
                destinationLanguage = "en"
            } else if languageTranslationPicker2 == 13 {
                languageTranslation2 = "Esperanto"
                destinationLanguage = "eo"
            } else if languageTranslationPicker2 == 14 {
                languageTranslation2 = "Spanish"
                destinationLanguage = "es"
            } else if languageTranslationPicker2 == 15 {
                languageTranslation2 = "Estonian"
                destinationLanguage = "et"
            } else if languageTranslationPicker2 == 16 {
                languageTranslation2 = "Persian"
                destinationLanguage = "fa"
            } else if languageTranslationPicker2 == 17 {
                languageTranslation2 = "Finnish"
                destinationLanguage = "fi"
            } else if languageTranslationPicker2 == 18 {
                languageTranslation2 = "French"
                destinationLanguage = "fr"
            } else if languageTranslationPicker2 == 19 {
                languageTranslation2 = "Irish"
                destinationLanguage = "ga"
            } else if languageTranslationPicker2 == 20 {
                languageTranslation2 = "Galician"
                destinationLanguage = "gl"
            } else if languageTranslationPicker2 == 21 {
                languageTranslation2 = "Gujarati"
                destinationLanguage = "gu"
            } else if languageTranslationPicker2 == 22 {
                languageTranslation2 = "Hebrew"
                destinationLanguage = "he"
            } else if languageTranslationPicker2 == 23 {
                languageTranslation2 = "Hindi"
                destinationLanguage = "hi"
            } else if languageTranslationPicker2 == 24 {
                languageTranslation2 = "Croatian"
                destinationLanguage = "hr"
            } else if languageTranslationPicker2 == 25 {
                languageTranslation2 = "Haitian"
                destinationLanguage = "ht"
            } else if languageTranslationPicker2 == 26 {
                languageTranslation2 = "Hungarian"
                destinationLanguage = "hu"
            } else if languageTranslationPicker2 == 27 {
                languageTranslation2 = "Indonesian"
                destinationLanguage = "id"
            } else if languageTranslationPicker2 == 28 {
                languageTranslation2 = "Icelandic"
                destinationLanguage = "is"
            } else if languageTranslationPicker2 == 29 {
                languageTranslation2 = "Italian"
                destinationLanguage = "it"
            } else if languageTranslationPicker2 == 30 {
                languageTranslation2 = "Japanese"
                destinationLanguage = "ja"
            } else if languageTranslationPicker2 == 31 {
                languageTranslation2 = "Georgian"
                destinationLanguage = "ka"
            } else if languageTranslationPicker2 == 32 {
                languageTranslation2 = "Kannada"
                destinationLanguage = "kn"
            } else if languageTranslationPicker2 == 33 {
                languageTranslation2 = "Korean"
                destinationLanguage = "ko"
            } else if languageTranslationPicker2 == 34 {
                languageTranslation2 = "Lithuanian"
                destinationLanguage = "lt"
            } else if languageTranslationPicker2 == 35 {
                languageTranslation2 = "Latvian"
                destinationLanguage = "lv"
            } else if languageTranslationPicker2 == 36 {
                languageTranslation2 = "Macedonian"
                destinationLanguage = "mk"
            } else if languageTranslationPicker2 == 37 {
                languageTranslation2 = "Marathi"
                destinationLanguage = "mr"
            } else if languageTranslationPicker2 == 38 {
                languageTranslation2 = "Malay"
                destinationLanguage = "ms"
            } else if languageTranslationPicker2 == 39 {
                languageTranslation2 = "Maltese"
                destinationLanguage = "mt"
            } else if languageTranslationPicker2 == 40 {
                languageTranslation2 = "Dutch"
                destinationLanguage = "nl"
            } else if languageTranslationPicker2 == 41 {
                languageTranslation2 = "Norwegian"
                destinationLanguage = "no"
            } else if languageTranslationPicker2 == 42 {
                languageTranslation2 = "Polish"
                destinationLanguage = "pl"
            } else if languageTranslationPicker2 == 43 {
                languageTranslation2 = "Portuguese"
                destinationLanguage = "pt"
            } else if languageTranslationPicker2 == 44 {
                languageTranslation2 = "Romanian"
                destinationLanguage = "ro"
            } else if languageTranslationPicker2 == 45 {
                languageTranslation2 = "Russian"
                destinationLanguage = "ru"
            } else if languageTranslationPicker2 == 46 {
                languageTranslation2 = "Slovak"
                destinationLanguage = "sk"
            } else if languageTranslationPicker2 == 47 {
                languageTranslation2 = "Slovenian"
                destinationLanguage = "sl"
            } else if languageTranslationPicker2 == 48 {
                languageTranslation2 = "Albanian"
                destinationLanguage = "sq"
            } else if languageTranslationPicker2 == 49 {
                languageTranslation2 = "Swedish"
                destinationLanguage = "sv"
            } else if languageTranslationPicker2 == 50 {
                languageTranslation2 = "Swahili"
                destinationLanguage = "sw"
            } else if languageTranslationPicker2 == 51 {
                languageTranslation2 = "Tamil"
                destinationLanguage = "ta"
            } else if languageTranslationPicker2 == 52 {
                languageTranslation2 = "Telugu"
                destinationLanguage = "te"
            } else if languageTranslationPicker2 == 53 {
                languageTranslation2 = "Thai"
                destinationLanguage = "th"
            } else if languageTranslationPicker2 == 54 {
                languageTranslation2 = "Tagalog"
                destinationLanguage = "tl"
            } else if languageTranslationPicker2 == 55 {
                languageTranslation2 = "Turkish"
                destinationLanguage = "tr"
            } else if languageTranslationPicker2 == 56 {
                languageTranslation2 = "Ukrainian"
                destinationLanguage = "uk"
            } else if languageTranslationPicker2 == 57 {
                languageTranslation2 = "Urdu"
                destinationLanguage = "ur"
            } else if languageTranslationPicker2 == 58 {
                languageTranslation2 = "Vietnamese"
                destinationLanguage = "vi"
            } else if languageTranslationPicker2 == 59 {
                languageTranslation2 = "Chinese"
                destinationLanguage = "zh"
            } else {
                print("Unknown")
            }
        }
    }
}

struct Translation_Previews: PreviewProvider {
    static var previews: some View {
        Translation()
    }
}
