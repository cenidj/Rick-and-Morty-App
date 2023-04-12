//
//  CharactersList.swift
//  RickAndMortyApp
//
//  Created by Cesario Nivar on 4/9/23.
//

import SwiftUI

struct CharactersList: View {
    let characters: [Character]
    
    var body: some View {
        List {
            ForEach(characters) { character in
                CharacterCell(character: character)
            }
            .swipeActions(edge: .trailing) {
                Button(role: .destructive) {
                    // Deleted from ui but still need to be deleted from DB
                } label: {
                    Image(systemName: "trash")
                }
                .tint(.red)
                
                Button {
                    // Perform starred characters
                } label: {
                    Image(systemName: "star")
                }
                .tint(.yellow)
            }
        }
        .listStyle(.inset)
    }
}

struct CharactersList_Previews: PreviewProvider {
    static var previews: some View {
        CharactersList(characters: [])
    }
}
