//
//  CircleButton.swift
//  nuevoSpanish
//
//  Created by Jade Mawn on 5/5/24.
//
import SwiftUI

struct CircleButton: View {
    var text: String
    var isSelected: Bool
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            Text(text)
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
                .background(isSelected ? Color.red.opacity(0.20) : Color.red.opacity(0.40))
                .clipShape(Circle())
        }
    }
}
