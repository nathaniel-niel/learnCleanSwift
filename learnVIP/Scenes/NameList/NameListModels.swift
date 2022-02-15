//
//  NameListModels.swift
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

enum NameListScene
{
  // MARK: Use cases
  
  enum Load
  {
    struct Request
    {
    }
    struct Response
    {
        let nameList: [NameList]
    }
    struct ViewModel
    {
        let nameList: [NameList]
    }
  }
}