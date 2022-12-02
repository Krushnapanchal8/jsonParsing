//
//  Post.swift
//  JSONParsing
//
//  Created by Mac on 20/11/22.
//

import Foundation
import UIKit


struct Post: Decodable{
    let userId, id: Int
    let title, body: String
}


