//
//  MovieInteractor.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import Foundation
//Buiness Logic
//API calls/database operaions all are in this

//data is created here
protocol MoviewInteractorProtocol {
    func fetchMovies()
}

class MovieInteractor:MoviewInteractorProtocol {
    
    weak var presenter:MovieInteratToPresenterProtcol?
    //It wil get the moveis from api or db or any
    func fetchMovies() {
        //Call api for fetch
        // Simulating API response
            let movies = [
                Movie(id: 1, title: "Inception"),
                Movie(id: 2, title: "Interstellar")
            ]
        
        //after fetching movies will send movies to presenter tht i ahve done my work
        
        presenter?.didFtechMovies(movie: movies)
    }
    
}
