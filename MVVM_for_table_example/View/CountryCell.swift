//
//  CountryCell.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 20.04.2021.
//

import UIKit

class CountryCell: UITableViewCell {
    
    @IBOutlet weak var imgCountry: UIImageView!
    @IBOutlet weak var lbCountryName: UILabel!
    @IBOutlet weak var lbCapitalName: UILabel!
    
    weak var viewModel:CellViewModelProtocol? {
        
        willSet(viewModel) {
            guard let viewModel = viewModel else {
                return
            }
            lbCountryName.text = viewModel.countryName
            lbCapitalName.text = viewModel.catitalName
            imgCountry.image = viewModel.imageOfCountry
        }
    }  

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    
}
