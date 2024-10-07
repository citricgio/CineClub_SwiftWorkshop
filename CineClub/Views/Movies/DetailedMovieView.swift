//
//  DetailedMovieView.swift
//  CineClub
//
//  Created by Giovanna Micher on 06/10/24.
//

import SwiftUI

struct DetailedMovieView: View {
    var movieName: String
    var imageName: String
    var releaseDate: String
    var rating: String
    var description: String
    
    var body: some View {
        ZStack {
            Color.background
            VStack(alignment: .leading) {
                ZStack {
                    Image(imageName)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 437)
                        .clipped()
                    LinearGradient(gradient: Gradient(colors: [.background, Color.clear]), startPoint: .top, endPoint: .center)

                    LinearGradient(gradient: Gradient(colors: [.background, Color.clear]), startPoint: .bottom, endPoint: .center)
                }
                .frame(height: 437)
                
                VStack {
                    HStack {
                        Text(movieName)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .foregroundStyle(.white)
                        Spacer()
                        Text(rating)
                            .font(.system(size: 24))
                            .foregroundStyle(.white)
                        Image(systemName: "star.fill")
                            .font(.title2)
                            .foregroundStyle(.yellowButton)
                    }
                    Text(description)
                        .foregroundStyle(.white)
                        .padding(.top, 5)
                }
                .padding(.horizontal, 16)
                Spacer()
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    DetailedMovieView(movieName: "Avatar", imageName: "avatar-1", releaseDate: "10/04/2003", rating: "5.0", description: "No exuberante mundo alienígena de Pandora vivem os Na'vi, seres que parecem ser primitivos, mas são altamente evoluídos. Como o ambiente do planeta é tóxico, foram criados os avatares, corpos biológicos controlados pela mente humana que se movimentam livremente em Pandora. Jake Sully, um ex-fuzileiro naval paralítico, volta a andar através de um avatar e se apaixona por uma Na'vi. Esta paixão leva Jake a lutar pela sobrevivência de Pandora.")
}
