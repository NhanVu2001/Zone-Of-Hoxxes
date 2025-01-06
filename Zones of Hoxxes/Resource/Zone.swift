/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Vu Thien Nhan
  ID: s3810151
  Created  date: 02/08/2022
  Last modified: 07/08/2022
  Acknowledgement: https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
*/


import Foundation
import SwiftUI

struct Zone: Hashable, Codable, Identifiable {
    var name: String
    var id: Int
    var rockHardness: String
    var abundantResource: String
    var scarceResource: String
    var uniqueHazard: String
    var helpfulTerrain: String
    var uniqueEnemy: String
    var description: String
    
    private var zIconName: String
    var zIcon: Image {
        Image(zIconName)
    }
    
    private var zImageName: String
    var zImage: Image {
        Image(zImageName)
    }
    
    private var abResName: String
    var abResIcon: Image {
        Image(abResName)
    }
    
    private var scResName: String
    var scResIcon: Image {
        Image(scResName)
    }
}


