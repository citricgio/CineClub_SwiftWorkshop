//
//  FavoriteMoviesView.swift
//  CineClub
//
//  Created by Giovanna Micher on 06/10/24.
//

import SwiftUI

struct FavoriteMoviesView: View {
    let moviesNames: [String] = ["Avatar", "Vingadores Ultimato", "Titanic"]
    let images: [String] = ["avatar-1", "vingadores-ultimato", "titanic"]
    let releaseDates: [String] = ["10/04/2003", "02/05/2009", "20/02/2015"]
    let ratings: [String] = ["4.2", "5.0", "4.5"]
    
    var body: some View {
        ZStack {
            Color.background
            VStack(alignment: .leading, spacing: 20) {
                Text("Favoritos")
                    .foregroundStyle(.white)
                    .font(.system(size: 34))
                    .bold()
                
                
                LazyVGrid(columns: [GridItem(), GridItem()], spacing: 30) {
                    
                    ForEach(0..<3) { index in
                        VStack(spacing: 10) {
                            Image(images[index])
                                .resizable()
                                .frame(width: 95, height: 120)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                            Text(moviesNames[index])
                                .font(.title3)
                                .bold()
                                .foregroundStyle(Color.white)
                                .lineLimit(1)
                            HStack {
                                Text(ratings[index])
                                    .font(.system(size: 14))
                                .foregroundStyle(Color.white)
                                Image(systemName: "star.fill")
                                    .foregroundStyle(Color.yellowButton)
                                    .font(.system(size: 14))
                            }
                            Button {

                            } label: {
                                Image(systemName: "heart.fill")
                                    .foregroundStyle(Color.purpleHeartButton)
                            }
                            
                        }
                        .frame(width: 140)
                    }
                }
                .padding(.horizontal, 10)
                Spacer()
            }
            .padding(.top, 100)
            .padding(.horizontal, 16)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    FavoriteMoviesView()
}
