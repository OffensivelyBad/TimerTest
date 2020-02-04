//
//  TimerView.swift
//  TimerTest
//
//  Created by Shawn Roller on 2/4/20.
//  Copyright © 2020 Shawn. All rights reserved.
//

import SwiftUI

struct TimerView: View {
    @ObservedObject var durationTimer: TimerWrapper
    
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

struct TimerView_Previews: PreviewProvider {
    static let timer = TimerWrapper(rest: 3, rounds: 4)
    
    static var previews: some View {
        TimerView(durationTimer: timer)
    }
}
