//
//  ContentView.swift
//  Week05
//
//  Created by Henry Chen on 2/28/23.
//

import SwiftUI
import CoreData

struct playlistInfo {
    var selectedSong: Int? = nil
    var songCount: Int = bundleAudio.count
}

struct ContentView: View {
    @State private var note = ""
   
    var body: some View{
        NavigationView{
            Form {
                Section {
                    ForEach(0..<bundleAudio.count){ index in
                        NavigationLink("Audio \(index + 1): " + bundleAudio[index],
                                       destination: Page1(),
                                       tag: index,
                                       selection: playlistInfo.$selectedSong)
                    }
                    
                    TextField("Add note here", text: $note)
                }
            }
            .navigationTitle("My Songs")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView();

    }
}

