//
//  PointsView.swift
//  bulleyes
//
//  Created by AMStudent on 9/1/21.
//

import SwiftUI

struct PointsView: View {
    @Binding var alertIsVisible: Bool
    @Binding var sliderValue: Double
    @Binding var game: Game
    
    
    var body: some View {
        let roundedValue = Int(sliderValue.rounded())
        let points = game.points(SliderValue: roundedValue)
        
        VStack(spacing: 10) {
            InstructionText(text: "The slider's value is")
            BigNumberText(text: String(roundedValue))
            BodyText(text: "You scored \(points) points\n🎉")
            Button(action: {
                withAnimation {
                    alertIsVisible = false
                }
                game.startNewRound(points: points)
            }) {
                ButtonText(text: "Start New Round")
                }
            }
        .padding()
        .frame(maxWidth: 300)
        .background(Color("BackgroundColor"))
        .cornerRadius(21.0)
        .shadow(radius: 10, x:5, y:5)
        
    }
}

// struct PointsView_Previews: PreviewProvider {
//    static var previews: some View {
//        PointsView()
//    }
// }
