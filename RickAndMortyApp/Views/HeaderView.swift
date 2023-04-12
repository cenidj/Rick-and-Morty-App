//
//  HeaderView.swift
//  RickAndMortyApp
//
//  Created by Cesario Nivar on 3/30/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                LinearGradient(colors: [.white, .gray], startPoint: .top, endPoint: .bottomLeading)
                
                Text("The Rick and Morty Characters")
                    .font(.title)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.all)
            }
            .ignoresSafeArea(.all, edges: .all)
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
