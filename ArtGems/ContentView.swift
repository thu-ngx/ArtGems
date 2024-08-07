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

struct ContentView: View {
    
    @State var  colorScheme: ColorScheme = .light
    
    var body: some View {
        WelcomeView(colorScheme: $colorScheme)
            .preferredColorScheme(colorScheme)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView(colorScheme: .light)
            ContentView(colorScheme: .dark)
        }
    }
}

