//
//  StoryboardSupport.swift
//  TimBurtons
//
//  Created by Bharath Kamath on 03/02/18.
//  Copyright © 2018 Bharath Kamath. All rights reserved.
//

//  Based on work by Andyy Hope (github.com/andyyhope)

import UIKit

/// Protocol that enables classes to return class name as storyboard identifier
protocol StoryboardIdentifiable {
    static var storyboardIdentifier: String { get }
}

extension UIViewController: StoryboardIdentifiable {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: StoryboardIdentifiable {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}

extension UITableViewCell: StoryboardIdentifiable {
    static var storyboardIdentifier: String {
        return String(describing: self)
    }
}


extension UIStoryboard {
    
    /**
     Enum for listing all the storyboards in the project.
     
     - note: All storybaords in the project should be named here.
     */
    enum Storyboard: String {
        case Main
        case Products
        case LaunchScreen
    }
    
    convenience init(storyboard: Storyboard, bundle: Bundle? = nil) {
        self.init(name: storyboard.rawValue, bundle: bundle)
    }
    
    class func storyboard(storyboard: Storyboard, bundle: Bundle?) -> UIStoryboard {
        return UIStoryboard(name: storyboard.rawValue, bundle: bundle)
    }
    
    /**
     Helper function to instantiate Viewcontroller
     
     - note: Make sure the storyboard ID for the viewcontroller to be instantiated is same as the class name.
     */
    func instantiateViewController<T: UIViewController>() -> T {
        guard let viewController = instantiateViewController(withIdentifier: T.storyboardIdentifier) as? T else {
            fatalError("Could not find view controller with name \(T.storyboardIdentifier)")
        }
        
        return viewController
    }
    
}

extension UICollectionView {
    func dequeueReusableCell<T: UICollectionViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.storyboardIdentifier, for: indexPath) as? T else {
            fatalError("Could not find collection view cell with identifier \(T.storyboardIdentifier)")
        }
        return cell
    }
    
    func cellForItem<T: UICollectionViewCell>(at indexPath: IndexPath) -> T {
        guard let cell = cellForItem(at: indexPath) as? T else {
            fatalError("Could not get cell as type \(T.self)")
        }
        return cell
    }
}

extension UITableView {
    func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.storyboardIdentifier, for: indexPath) as? T else {
            fatalError("Could not find table view cell with identifier \(T.storyboardIdentifier)")
        }
        return cell
    }
    
    func cellForRow<T: UITableViewCell>(at indexPath: IndexPath) -> T {
        guard let cell = cellForRow(at: indexPath) as? T else {
            fatalError("Could not get cell as type \(T.self)")
        }
        return cell
    }
}


