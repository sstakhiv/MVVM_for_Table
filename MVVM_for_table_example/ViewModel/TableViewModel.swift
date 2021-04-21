//
//  ViewModel.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 21.04.2021.
//

import Foundation
//Model for fill a table
class TableViewModel: TableViewModelProtocol {

    private let model: Model = Model()

    func numberOfRowsInSection() -> Int {
        
        return model.countries.count
    }
    
    func cellViewModel(forRowAtIndexPath indexPath: IndexPath) -> CellViewModelProtocol? {
        let country = model.countries[indexPath.row]
        return CellViewModel(country: country)
    }
}
