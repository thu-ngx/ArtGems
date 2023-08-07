/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2023B
  Assessment: Assignment 1
  Author: Nguyen Pham Anh Thu
  ID: s3926793
  Created  date: 03/08/2023
  Last modified: 07/08/2023)
  Acknowledgement: https://youtu.be/vHvb7LH8VuE
*/

import SwiftUI

struct PhotoGridView: View {
    var artist: Artist
    
    let columns: [GridItem] = [
        GridItem(.fixed(125), spacing: 3),
        GridItem(.fixed(125), spacing: 3),
        GridItem(.fixed(125), spacing: 3)
    ]
    
    var body: some View {
        ZStack {
            Color("background-color")
                .ignoresSafeArea(.all)
            ScrollView {
                LazyVGrid (columns: columns, spacing: 3) {
                    ForEach(artist.images.indices, id: \.self) { index in
                        artist.images[index]
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 125, height: 125)
                            .clipShape(Rectangle())
                            .scaledToFit()
                    }
                }
                
            }
        }
        
    }
}

struct PhotoGridView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoGridView(artist: artists[0])
        PhotoGridView(artist: artists[1])
        PhotoGridView(artist: artists[0])
    }
}
