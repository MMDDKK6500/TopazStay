//
//  TopazStayApp.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 07/04/26.
//

import SwiftUI

@main
struct TopazStayApp: App {
    @State private var telaAtual: String = "splash"
    
    var body: some Scene {
        WindowGroup {
            ZStack {
                if telaAtual == "splash" {
                    TelaInicial(aoAvancar: {
                        telaAtual = "login"
                    })
                    .transition(.opacity)
                } else if telaAtual == "login" {
                    TelaLogin(aoLogar: {
                        withAnimation { telaAtual = "home" }
                    })
                    .transition(.opacity)
                } else {
                    ContentView()
                        .transition(.opacity)
                }
            }
        }
    }
}
