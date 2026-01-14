//
//  MovieViewController.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import UIKit

//This is View layer where UI presents and handles UI and no business logic

//Movie View Protocol

protocol MoviewPresenterToViewProtocl:AnyObject {
    func showMovies(movies:[Movie])
    func showError(messgae:String)
}

//Flow from view to presenter
class MovieViewController: UIViewController {

    var presenter: MovieViewToPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //It will ask presnter to download movies
        presenter.ViewdidLoad()
    }
    
}

//Get data from Presenter to show in view
extension MovieViewController:MoviewPresenterToViewProtocl {
    func showMovies(movies: [Movie]) {
        print("Movies received in View:", movies)
    }
    
    func showError(messgae: String) {
        print("Error:", messgae)
    }
    
    
}
