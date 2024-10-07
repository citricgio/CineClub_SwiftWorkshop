//
//  MoviesView.swift
//  CineClub
//
//  Created by Giovanna Micher on 07/10/24.
//

import SwiftUI

struct MoviesView: View {
    let moviesNames: [String] = ["Avatar", "Vingadores Ultimato", "Titanic"]
    let images: [String] = ["avatar-1", "vingadores-ultimato", "titanic"]
    let releaseDates: [String] = ["10/04/2003", "02/05/2009", "20/02/2015"]
    let ratings: [String] = ["4.2", "5.0", "4.5"]
    @State var isFavorite: [Bool] = [false, false, false]
    let descriptions: [String] = [
        "No exuberante mundo alienígena de Pandora vivem os Na'vi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora.",
        "Em Vingadores: Ultimato, após Thanos eliminar metade das criaturas vivas em Vingadores: Guerra Infinita, os heróis precisam lidar com a dor da perda de amigos e seus entes queridos. Com Tony Stark (Robert Downey Jr.) vagando perdido no espaço sem água nem comida, o Capitão América/Steve Rogers (Chris Evans) e a Viúva Negra/Natasha Romanov (Scarlett Johansson) precisam liderar a resistência contra o titã louco.",
        "Jack Dawson (Leonardo DiCaprio) é um jovem aventureiro que, na mesa de jogo, ganha uma passagem para a primeira viagem do transatlântico Titanic. Trata-se de um luxuoso e imponente navio, anunciado na época como inafundável, que parte para os Estados Unidos. Nele está também Rose DeWitt Bukater (Kate Winslet), a jovem noiva de Caledon Hockley (Billy Zane)."
    ]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MoviesView()
}
