//
//  ContentView.swift
//  AlertMarkdown
//
//  Created by Andrew Miotke on 6/12/21.
//

import SwiftUI

@available(iOS 15, *)
struct ContentView: View {
    
    @State private var showAlert = false
    @State private var multiLineAlert = false
    
    let alertMessage = "**Here is** some ~~mark~~ `down`"
    let alertMultilineMessage = "**Here is** some ~~mark~~ `down` for multi-line strings"
    let multiLineMessage = """
    **A multi-line string**
    That contains multiple `markdown styles`
    and [Links to Apple.com](https://www.apple.com)
    """
    
    var body: some View {
        VStack {
        Button {
            showAlert.toggle()
        } label: {
            Text(getAttributedString(alertMessage))
        }
        .alert(isPresented: $showAlert, content: {
            Alert(title: Text("Rendering Markdown"), message: Text(getAttributedString(alertMessage)), dismissButton: .cancel())
        })
        .padding()
        
        Button {
           multiLineAlert.toggle()
        } label: {
            Text(getAttributedString(alertMultilineMessage))
        }
        .alert(isPresented: $multiLineAlert, content: {
            Alert(title: Text("Rendering Markdown"), message: Text(getAttributedString(multiLineMessage)), dismissButton: .cancel())
        })
    }
    }
    
    func getAttributedString(_ markdown: String) -> AttributedString {
        do {
            let attributedString = try AttributedString(markdown: markdown)
            return attributedString
        } catch {
            print("Couldn't parse: \(error)")
        }
        return AttributedString("error parsing markdown")
    }
}

@available(iOS 15, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
