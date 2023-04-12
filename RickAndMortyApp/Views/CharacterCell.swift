//
//  CharacterCell.swift
//  RickAndMortyApp
//
//  Created by Cesario Nivar on 4/11/23.
//

import SwiftUI

struct CharacterCell: View {
    let character: Character
    var body: some View {
        HStack {
            AsyncImage(url: character.imgUrl) { image in
                            image.resizable()
                        } placeholder: {
                            Image(systemName: "goforward")
                                .resizable()
                                .padding()
                        }
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60)
                        .background(Color.gray.opacity(0.1))
                        .clipShape(Circle())
            
            Text(character.name)
                .padding(.all, 5)
                .font(.system(size: 24))
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct CharacterCell_Previews: PreviewProvider {
    static var previews: some View {
        CharacterCell(character: example())
    }
}
