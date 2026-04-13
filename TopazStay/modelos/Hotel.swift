//
//  Hotel.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 09/04/26.
//

struct Hotel {
    
    var nome: String
    var local: String
    var avaliacao: Int
    var descricao: String
    var imagem: String
    var favorito: Bool
    var categoria: CategoriaHotel
    // Coiso pra coisar o coiso do troço
    var preco: Double {
        var menorPreco: Double = quartos.first?.valor ?? 0.0
            
        for quarto in quartos {
            if (quarto.valor < menorPreco) {
                menorPreco = quarto.valor
            }
        }
            
        return menorPreco
    }
    
    var quartos: [Quarto]
    
    var comentarios: [Comentario]
    
}

