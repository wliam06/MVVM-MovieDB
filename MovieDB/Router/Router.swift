//
//  Router.swift
//  MovieDB
//
//  Created by William on 01/08/20.
//  Copyright © 2020 William. All rights reserved.
//

import UIKit

// MARK: - Presentable
public protocol Presentable {
  func toPresent() -> UIViewController?
}

extension UIViewController: Presentable {
  public func toPresent() -> UIViewController? {
    return self
  }
}

// MARK: - Router
public protocol Router: Presentable {
  func present(_ module: Presentable?)
  func present(_ module: Presentable?, animated: Bool)
  
  func push(_ module: Presentable?)
  func push(_ module: Presentable?, hideBottomBar: Bool)
  func push(_ module: Presentable?, animated: Bool)
  func push(_ module: Presentable?, animated: Bool, completion: (() -> Void)?)
  func push(_ module: Presentable?, animated: Bool, hideBottomBar: Bool, completion: (() -> Void)?)
  
  func popModule()
  func popModule(animated: Bool)
  
  func dismissModule()
  func dismissModule(animated: Bool, completion: (() -> Void)?)
  
  func setRootModule(_ module: Presentable?)
  func setRootModule(_ module: Presentable?, hideBar: Bool)
  func setRootModule(_ module: Presentable?, hideBar: Bool, animated: Bool)
  
  func popToRootModule(animated: Bool)
}
