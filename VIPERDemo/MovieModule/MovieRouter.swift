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
protocol MovieRouteProtocol{
    static func createModule()->UIViewController
}


class MovieRouter{
    static func createModule()->UIViewController{
        //Create object of VIPE
        let view = MovieViewController()
        let presenter = MoviePresenter()
        let interactor = MovieInteractor()
        let router = MovieRouter()
        //
        view
    
        return view

    }
}
