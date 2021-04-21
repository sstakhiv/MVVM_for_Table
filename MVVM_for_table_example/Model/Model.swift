//
//  Model.swift
//  MVVM_for_table_example
//
//  Created by SERHII STAKHIV on 21.04.2021.
//

import Foundation

class Model {
    let countries: [CountryModel] = [
        CountryModel(countryName: "France", catitalName: "Paris", imageName: "France"),
        CountryModel(countryName: "China", catitalName: "Peking", imageName: "China"),
        CountryModel(countryName: "Germany", catitalName: "Berlin", imageName: "Germany"),
        CountryModel(countryName: "Indonesia", catitalName: "Jakarta", imageName: "Indonesia"),
        CountryModel(countryName: "Portugal", catitalName: "Lisbon", imageName: "Portugal"),
        CountryModel(countryName: "Switzerland", catitalName: "Berne", imageName: "Switzerland"),
        CountryModel(countryName: "Turkey", catitalName: "Ankara", imageName: "Turkey"),
        CountryModel(countryName: "Ukraine", catitalName: "Kyiv", imageName: "Ukraine"),
        CountryModel(countryName: "United States of America", catitalName: "Washington", imageName: "USA"),
        CountryModel(countryName: "Yemen", catitalName: "Sana'a", imageName: "Yemen")
    ]
}
