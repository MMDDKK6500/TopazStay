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
        local: "São Paulo - Jardins",
        avaliacao: 5,
        descricao: "Hotel muito bom com uma descrição muito boa que nunca acaba pois esse hotel realmente é muito muito bom ta?\n\nTipo, muito bom mesmo mano, c não tem IDEIA do quão bom esse hotel é mano, slg, se chama copacaban palace, e vc NUNCA vai adivinhar isso... fica em copacabana",
        imagem: "imagens/hoteis/2",
        favorito: true,
        categoria: CategoriaHotel.hotel,
        quartos: [
            Quarto(
                nome: "Padrão",
                descricao: "Descrição genial",
                maxPessoas: 2,
                valor: 350,
                imagem: "imagens/quartos/8"
            ),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8")],
        comentarios: [
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            ),
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            ),
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            )
        ]),
    Hotel(
        nome: "Hotel Palace",
        local: "São Paulo - Jardins",
        avaliacao: 5,
        descricao: "Hotel muito bom com uma descrição muito boa que nunca acaba pois esse hotel realmente é muito muito bom ta?\n\nTipo, muito bom mesmo mano, c não tem IDEIA do quão bom esse hotel é mano, slg, se chama copacaban palace, e vc NUNCA vai adivinhar isso... fica em copacabana",
        imagem: "imagens/hoteis/2",
        favorito: true,
        categoria: CategoriaHotel.hotel,
        quartos: [
            Quarto(
                nome: "Padrão",
                descricao: "Descrição genial",
                maxPessoas: 2,
                valor: 350,
                imagem: "imagens/quartos/8"
            ),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8"),
            Quarto(nome: "Padrão", descricao: "Descrição genial", maxPessoas: 2, valor: 350, imagem: "imagens/quartos/8")],
        comentarios: [
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            ),
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            ),
            Comentario(
                foto: "logo",
                nome: "Guilherme",
                avaliacao: 4,
                texto: "Hotel incrível, recomendo muito!dsadsdsadsadsadsadsdasdsadsadasdsadsadasd",
            )
        ])
]
