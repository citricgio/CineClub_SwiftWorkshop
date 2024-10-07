//
//  HomeView.swift
//  CineClub
//
//  Created by Giovanna Micher on 06/10/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.background
            VStack {
                Image("CineClubLogo")
                Text("O lugar ideal para buscar, salvar e organizar seus filmes favoritos!")
                    .font(.title3)
                    .foregroundStyle(.white)
                    .bold()
                
                NavigationLink {
                    TabView {
                        MoviesView()
                            .tabItem {
                                Label("Filmes", systemImage: "movieclapper")
                            }
                        
                        FavoriteMoviesView()
                            .tabItem {
                                Label("Favoritos", systemImage: "heart")
                            }
                        ProfileView()
                            .tabItem {
                                Label("Perfil", systemImage: "person.circle")
                            }
                    }
                    .tint(.blue)
                    .navigationBarBackButtonHidden(true)
                } label: {
                    Text("Quero começar")
                        .foregroundStyle(.black)
                        .bold()
                        .padding(.vertical, 19)
                        .padding(.horizontal, 40)
                        .background(.yellowButton)
                        .clipShape(RoundedRectangle(cornerRadius: 32))
                }
                .padding(.top, 24)
                
            }
        }
        .ignoresSafeArea()
        
    }
}

#Preview {
    NavigationStack {
        HomeView()
    }
}


