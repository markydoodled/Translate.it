//
//  ContentView.swift
//  Translate.it
//
//  Created by Mark Howard on 23/05/2021.
//

import SwiftUI
import MLKitTranslate
import MessageUI

struct ContentView: View {
    init() {
            UITextView.appearance().backgroundColor = .clear
        }
    @State var tabSelection = 1
    @State var showingSettings = false
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    var body: some View {
        if horizontalSizeClass == .compact {
        TabView(selection: $tabSelection) {
            Translation()
                .tag(1)
                .tabItem {
                    VStack {
                        Image(systemName: "rectangle.3.offgrid.bubble.left")
                        Text("Translation")
                    }
                }
            LanguageDetection()
                .tag(2)
                .tabItem {
                    VStack {
                        Image(systemName: "person")
                        Text("Language")
                    }
                }
            NavigationView {
                ScrollView {
                    HStack {
                        Spacer()
                        VStack {
                Group {
                HStack {
                    NavigationLink(destination: PositivityDetection()) {
                        VStack {
                            Image(systemName: "person.fill.checkmark")
                                .foregroundColor(.white)
                                .font(.title)
                                .background(Rectangle().cornerRadius(10).frame(width: 60, height: 60))
                                .padding()
                            Text("Positivity Detection")
                                .bold()
                                .foregroundColor(.primary)
                        }
                    }
                }
                .padding()
                    HStack {
                        NavigationLink(destination: PeoplePlacesOrganisationDetection()) {
                            VStack {
                                Image(systemName: "building.2.fill")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .background(Rectangle().cornerRadius(10).frame(width: 60, height: 60))
                                    .padding()
                                Text("People, Places And Organistaions Detection")
                                    .bold()
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding()
                    HStack {
                        NavigationLink(destination: TextSpeechClassification()) {
                            VStack {
                                Image(systemName: "text.magnifyingglass")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .background(Rectangle().cornerRadius(10).frame(width: 60, height: 60))
                                    .padding()
                                Text("Speech Classification")
                                    .bold()
                                    .foregroundColor(.primary)
                            }
                        }
                    }
                    .padding()
                    Spacer()
            }
                            Group {
                                    NavigationLink(destination: SmartReplys()) {
                                        VStack {
                                            Image(systemName: "arrowshape.turn.up.left.fill")
                                                .foregroundColor(.white)
                                                .font(.title)
                                                .background(Rectangle().cornerRadius(10).frame(width: 60, height: 60))
                                                .padding()
                                            Text("Smart Reply")
                                                .bold()
                                                .foregroundColor(.primary)
                                        }
                                    }
                                .padding()
                            }
                    }
                    Spacer()
                }
            }
                .navigationTitle("More")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.showingSettings = true}) {
                            Image(systemName: "gearshape")
                        }
                        .help("Settings")
                        .sheet(isPresented: $showingSettings) {
                            NavigationView {
                                Form {
                                    Section(header: Label("Translation", systemImage: "rectangle.3.offgrid.bubble.left")) {
                                        NavigationLink(destination: ModelManage()) {
                                            Text("Delete A Model")
                                        }
                                    }
                                    Section(header: Label("Misc.", systemImage: "ellipsis.circle")) {
                                        HStack {
                                           Text("Version")
                                            Spacer()
                                            Text("1.1.1")
                                        }
                                        HStack {
                                            Text("Build")
                                            Spacer()
                                            Text("1")
                                        }
                                        HStack {
                                            Text("Feedback")
                                            Spacer()
                                            Button(action: {self.isShowingMailView.toggle()}) {
                                                Text("Send Feedback")
                                            }
                                            .sheet(isPresented: $isShowingMailView) {
                                                MailView(isShowing: self.$isShowingMailView, result: self.$result)
                                            }
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
            NavigationView {
                List {
                       LandscapeNavigationView()
                    NavigationLink(destination: SmartReplys()) {
                        Label("Smart Reply", systemImage: "arrowshape.turn.up.left.fill")
                    }
                }
                .listStyle(SidebarListStyle())
                .navigationTitle("Translate.it")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {self.showingSettings = true}) {
                            Image(systemName: "gearshape")
                        }
                        .help("Settings")
                    }
                }
                .sheet(isPresented: $showingSettings) {
                    NavigationView {
                    Form {
                        Section(header: Label("Translation", systemImage: "rectangle.3.offgrid.bubble.left")) {
                            NavigationLink(destination: ModelManage()) {
                                Text("Delete A Model")
                            }
                        }
                        Section(header: Label("Misc.", systemImage: "ellipsis.circle")) {
                            HStack {
                               Text("Version")
                                Spacer()
                                Text("1.1.1")
                            }
                            HStack {
                                Text("Build")
                                Spacer()
                                Text("1")
                            }
                            HStack {
                                Text("Feedback")
                                Spacer()
                                Button(action: {self.isShowingMailView.toggle()}) {
                                    Text("Send Feedback")
                                }
                                .sheet(isPresented: $isShowingMailView) {
                                    MailView(isShowing: self.$isShowingMailView, result: self.$result)
                                }
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
                VStack {
            Image("AppsIcon")
                .resizable()
                .cornerRadius(25)
                .frame(width: 150, height: 150)
                    Text("Translate.it")
                        .font(.title2)
                        .bold()
                        .padding()
            }
            }
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

struct ModelManage: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @AppStorage("deletePicker") var languageTranslationPicker1 = 1
    @AppStorage("deleteLanguage") var languageTranslation1 = "Afrikaans"
    @AppStorage("language") var sourceLanguage = TranslateLanguage.afrikaans
    @State var showingAlert = false
    var body: some View {
        if horizontalSizeClass == .compact {
            VStack {
                GroupBox {
                    VStack {
                Picker("Model - \(languageTranslation1)", selection: $languageTranslationPicker1) {
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
                .padding()
                        Button(action: {self.showingAlert = true
                            let seconds = 4.0
                            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                let model = TranslateRemoteModel.translateRemoteModel(language: sourceLanguage)
                                    ModelManager.modelManager().deleteDownloadedModel(model) { error in
                                        guard error == nil else { return }
                                        self.showingAlert = false
                                    }
                            }
                }) {
                    Label("Delete Model", systemImage: "trash")
                        .padding()
                        .foregroundColor(.white)
                }
                .background(Rectangle().foregroundColor(.accentColor).cornerRadius(10))
                .padding()
            }
            }
                .padding()
        }
            .navigationTitle("Delete A Model")
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Deleting"), message: Text("Deleting The Selected Model. Please Wait..."), dismissButton: .cancel() {print("Cancel")
                    let options = TranslatorOptions(sourceLanguage: .english, targetLanguage: sourceLanguage)
                        let translator = Translator.translator(options: options)
                        let conditions = ModelDownloadConditions(allowsCellularAccess: true, allowsBackgroundDownloading: true)
                    translator.downloadModelIfNeeded(with: conditions) { error in
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
        }
        } else {
            VStack {
                GroupBox {
                    HStack {
                        Spacer()
                Picker("Model - \(languageTranslation1)", selection: $languageTranslationPicker1) {
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
                .padding()
                        Button(action: {self.showingAlert = true
                            let seconds = 4.0
                            DispatchQueue.main.asyncAfter(deadline: .now() + seconds) {
                                let model = TranslateRemoteModel.translateRemoteModel(language: sourceLanguage)
                                    ModelManager.modelManager().deleteDownloadedModel(model) { error in
                                        guard error == nil else { return }
                                        self.showingAlert = false
                                    }
                            }
                }) {
                    Label("Delete Model", systemImage: "trash")
                        .padding()
                        .foregroundColor(.white)
                }
                .background(Rectangle().foregroundColor(.accentColor).cornerRadius(10))
                .padding()
                        Spacer()
            }
            }
                .padding()
        }
            .navigationTitle("Delete A Model")
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Deleting"), message: Text("Deleting The Selected Model. Please Wait..."), dismissButton: .cancel() {print("Cancel")
                    let options = TranslatorOptions(sourceLanguage: .english, targetLanguage: sourceLanguage)
                        let translator = Translator.translator(options: options)
                        let conditions = ModelDownloadConditions(allowsCellularAccess: true, allowsBackgroundDownloading: true)
                    translator.downloadModelIfNeeded(with: conditions) { error in
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
        }
    }
}
}

struct LandscapeNavigationView: View {
    var body: some View {
        NavigationLink(destination: Translation()) {
            Label("Translation", systemImage: "rectangle.3.offgrid.bubble.left")
        }
        NavigationLink(destination: LanguageDetection()) {
            Label("Language", systemImage: "person")
        }
        NavigationLink(destination: PositivityDetection()) {
            Label("Positivity Detection", systemImage: "person.fill.checkmark")
        }
        NavigationLink(destination: PeoplePlacesOrganisationDetection()) {
            Label("People, Places And Organisation Detection", systemImage: "building.2.fill")
        }
        NavigationLink(destination: TextSpeechClassification()) {
            Label("Speech Classification", systemImage: "text.magnifyingglass")
        }
    }
}

struct MailView: UIViewControllerRepresentable {

    @Binding var isShowing: Bool
    @Binding var result: Result<MFMailComposeResult, Error>?

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var isShowing: Bool
        @Binding var result: Result<MFMailComposeResult, Error>?

        init(isShowing: Binding<Bool>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _isShowing = isShowing
            _result = result
        }

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            defer {
                isShowing = false
            }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(isShowing: $isShowing,
                           result: $result)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: UIViewControllerRepresentableContext<MailView>) {

    }
}
