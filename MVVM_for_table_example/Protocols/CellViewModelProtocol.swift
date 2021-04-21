//
//  TableViewCellProtocol.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 21.04.2021.
//

import UIKit

protocol CellViewModelProtocol: class {
    var countryName: String { get }
    var catitalName: String { get }
    var imageOfCountry: UIImage? { get }
}
