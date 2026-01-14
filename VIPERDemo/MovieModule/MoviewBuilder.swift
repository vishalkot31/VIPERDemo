//
//  MoviewBuilder.swift
//  VIPERDemo
//
//  Created by Vishal Kothari on 14/01/26.
//

import Foundation
import UIKit

class MoviewBuilder{
    
    //Builder class to create object
    static func build()->UIViewController{
       
        //Create Objects
        
        let view = MovieViewController()
        let presenter = MoviePresenter()
        let interactor =  MovieInteractor()
        let router = MovieRouter()
        
        //Connect view and presenter
        
        view.presenter = presenter
        presenter.view = view
        
        //Connect presener and Interacor
        presenter.interactor = interactor
        interactor.presenter = presenter
        
        //Connect prsesenter to router
        presenter.router = router
        router.viewController = view
        
        // 5️⃣ Return fully wired module
            return view
    }
}
