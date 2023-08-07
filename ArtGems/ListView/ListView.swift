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

struct ListView: View {
    @State private var searchText = ""
    @State private var isFilteringFavorites = false
    @Binding var artistsList: [Artist]
    
    // Filter the artists array based on search text and favorite filter
    var filteredArtists: [Artist] {
        var results = artistsList
        
        if !searchText.isEmpty {
            results = results.filter { artist in
                artist.displayName.lowercased().contains(searchText.lowercased())
            }
        }
        
        if isFilteringFavorites {
            results = results.filter { artist in
                artist.isFavorite
            }
        }
        
        return results
    }
    
    var body: some View {
        ZStack {
            Color("background-color")
                .ignoresSafeArea(.all)
            ScrollView {
                VStack(alignment: .center) {
                    Spacer(minLength: 30)
                    SearchBar(text: $searchText)
                        .padding(.horizontal, 8)
                    
                    Toggle("Show Favorites Only", isOn: $isFilteringFavorites)
                        .padding(.horizontal, 22)
                    
                    ForEach(filteredArtists) { artist in
                        NavigationLink {
                            DetailView(artist: bindingForArtist(artist))
                        } label: {
                            RowView(artist: artist)
                        }
                    }
                }
            }
        }
        .navigationBarTitleDisplayMode(.large)
        .navigationTitle("Artists 🎨")
    }
    
    private func bindingForArtist(_ artist: Artist) -> Binding<Artist> {
        guard let artistIndex = artistsList.firstIndex(where: { $0.id == artist.id }) else {
            fatalError("Artist not found in the list.")
        }
        return Binding<Artist>(
            get: { artistsList[artistIndex] },
            set: { artistsList[artistIndex] = $0 }
        )
    }
}

struct SearchBar: View {
    @Binding var text: String
    
    var body: some View {
        HStack {
            TextField("Search artist", text: $text)
                .padding(10)
                .background(Color("medium-green"))
                .cornerRadius(8)
                .padding(.horizontal, 16)
        }
    }
}

//struct ListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ListView(artistsList: $artists)
//    }
//}
