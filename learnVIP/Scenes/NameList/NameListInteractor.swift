//
//  NameListInteractor.swift
//  learnVIP
//
//  Created by Nathaniel Andrian on 15/02/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol NameListBusinessLogic
{
  func doLoadData(request: NameListScene.Load.Request)
}

protocol NameListDataStore
{
  var name: [NameList]? { get set }
}

class NameListInteractor: NameListBusinessLogic, NameListDataStore
{
  var presenter: NameListPresentationLogic?
  var worker: NameListWorker?
  var name: [NameList]?
  
  // MARK: Do something
  
  func doLoadData(request: NameListScene.Load.Request)
  {
    worker = NameListWorker()
      worker?.fetchData(completion: { name in
          self.name = name
          let response = NameListScene.Load.Response(nameList: name)
          presenter?.presentData(response: response)
      })
   
    
    
  }
}
