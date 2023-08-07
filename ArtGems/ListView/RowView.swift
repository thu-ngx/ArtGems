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

struct RowView: View {
    var artist: Artist
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        ZStack {
            Rectangle()
                .frame(width: 350, height: 75)
                .foregroundColor(Color("medium-green"))
                .cornerRadius(10)
            HStack () {
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 60, height: 60)
                    .background(
                        artist.profilePic
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    )
                    .cornerRadius(10)
                    .padding(.leading, 9)
                VStack(alignment: .leading) {
                    Text(artist.displayName)
                        .font(Font.custom("SF Pro Display", size: 25).weight(.bold))
                        .foregroundColor(Color("content-color"))
                    Text("@\(artist.username)")
                        .font(Font.custom("SF Pro Display", size: 19).weight(.bold))
                        .foregroundColor(Color("content-color").opacity(0.57))
                }
                .padding(.leading, 4)
                Spacer()
                Image(systemName: "heart.fill")
                    .foregroundColor(Color("light-red"))
                    .font(.system(size: 30))
                    .frame(width: 75, height: 35)
                    .opacity(artist.isFavorite ? 1 : 0)
            }
            .frame(width: 350, height: 75)
        }
        
    }
}

//struct RowView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ZStack {
//                Color("background-color")
//                RowView(artist: artists[3])
//                    .preferredColorScheme(.light)
//            }
//            ZStack {
//                Color("background-color")
//                RowView(artist: artists[3])
//                    .preferredColorScheme(.dark)
//            }
//        }
//    }
//}
