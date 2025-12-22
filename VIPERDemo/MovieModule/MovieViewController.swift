//
//  MovieViewController.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import UIKit

//This is View layer where UI presents and handles UI and no business logic

//Movie View Protocol

protocol MoviewViewProtocl:AnyObject {
    func showMovies(movies:[Movie])
    func showError(messgae:String)
}

class MovieViewController: UIViewController {

    var presenter: MoviePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //It will ask presnter
        presenter.ViewdidLoad()

        // Do any additional setup after loading the view.
    }
    
}

extension MovieViewController:MoviewViewProtocl {
    func showMovies(movies: [Movie]) {
        print("Movies received in View:", movies)
    }
    
    func showError(messgae: String) {
        print("Error:", messgae)
    }
    
    
}
