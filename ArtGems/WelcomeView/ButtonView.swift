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

struct ButtonView: View {
    
    var body: some View {
        ZStack() {
            Rectangle()
                .frame(width: 300, height: 60)
                .foregroundColor(Color("medium-green"))
                .cornerRadius(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color("content-color"), lineWidth: 2)
                )
            
            
            
            Text("Start")
                .font(Font.custom("Inter", size: 35).weight(.bold))
                .foregroundColor(Color("content-color"))
            
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
