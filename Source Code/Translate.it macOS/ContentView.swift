//
//  ContentView.swift
//  Translate.it macOS
//
//  Created by Mark Howard on 13/06/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: Translation()) {
                    Label("Translation", systemImage: "rectangle.3.offgrid.bubble.left")
                }
                NavigationLink(destination: LanguageDetection()) {
                    Label("Language Detection", systemImage: "person")
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
            .listStyle(SidebarListStyle())
            .toolbar {
                ToolbarItem(placement: .navigation) {
                    Button(action: {toggleSidebar()}) {
                        Image(systemName: "sidebar.left")
                    }
                    .help("Toggle Sidebar")
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
    func toggleSidebar() {
        NSApp.keyWindow?.firstResponder?.tryToPerform(#selector(NSSplitViewController.toggleSidebar(_:)), with: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
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

struct CustomizableTextEditor: View {
    @Binding var text: String
    
    var body: some View {
        GeometryReader { geometry in
            NSScrollableTextViewRepresentable(text: $text, size: geometry.size)
        }
    }
}

struct NSScrollableTextViewRepresentable: NSViewRepresentable {
    typealias Representable = Self
    
    @Binding var text: String
    var size: CGSize
    
    @Environment(\.undoManager) var undoManger
    
    func makeNSView(context: Context) -> NSScrollView {
        
        let scrollView = NSTextView.scrollableTextView()
        let nsTextView = scrollView.documentView as! NSTextView
        
        nsTextView.delegate = context.coordinator
        
        nsTextView.drawsBackground = false
        
        nsTextView.allowsUndo = true
        
        return scrollView
    }
    
    func updateNSView(_ scrollView: NSScrollView, context: Context) {
        guard let nsTextView = scrollView.documentView as? NSTextView else {
            return
        }
        
        nsTextView.minSize = size
        
        nsTextView.string = text
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, NSTextViewDelegate {
        var parent: Representable
        
        init(_ textEditor: Representable) {
            self.parent = textEditor
        }
        
        func textDidChange(_ notification: Notification) {
            guard notification.name == NSText.didChangeNotification,
                let nsTextView = notification.object as? NSTextView else {
                return
            }
            parent.text = nsTextView.string
        }
        
        func undoManager(for view: NSTextView) -> UndoManager? {
            parent.undoManger
        }
    }
    
}
