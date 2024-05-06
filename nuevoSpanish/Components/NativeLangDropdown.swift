//
//  NativeLangDropdown.swift
//  nuevoSpanish
//
//  Created by Jade Mawn on 5/5/24.
//
import SwiftUI

struct NativeLangDropdown: View {
    @State private var selectedLanguage = "English"
    var languages = ["English", "French", "German"] // Add more languages as needed
    
    var body: some View {
        VStack {
            Picker(selection: $selectedLanguage, label: Text("")) {
                ForEach(languages, id: \.self) {
                    Text($0)
                }
            }
        }
    }
}

struct NativeLangDropdown_Previews: PreviewProvider {
    static var previews: some View {
        NativeLangDropdown()
    }
}
