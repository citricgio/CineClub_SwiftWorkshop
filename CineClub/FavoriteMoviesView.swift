//
//  FavoriteMoviesView.swift
//  CineClub
//
//  Created by Giovanna Micher on 07/10/24.
//

import SwiftUI

struct FavoriteMoviesView: View {
    let moviesNames: [String] = ["Avatar", "Vingadores Ultimato", "Titanic"]
    let images: [String] = ["avatar-1", "vingadores-ultimato", "titanic"]
    let releaseDates: [String] = ["10/04/2003", "02/05/2009", "20/02/2015"]
    let ratings: [String] = ["4.2", "5.0", "4.5"]
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct FavoriteMoviesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteMoviesView()
    }
}
