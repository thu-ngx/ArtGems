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

struct WelcomeView: View {
    @State private var showCredit = false
    @State private var showInfo = false
    
    @Binding var colorScheme: ColorScheme
    @State var artistList = artists
    
    func toggleColorScheme() {
        colorScheme = colorScheme == .dark ? .light : .dark
    }
    
    var body: some View {
        NavigationView {
            ZStack() {
                Color("background-color")
                    .ignoresSafeArea(.all)
                
                VStack {
                    Image((colorScheme == .light) ? "rmit-logo-black" : "rmit-logo-white")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180)
                        .offset(y: -50)
                    
                    AppInfoView()
                        .offset(y: -30)
                    
                    Image((colorScheme == .light) ? "ArtGemsLogoTrans" : "ArtGemsLogoDarkTrans")
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 270)
                        .offset(y: -20)
                    
                    NavigationLink {
                        ListView(artistsList: $artistList)
                    } label: {
                        ButtonView()
                    }
                    
                    HStack (alignment: .center, spacing: 40) {
                        Text("Credits")
                            .foregroundColor(Color("content-color"))
                            .underline()
                            .bold()
                            .onTapGesture {
                                showCredit = true
                            }
                            .alert(isPresented: $showCredit) {
                                Alert(title: Text("All artworks displayed in this app belong to their respective artists. This app is meant for educational purposes only"), dismissButton: .default(Text("Close")))
                            }
                        
                        Text("Information")
                            .foregroundColor(Color("content-color"))
                            .underline()
                            .bold()
                            .onTapGesture {
                                showInfo = true
                            }
                            .alert(isPresented: $showInfo) {
                                Alert(
                                    title: Text("Name: Nguyen Pham Anh Thu \nID: s3926793 \nProgram: Software Engineering"),
                                    dismissButton: .default(Text("Close")))
                            }
                        
                        Button(action: {
                            toggleColorScheme()
                        }, label: {
                            Image(systemName: colorScheme == .dark ? "moon.fill" : "moon")
                                .resizable()
                                .font(.system(size: 30))
                                .frame(width: 30, height: 30)
                                .foregroundColor(Color("content-color"))
                        })
                    }
                    .frame(width: 300)
                    .offset(y:25)
                }
            }
            .navigationBarHidden(true)
            .navigationTitle("Welcome")
        }
    }
}

//struct WelcomeView_Previews: PreviewProvider {
//    static var previews: some View {
//        WelcomeView(colorScheme: ColorScheme.light)
//    }
//}

