//
//  Pantalla2Interactor.swift
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

protocol Pantalla2BusinessLogic
{
  func doSomething(request: Pantalla2.Something.Request)
}

protocol Pantalla2DataStore
{
  //var name: String { get set }
    var datosRecibidos: Pantalla1.Something.Request { get set }
}

class Pantalla2Interactor: Pantalla2BusinessLogic, Pantalla2DataStore
{
  var presenter: Pantalla2PresentationLogic?
  var worker: Pantalla2Worker?
  //var name: String = ""
    var datosRecibidos: Pantalla1.Something.Request = .init(loginRequest: "", passwordRequest: "")
  
  // MARK: Do something
  
  func doSomething(request: Pantalla2.Something.Request)
  {
    worker = Pantalla2Worker()
    worker?.doSomeWork()
    
      let response = Pantalla2.Something.Response(nombreResponseP2: datosRecibidos.loginRequest, passwordResponseP2: datosRecibidos.passwordRequest)
    presenter?.presentSomething(response: response)
  }
}
