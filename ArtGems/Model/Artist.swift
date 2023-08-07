/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Pham Anh Thu
  ID: s3926793
  Created  date: 03/08/2023
  Last modified: 07/08/2023)
  Acknowledgement: None
*/

import Foundation
import SwiftUI

struct Artist: Codable, Identifiable {
    var id: Int
    var displayName: String
    var username: String
    
    var profilePicName: String
    var profilePic: Image {
        Image(profilePicName)
    }
    
    var imageNames: [String]
    var images: [Image] {
        imageNames.map { Image($0) }
    }
    
    var isFavorite: Bool
}

