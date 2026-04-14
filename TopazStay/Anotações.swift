//
//  Anotações.swift
//  TopazStay
//
//  Created by FELIPE COLARES CARDOSO on 14/04/26.
//
/*
 /*   inserindo popups
  @State private var mostrarPopup = false
  @State private var quartoParaPopup: Quarto? = nil
  
  ZStack{
   // codigo completo
  }//embaixo do stack ( da tela )
  .disabled(mostrarPopup) // Desativa o scroll quando o popup está aberto
  .blur(radius: mostrarPopup ? 3 : 0) // Efeito visual opcional de desfoque
  
  
  // --- CAMADA DO POPUP ---
  if mostrarPopup, let quarto = quartoParaPopup {
      // Fundo escurecido
      Color.black.opacity(0.4)
          .ignoresSafeArea()
          .onTapGesture {
              withAnimation { mostrarPopup = false }
          }
      
      // Card de Detalhes (Popup)
      PopupQuarto(quarto: quarto, mostrar: $mostrarPopup, menuInferiorMostrar: $menuInferior)
          .transition(.move(edge: .bottom).combined(with: .opacity))
          .zIndex(1)
  }
  
  no script do popup...
  no começo
  @Binding var mostrar: Bool
  
  na lógica
  
  Button(action: { withAnimation {
      menuInferiorMostrar = true
      mostrar = false
  }
  no preview
  \/\/\/
  @Previewable @State var mostrar = true
  @Previewable @State var mostrarTelaInferior = false
  PopupQuarto(quarto: hoteis[0].quartos[0], mostrar: $mostrar, menuInferiorMostrar: $mostrarTelaInferior)
  
  */
  

 */
