//
//  ContentView.swift
//  RickAndMortyApp
//
//  Created by Cesario Nivar on 3/30/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var characterList: [Character] = []
    
    var body: some View {
        VStack {
            HeaderView()
            CharactersList(characters: characterList)
        }
        .onAppear {
            fetchCharacters { characters in
                self.characterList = characters
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
