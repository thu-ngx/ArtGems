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

import SwiftUI

struct DetailView: View {
    @Binding var artist: Artist
    
    var body: some View {
        
        ZStack () {
            Color("background-color")
                .ignoresSafeArea(.all)
            ScrollView {
                VStack {
                    Spacer(minLength: 45)
                    ProfileInfoView(artist: $artist)
                    Spacer(minLength: 50)
                    PhotoGridView(artist: artist)
                }
            }
            .navigationTitle("@\(artist.username)")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailView(artist: artists[0])
//    }
//}
