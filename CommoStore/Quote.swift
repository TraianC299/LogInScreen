//
//  Quote.swift
//  CommoStore
//
//  Created by Traian on 05.08.2022.
//

import Foundation

struct Quote:Codable{
    var quote_id:Int
    var quote:String
    var author: String
    var series:String
}
