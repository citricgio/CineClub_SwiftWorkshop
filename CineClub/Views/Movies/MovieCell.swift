//
//  MovieCell.swift
//  CineClub
//
//  Created by Giovanna Micher on 06/10/24.
//

import SwiftUI

struct MovieCell: View {
    var movieName: String
    var imageName: String
    var releaseDate: String
    var rating: String
    
    
    var body: some View {
        HStack(alignment: .top) {
                Image(imageName)
                    .resizable()
                    .frame(width: 95, height: 120)
                .clipShape(RoundedRectangle(cornerRadius: 8))
            VStack(alignment: .leading) {
                HStack {
                    Text(movieName)
                        .font(.title3)
                        .bold()
                    .foregroundStyle(Color.white)
                    Spacer()
                    Image(systemName: "heart")
                        .foregroundStyle(Color.purpleHeartButton)
                }
                Text("Lançamento: \(releaseDate)")
                    .font(.callout)
                    .foregroundStyle(Color.gray)
                HStack(spacing: 5) {
                    Text(rating)
                        .font(.system(size: 14))
                        .foregroundStyle(Color.white)
                    Image(systemName: "star.fill")
                        .foregroundStyle(Color.yellowButton)
                        .font(.system(size: 14))
                }
                .padding(.top, 8)
            }
        }
    }
}

#Preview {
    MovieCell(movieName: "Avatar", imageName: "avatar-1", releaseDate: "10/04/2003", rating: "4.5")
        .background(.black)
}
