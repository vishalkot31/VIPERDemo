//
//  MovieRouter.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 21/12/25.
//

import Foundation
import UIKit
//Router is responsible for:
//Navigation
//Dependency injection
//Module creation
protocol MovieRouterProtocol{
    func nvaigateToMovieDetail(movie:Movie)
}

//Builder is called inside router
class MovieRouter:MovieRouterProtocol{
    
    //Acces to view
    weak var viewController : UIViewController?
    
    //Create Movie Detail Screen
    func nvaigateToMovieDetail(movie: Movie) {
        //Call Builder of Movie Detail and create Object
        
        let movieDetailVC = MovieDetailViewVC()
        //Navigation to view
        viewController?.navigationController?
            .pushViewController(movieDetailVC, animated: true)
        
        
    }

}
