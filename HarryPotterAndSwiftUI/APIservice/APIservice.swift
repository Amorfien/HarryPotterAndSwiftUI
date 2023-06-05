//
//  APIservice.swift
//  HarryPotterAndSwiftUI
//
//  Created by Pavel Grigorev on 24.05.2023.
//

import Foundation

final class APIservice {

    private func makeTask(_ type: TaskMode, completion: @escaping (Result<Data, Error>) -> Void) {

        let server = "https://hp-api.onrender.com/api/"
        let urlStr = server + type.rawValue

        guard let apiURL = URL(string: urlStr) else { return }
        let session = URLSession.shared
        let task = session.dataTask(with: apiURL) { data, response, error in
            guard let data else {
                if let error {
                    completion(.failure(error))
                }
                return
            }
            completion(.success(data))
        }
        task.resume()

    }

    func getAllCharacters(completion: @escaping ([Person]) -> Void) {

        makeTask(.allCharacters) { result in
            switch result {
            case .success(let data):
                do {
                    let characters = try JSONDecoder().decode([Person].self, from: data)
                    completion(characters)
                } catch {}
            case .failure:
                completion([])
            }
        }

    }




    enum TaskMode: String {
        case allCharacters = "characters"
        case allSpells = "spells"
    }

}
