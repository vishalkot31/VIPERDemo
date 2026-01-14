//
//  MoviePresenter.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import Foundation

//Presenter connects View ↔ Interactor ↔ Router

//THis protocol will ask interactor to ftech movies novies
protocol MovieViewToPresenterProtocol {
    func ViewdidLoad()
}


class MoviePresenter:MovieViewToPresenterProtocol {
   
    weak var view : MoviewPresenterToViewProtocl?//cycle view haa
    var interactor : MoviewInteractorProtocol?
    var router : MovieRouterProtocol?
    
    //Asl interactor top fetch movies
    func ViewdidLoad() {
        interactor?.fetchMovies()
    }
}

//This prtoocl tell interacor movies are fetched and pass back to view
protocol MovieInteratToPresenterProtcol:AnyObject {
    func didFtechMovies(movie:[Movie])
}

extension MoviePresenter:MovieInteratToPresenterProtcol{
    
    func didFtechMovies(movie: [Movie]) {
        view?.showMovies(movies: movie)
    }

    //movies fetched and now pass to view
   

    
}
