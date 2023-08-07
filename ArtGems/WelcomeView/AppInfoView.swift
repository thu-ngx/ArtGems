/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Pham Anh Thu
  ID: s3926793
  Created  date: 02/08/2023
  Last modified: 07/08/2023)
  Acknowledgement: None
*/

import SwiftUI

struct AppInfoView: View {
    
    var body: some View {
        VStack {
            Text("ArtGems")
                .font(Font.custom("Inter", size: 70).weight(.bold))
                .foregroundColor(Color("content-color"))
            
            Text("Uncover Art's Hidden Gems\nReveal Its Beauty")
                .font(Font.custom("Oxygen", size: 22))
                .foregroundColor(Color("content-color"))
                .multilineTextAlignment(.center)
        }
    }
}

struct AppInfoView_Previews: PreviewProvider {
    static var previews: some View {
        AppInfoView()
    }
}
