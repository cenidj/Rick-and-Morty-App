//
//  API.swift
//  RickAndMortyApp
//
//  Created by Cesario Nivar on 4/9/23.
//

import Foundation

func fetchCharacters(completionHandler: @escaping ([Character]) -> Void) {
    let url = URL(string: "https://rickandmortyapi.com/api/character")!
    let task = URLSession.shared.dataTask(with: url, completionHandler: {(data, response, error) in
        
        if let error = error {
            print("Error getting the characters \(error)")
            return
        }
        
        guard let httpResponse = response as? HTTPURLResponse, (200...299).contains(httpResponse.statusCode) else {
            print("Error with the response, unexpected status code: \(String(describing: response))")
            return
        }
        
        if let data = data,
           let characters = try? JSONDecoder().decode(CharactersResponse.self, from: data) {
                completionHandler(characters.results)
             }
        })
    task.resume()
}
