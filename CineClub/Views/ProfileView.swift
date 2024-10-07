//
//  ProfileView.swift
//  CineClub
//
//  Created by Giovanna Micher on 06/10/24.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        ZStack {
            Color.background
            VStack(alignment: .leading) {
                Text("Perfil")
                    .foregroundStyle(.white)
                    .font(.system(size: 34))
                .bold()
                VStack(spacing: 20) {
                    Image("Everton")
                        .clipShape(Circle())
                    Text("Everton Assis de Oliveira")
                        .font(.system(size: 24))
                        .foregroundStyle(.white)
                        .bold()
                    Text("Sempre busco filmes que me façam refletir e sentir. Adoro filmes que desafiam a narrativa tradicional, com roteiros profundos e personagens complexos. Gosto especialmente de dramas intensos, ficções científicas e thrillers psicológicos que me deixam pensando muito tempo após os créditos finais.")
                        .foregroundStyle(.white)
                }
                
                Spacer()
            }
            .padding(.horizontal, 16)
            .padding(.top, 100)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    ProfileView()
}
