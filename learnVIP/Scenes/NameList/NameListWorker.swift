//
//  NameListWorker.swift
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

class NameListWorker{
    func fetchData(completion: (([NameList]) ->())){
        var arrOfNameList = [NameList]()
        arrOfNameList.append(NameList(name: "nathan"))
        arrOfNameList.append(NameList(name: "james"))
        arrOfNameList.append(NameList(name: "john"))
        arrOfNameList.append(NameList(name: "delta"))
        arrOfNameList.append(NameList(name: "mizuki"))
        arrOfNameList.append(NameList(name: "akito"))
        arrOfNameList.append(NameList(name: "jessica"))
        arrOfNameList.append(NameList(name: "angeline"))
        arrOfNameList.append(NameList(name: "diana"))
        arrOfNameList.append(NameList(name: "alex"))
        arrOfNameList.append(NameList(name: "michael"))
        arrOfNameList.append(NameList(name: "dodo"))
        arrOfNameList.append(NameList(name: "asep"))
        arrOfNameList.append(NameList(name: "fiki"))
        arrOfNameList.append(NameList(name: "jio"))
        arrOfNameList.append(NameList(name: "abel"))
        
        completion(arrOfNameList)
  }
}
