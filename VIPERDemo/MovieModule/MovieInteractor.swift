//
//  MovieInteractor.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import Foundation
//Buiness Logic
//API calls/database operaions
protocol MoviewInteractorProtocol {
    func fetchMovies()
}

protocol MovieIInteratcorOutputProtcol:AnyObject{
    func didFtechMovies(movies:[Movie])
}

class MovieInteractor:MoviewInteractorProtocol {
    
    weak var presenter:MovieIInteratcorOutputProtcol?
    func fetchMovies() {
        //Call api for fetch
        // Simulating API response
            let movies = [
                Movie(id: 1, title: "Inception"),
                Movie(id: 2, title: "Interstellar")
            ]
        //after fetching movies will send movies to presenter
            presenter?.didFtechMovies(movies: movies)
    }
    
    
}
