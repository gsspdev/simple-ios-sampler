//
//  ContentView.swift
//  simple-sampler
//
//  Created by gssp on 5/16/23.
//


import SwiftUI
import AVFoundation



struct ContentView: View {
    
    let kick: AVPlayer
    let snare: AVPlayer
    let hihat: AVPlayer
    
    init() {
        
        guard let kickurl = Bundle.main.url(forResource: "kick", withExtension: "wav"),
              let snareurl = Bundle.main.url(forResource: "snare", withExtension: "wav"),
              let hihaturl = Bundle.main.url(forResource: "hihat", withExtension: "wav") else {
            fatalError("Audio file not found")
        }
        
        
        self.kick = AVPlayer(url: kickurl)
        self.snare = AVPlayer(url: snareurl)
        self.hihat = AVPlayer(url: hihaturl)
        
    }
    
    
    var body: some View {
        VStack {
            
            
            Button(action: {
                // Insert code to play audio here
                
                self.kick.seek(to: .zero)
                self.kick.play()
//                print("Play button tapped!")
            }) {
                Text("Kick")
                    .font(.largeTitle)
                    .padding()
                
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                // Insert code to pause audio here
                self.snare.seek(to: .zero)
                self.snare.play()
            }) {
                Text("Snare")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }

            Button(action: {
                // Insert code to stop audio here
                self.hihat.seek(to: .zero)
                self.hihat.play()
            }) {
                Text("Hat")
                    .font(.largeTitle)
                    .padding()
                    .background(Color.yellow)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//import SwiftUI
//
//struct ContentView: View {
//    var body: some View {
//        VStack {
//            Image(systemName: "globe")
//                .imageScale(.large)
//                .foregroundColor(.accentColor)
//            Text("Hello, world!")
//        }
//        .padding()
//    }
//}
//
//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
