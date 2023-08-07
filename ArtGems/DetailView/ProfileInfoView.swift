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

struct ProfileInfoView: View {
    @Binding var artist: Artist
    
    private var isFavorite: Binding<Bool> {
            Binding<Bool>(
                get: { artist.isFavorite },
                set: { artist.isFavorite = $0 }
            )
        }
    
    var body: some View {
        HStack {
            ProfilePicture(image: artist.profilePic)
                .padding(.trailing, 8)
            VStack(alignment: .leading) {
                Text(artist.displayName)
                    .font(Font.custom("SF Pro Display", size: 30).weight(.bold))
                    .foregroundColor(Color("content-color"))
                Text("@\(artist.username)")
                    .font(Font.custom("SF Pro Display", size: 22).weight(.bold))
                    .foregroundColor(Color("content-color").opacity(0.7))
            }
            .offset(y: 25)
            Spacer()
            Button(action: {
                isFavorite.wrappedValue.toggle()
            }) {
                Image(systemName: isFavorite.wrappedValue ? "heart.fill" : "heart")
                    .foregroundColor(isFavorite.wrappedValue ? Color("light-red") : Color("content-color"))
                    .font(.system(size: 30))
                    .frame(width: 70, height: 50)
                    .offset(x: 27, y: 30)
            }
        }
        .padding(.horizontal, 25)
    }
}

//struct ProfileInfoView_Previews: PreviewProvider {
//    static var previews: some View {
//        Group {
//            ZStack {
//                Color("background-color")
//                ProfileInfoView(artist: artists[0])
//                    .preferredColorScheme(.light)
//            }
//            ZStack {
//                Color("background-color")
//                ProfileInfoView(artist: artists[0])
//                    .preferredColorScheme(.dark)
//            }
//
//        }
//    }
//}
