//
//  Pantalla1Presenter.swift
//  PantallasCleanSwift
//
//  Created by Adrian on 24-05-22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol Pantalla1PresentationLogic
{
  func presentSomething(response: Pantalla1.Something.Response)
}

class Pantalla1Presenter: Pantalla1PresentationLogic
{
  weak var viewController: Pantalla1DisplayLogic?
  
  // MARK: Do something
  
  func presentSomething(response: Pantalla1.Something.Response)
  {
      let viewModel = Pantalla1.Something.ViewModel(nombreVM: response.nombreResponse, passwordVM: response.passwordResponse, validacionVM: response.validacion)
    viewController?.displaySomething(viewModel: viewModel)
  }
}
