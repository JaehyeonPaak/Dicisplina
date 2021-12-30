//
//  TimerView.swift
//  Dicisplina
//
//  Created by United States on 12/30/21.
//

import SwiftUI

struct TimerView: View {
    
    @Binding var timerDone: Bool
    @State private var timeRemaining: Int = 30
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        Text("\(timeRemaining)")
            .font(.system(size: 40))
            .onReceive(timer) { _ in
                if timeRemaining > 0 {
                    timeRemaining -= 1
                }
                else {
                    timerDone = true
                    
                }
            }
    }
}

struct TimerView_Previews: PreviewProvider {
    static var previews: some View {
        TimerView(timerDone: .constant(false))
    }
}
