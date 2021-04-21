//
//  TableViewModelProtocol.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 21.04.2021.
//

import Foundation

protocol TableViewModelProtocol {
    
    func numberOfRowsInSection() -> Int
    func cellViewModel(forRowAtIndexPath indexPath: IndexPath) -> CellViewModelProtocol?
}
