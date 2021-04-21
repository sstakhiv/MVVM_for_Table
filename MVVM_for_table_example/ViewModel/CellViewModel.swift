//
//  TableViewCellViewModel.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 21.04.2021.
//

import UIKit
//Model for fill a cell
class CellViewModel: CellViewModelProtocol {
    
    private let country: CountryModel
    
    init(country: CountryModel) {
        self.country = country
    }
    
    var countryName: String {
        return country.countryName
    }
    
    var catitalName: String {
        return "Capital: \(country.catitalName)"
    }
    
    var imageOfCountry: UIImage? {
        //...
        return UIImage(named: country.imageName)
    }
}
