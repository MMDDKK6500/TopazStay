//
//  InputView.swift
//  TopazStay
//
//  Created by AGATHA BARBOSA MARINHO DOS SANTOS on 09/04/26.
//

import SwiftUI

struct TextFieldView: View {
    var placeholder: String
    @Binding var texto: String // O @Binding serve para o componente "avisar" à tela o que foi digitado
    
    var body: some View {
        TextField("", text: $texto, prompt: Text(placeholder).foregroundColor(.cinzaTexto.opacity(0.8)))
            .padding(.leading, 10)
            .padding(.vertical, 8)
            .padding(.horizontal, 12)
            .background(Color.white)
            .cornerRadius(10)
            .shadow(color: Color.black.opacity(0.1), radius: 5)
            .font(.custom("Poppins-Regular", size: 15))
    }
}
