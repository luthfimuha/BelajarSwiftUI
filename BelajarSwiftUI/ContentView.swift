//
//  ContentView.swift
//  BelajarSwiftUI
//
//  Created by muhammad.luthfi on 30/09/22.
//

import SwiftUI

struct ContentView: View {
    
    let justin = Singer(
        name: "Justin Bieber",
        age: 28,
        image: "justin",
        songs: ["Baby", "Love yourself", "One time", "Favorite girl", "Despacito"]
    )
    
    @State var showSongs: Bool = false
    
    var body: some View {
        VStack {
            Image(justin.image)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
            HStack {
                Text(justin.name)
                    .font(.title)
                    .bold()
                Text("\(justin.age)")
                    .font(.title)
            }
            Toggle("Show songs", isOn: $showSongs.animation())
                .padding()
            
            if showSongs {
                List {
                    ForEach(justin.songs, id: \.self) { song in
                        Text("🎵 \(song)")
                    }
                }
                .listStyle(.plain)
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
