//
//  Hoteis.swift
//  TopazStay
//
//  Created by JOAO DUQUE NARDELLI WANDERMUREN on 13/04/26.
//

import Foundation

var hoteis: [Hotel] = [
    Hotel(
        nome: "Hotel Palace",
        local: "São Paulo - Jardins",
        avaliacao: 5,
        descricao:
"""
Hotel sofisticado com ambiente elegante e confortável, ideal para quem busca uma estadia premium. Perfeito tanto para lazer quanto para negócios.

O hotel tem café da manhã incluso e almoço a parte, com academia, piscina e psicina interna aquecida para os nossos hóspedes.

O horário de check-in é a partir das 14:00 e o check-out até as 12:00 do dia do fim da reserva.
""",
        imagem: "imagens/hoteis/4",
        favorito: false,
        categoria: .hotel,
        quartos: [
            Quarto(
                nome: "Quarto Standart",
                descricao: "O ambiente é bem organizado, com decoração moderna e iluminação aconchegante.",
                maxPessoas: 2,
                valor: 350.00,
                imagem: "imagens/quartos/13"
            ),
            Quarto(
                nome: "Quarto Comfort",
                descricao: "Quarto com mais conforto e espaço, ideal para a familia toda.",
                maxPessoas: 4,
                valor: 600.00,
                imagem: "imagens/quartos/5"
            ),
            Quarto(
                nome: "Quarto Premium",
                descricao: "Ideal para passeios mais luxuosos, com camas extra comfort e serviço de quarto incluso.",
                maxPessoas: 2,
                valor: 900.00,
                imagem: "imagens/quartos/10"
            )
        ],
        comentarios: [
            Comentario(
                foto: "logo",
                nome: "Guilherme Freitas",
                avaliacao: 4,
                texto: "O quarto é muito confortável, bem limpo e organizado. A cama é excelente e proporcionou uma ótima noite de sono."
            )
        ]
    ),
    Hotel(
        nome: "Boutique Hotel",
        local: "Curitiba - Centro",
        avaliacao: 3,
        descricao:
"""
Hotel sofisticado com ambiente elegante e confortável, ideal para quem busca uma estadia premium. Perfeito tanto para lazer quanto para negócios.

O hotel tem café da manhã incluso e almoço a parte, com academia, piscina e psicina interna aquecida para os nossos hóspedes.

O horário de check-in é a partir das 14:00 e o check-out até as 12:00 do dia do fim da reserva.
""",
        imagem: "imagens/hoteis/7",
        favorito: false,
        categoria: .hotel,
        quartos: [
            Quarto(
                nome: "Quarto Standart",
                descricao: "O ambiente é bem organizado, com decoração moderna e iluminação aconchegante.",
                maxPessoas: 2,
                valor: 390.00,
                imagem: "imagens/quartos/11"
            ),
            Quarto(
                nome: "Quarto Comfort",
                descricao: "Quarto com mais conforto e espaço, ideal para a familia toda.",
                maxPessoas: 4,
                valor: 700.00,
                imagem: "imagens/quartos/9"
            ),
            Quarto(
                nome: "Quarto Premium",
                descricao: "Ideal para passeios mais luxuosos, com camas extra comfort e serviço de quarto incluso.",
                maxPessoas: 2,
                valor: 1200.00,
                imagem: "imagens/quartos/4"
            )
        ],
        comentarios: [
            Comentario(
                foto: "logo",
                nome: "Guilherme Freitas",
                avaliacao: 4,
                texto: "O quarto é muito confortável, bem limpo e organizado. A cama é excelente e proporcionou uma ótima noite de sono."
            )
        ]
    )
]
