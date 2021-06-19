//
//  SmartReply.swift
//  Translate.it
//
//  Created by Mark Howard on 13/06/2021.
//

import SwiftUI
import MLKitSmartReply

struct SmartReplys: View {
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    @State var text = "Type Some Text..."
    @State var smartReplyResults = "Smart Reply Results"
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
                Text("\(smartReplyResults)")
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
                        Text("Smart Reply Features")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                    }
                        Text("Generate Reply's To Messages On-Device Using Machine Learning.")
                }
                    .padding()
                }
                .padding()
                Spacer()
        }
            .navigationTitle("Smart Reply")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {var conversation: [TextMessage] = []
                            let message = TextMessage(
                                text: text,
                                timestamp: Date().timeIntervalSince1970,
                                userID: "userId",
                                isLocalUser: false)
                            conversation.append(message)
                        SmartReply.smartReply().suggestReplies(for: conversation) { result, error in
                            guard error == nil, let result = result else {
                                return
                            }
                            if (result.status == .notSupportedLanguage) {
                                smartReplyResults = "Not A Supported Language"
                            } else if (result.status == .success) {
                                smartReplyResults = ""
                                for suggestion in result.suggestions {
                                    smartReplyResults += "\(suggestion.text)\n"
                                }
                            } else if (result.status == .noReply) {
                                smartReplyResults = "No Suitable Reply Can Be Suggested"
                            }
                        }
                    }) {
                        Image(systemName: "play.fill")
                    }
                    .help("Start Reply")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {hideKeyboard()}) {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    .help("Hide Keyboard")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {let pasteboard = UIPasteboard.general
                        pasteboard.string = smartReplyResults
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
                Text("\(smartReplyResults)")
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
                        Text("Smart Reply Features")
                            .bold()
                            .font(.title3)
                            .padding()
                        Spacer()
                    }
                        Text("Generate Reply's To Messages On-Device Using Machine Learning.")
                }
                    .padding()
                }
                .padding()
                Spacer()
        }
            .navigationTitle("Smart Reply")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {var conversation: [TextMessage] = []
                            let message = TextMessage(
                                text: text,
                                timestamp: Date().timeIntervalSince1970,
                                userID: "userId",
                                isLocalUser: false)
                            conversation.append(message)
                        SmartReply.smartReply().suggestReplies(for: conversation) { result, error in
                            guard error == nil, let result = result else {
                                return
                            }
                            if (result.status == .notSupportedLanguage) {
                                smartReplyResults = "Not A Supported Language"
                            } else if (result.status == .success) {
                                smartReplyResults = ""
                                for suggestion in result.suggestions {
                                    smartReplyResults += "\(suggestion.text)\n"
                                }
                            } else if (result.status == .noReply) {
                                smartReplyResults = "No Suitable Reply Can Be Suggested"
                            }
                        }
                    }) {
                        Image(systemName: "play.fill")
                    }
                    .help("Start Reply")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {hideKeyboard()}) {
                        Image(systemName: "keyboard.chevron.compact.down")
                    }
                    .help("Hide Keyboard")
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: {let pasteboard = UIPasteboard.general
                        pasteboard.string = smartReplyResults
                    }) {
                        Image(systemName: "doc.on.doc")
                    }
                    .help("Copy Result")
                }
            }
        }
    }
}

struct SmartReply_Previews: PreviewProvider {
    static var previews: some View {
        SmartReplys()
    }
}
