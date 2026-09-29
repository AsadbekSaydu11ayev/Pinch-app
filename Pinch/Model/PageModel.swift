//
//  PageModel.swift
//  Pinch
//
//  Created by Asadbek Saydullayev on 05/02/26.
//

import Foundation


struct Page: Identifiable {
    let id: Int
    let imageName: String
}

extension Page {
    var thumbnailName: String {
        return "thumb-" +  imageName
    }
}
