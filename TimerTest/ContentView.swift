//
//  ContentView.swift
//  TimerTest
//
//  Created by Shawn on 1/29/20.
//  Copyright © 2020 Shawn. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var durationTimer: TimerWrapper = TimerWrapper(rest: 6, rounds: 7)
    
    var body: some View {
        VStack {
            Text("Rounds: \(durationTimer.rounds)")
            Text("Rest: \(durationTimer.rest)")
            Text("Rest remaining: \(durationTimer.remainingRest)")
            Text("Current round: \(durationTimer.currentRound)")
            
            Button(action: {
                self.durationTimer.start()
            }, label: {
                Text("Fire!")
            })
            
            Button(action: {
                self.durationTimer.pause()
            }, label: {
                Text("Pause!")
            })
            
            Button(action: {
                self.durationTimer.reset()
            }, label: {
                Text("Reset!")
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
