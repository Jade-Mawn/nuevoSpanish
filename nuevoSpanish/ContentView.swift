//
//  ContentView.swift
//  nuevoSpanish
//
//  Created by Jade Mawn on 5/5/24.
//
import SwiftUI

struct ContentView: View {
    @State private var selectedLevel: Int?
    
    var body: some View {
        ZStack {
            Color.yellow.opacity(0.60)
                .ignoresSafeArea()
            
            ScrollView(showsIndicators: false) {
                VStack {
                    Text("Select a level:")
                        .font(.title)
                        .padding()
                    
                    HStack {
                        VStack {
                            ForEach(1..<11) { level in
                                CircleButton(text:String(level), isSelected: selectedLevel == level) {
                                    self.selectedLevel = level
                                }
                                .padding()
                            }
                        }
                        
                    }
                    
                    if let selectedLevel = selectedLevel {
                        Text("Selected level: \(selectedLevel)")
                            .padding()
                    }
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
