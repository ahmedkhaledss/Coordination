//
//  CoordinatorProtocol.swift
//  MarketMap
//
//  Created by Ahmed Khaled on 1/3/20.
//  Copyright © 2020 Ahmed Khaled. All rights reserved.
//

import UIKit

public protocol Coordinator: class, Presentable {
  var router: RouterType { get }
  var childCoordinators: [Coordinator] { get set }
  func start()
}

extension Coordinator {
  func addChild(_ coordinator: Coordinator) {
    // add only unique object
    guard !childCoordinators.contains(where: { $0 === coordinator }) else { return }
    childCoordinators.append(coordinator)
  }
  
  func removeChild(_ coordinator: Coordinator?) {
    for (index, element) in childCoordinators.enumerated() where element === coordinator {
      childCoordinators.remove(at: index)
      break
    }
  }
  func toPresentable() -> UIViewController {
    return router.toPresentable()
  }
  
  func start() {}
}
