//
//  MoviePresenter.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import Foundation

//It contains logic shoing view
//Presenter connects View ↔ Interactor ↔ Router
//Talks to view and Interactor
protocol MoviePresenterProtocol {
    func ViewdidLoad()
}

class MoviePresenter {
    
    weak var view : MoviewViewProtocl?
    var interactor : MoviewInteractorProtocol?
    var router : MovieRouteProtocol?
}

extension MoviePresenter:MoviePresenterProtocol{
    func ViewdidLoad() {
        //Presnter will ask for intercatoe
        interactor?.fetchMovies()
    }
    
    
    
    
}
