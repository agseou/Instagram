//
//  SearchViewController.swift
//  Instagram
//
//  Created by 은서우 on 2024/02/08.
//

import UIKit

class SearchViewController: BaseViewController {
    
    let searchController = UISearchController(searchResultsController: nil)

    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationItem.searchController = searchController
       
    }
    
    
}

extension SearchViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        
    }
    
}
