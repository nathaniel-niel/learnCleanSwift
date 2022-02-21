//
//  NameListDetailViewController.swift
//  learnVIP
//
//  Created by Nathaniel Andrian on 21/02/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

protocol NameListDetailDisplayLogic: AnyObject
{
  func displaySomething(viewModel: NameListDetail.Load.ViewModel)
}

class NameListDetailViewController: UIViewController, NameListDetailDisplayLogic
{
    
  var interactor: NameListDetailBusinessLogic?
  var router: (NSObjectProtocol & NameListDetailRoutingLogic & NameListDetailDataPassing)?

  // MARK: Object lifecycle
  
  override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
  {
    super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
    setup()
  }
  
  required init?(coder aDecoder: NSCoder)
  {
    super.init(coder: aDecoder)
    setup()
  }
  
  // MARK: Setup
  
  private func setup()
  {
    let viewController = self
    let interactor = NameListDetailInteractor()
    let presenter = NameListDetailPresenter()
    let router = NameListDetailRouter()
    viewController.interactor = interactor
    viewController.router = router
    interactor.presenter = presenter
    presenter.viewController = viewController
    router.viewController = viewController
    router.dataStore = interactor
  }
  
  // MARK: Routing
  
  override func prepare(for segue: UIStoryboardSegue, sender: Any?)
  {
    if let scene = segue.identifier {
      let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
      if let router = router, router.responds(to: selector) {
        router.perform(selector, with: segue)
      }
    }
  }
    
  // MARK: Paramter
    let nameListDetailView = NameListDetailView()
  
  // MARK: View lifecycle
  
    override func loadView() {
        super.loadView()
        view = nameListDetailView
    }
  override func viewDidLoad()
  {
    super.viewDidLoad()
      view.backgroundColor = .white
    loadData()
  }
  
  // MARK: Do something
  
  //@IBOutlet weak var nameTextField: UITextField!
  
  func loadData()
  {
    let request = NameListDetail.Load.Request()
    interactor?.doLoadData(request: request)
  }
  
  func displaySomething(viewModel: NameListDetail.Load.ViewModel)
  {
      nameListDetailView.label.text = viewModel.name
  }
}