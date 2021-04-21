//
//  TableViewController.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 20.04.2021.
//

import UIKit

enum CellIdentifier: String {
    case CountryCell = "CountryCell"
    case CountryCellIdentifier = "CountryCellIdentifier"
}

class TableViewController: UITableViewController {
    
    
    var tableViewModel: TableViewModelProtocol!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewModel = TableViewModel()

        tableView.register(UINib(nibName: CellIdentifier.CountryCell.rawValue, bundle: nil), forCellReuseIdentifier: CellIdentifier.CountryCellIdentifier.rawValue)
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return tableViewModel.numberOfRowsInSection()
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: CellIdentifier.CountryCellIdentifier.rawValue, for: indexPath) as? CountryCell

        guard let tableViewCell = cell else {
            return UITableViewCell()
        }
        
        let cellViewModel = tableViewModel.cellViewModel(forRowAtIndexPath: indexPath)
        
        tableViewCell.viewModel = cellViewModel

        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80.0
    }
}
