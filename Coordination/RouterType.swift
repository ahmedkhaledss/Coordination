//
//  RouterType.swift
//  MarketMap
//
//  Created by Ahmed Khaled on 1/3/20.
//  Copyright © 2020 Ahmed Khaled. All rights reserved.
//

import Foundation

public protocol RouterType: Presentable {
  func present(_ module: Presentable, animated: Bool, completion: (() -> Void)?)
  func push(_ module: Presentable, animated: Bool, hideBottomBar: Bool, onPop: (() -> Void)?)
  func popModule(animated: Bool)
  func dismissModule(animated: Bool, completion: (() -> Void)?)
  func setRootModule(_ module: Presentable, hideBar: Bool, onPop: (() -> Void)?)
  func popToRootModule(animated: Bool)
}

extension RouterType {
  func present(_ module: Presentable, animated: Bool = true, completion: (() -> Void)? = nil) {
    present(module, animated: animated, completion: completion)
  }
  func push(_ module: Presentable, animated: Bool = true, hideBottomBar: Bool = false, onPop: (() -> Void)?) {
    push(module, animated: animated, hideBottomBar: hideBottomBar, onPop: onPop)
  }
  func popModule(animated: Bool = true) {
    popModule(animated: animated)
  }
  func dismissModule(animated: Bool = true, completion: (() -> Void)? = nil) {
    dismissModule(animated: animated, completion: completion)
  }
  func setRootModule(_ module: Presentable, hideBar: Bool = false, onPop: (() -> Void)? = nil) {
    setRootModule(module, hideBar: hideBar, onPop: onPop)
  }
  func popToRootModule(animated: Bool = false) {
    popToRootModule(animated: animated)
  }
}
