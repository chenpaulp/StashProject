//
//  AchievementCardView.swift
//  StashProject
//
//  Created by Paul Chen on 12/4/20.
//

import SwiftUI
import KingfisherSwiftUI

struct AchievementCardView: View {
    var parentGeometry: GeometryProxy
    @StateObject var achievement: AchievementViewModel

    var body: some View {        
        HStack {
            KFImage(URL(string: achievement.bgImageUrl))
                .resizable()
                .scaledToFit()
                .clipped()
                .overlay(
                    VStack {
                        ZStack {
                            Circle()
                                .fill(Color.white.opacity(0.9))
                                .frame(width: parentGeometry.size.width * 1/3, height: parentGeometry.size.width * 1/3)
                            VStack {
                                Text("Level")
                                    .font(.body).foregroundColor(.black)
                                Text(achievement.level)
                                    .font(.system(size: 60)).foregroundColor(.black).fontWeight(.heavy)
                            }
                        }
                        Spacer()
                        Spacer()
                        let geometryWidth = parentGeometry.size.width - 60
                        ZStack(alignment: .leading) {
                            Rectangle().foregroundColor(.white)
                            let progress = CGFloat(Double(achievement.progress) / Double(achievement.total))
                            Rectangle().foregroundColor(.green).frame(width: CGFloat(progress * geometryWidth))
                        }
                        .frame(maxWidth: geometryWidth)
                        .frame(height: 10)
                        .cornerRadius(8)

                        Spacer()
                        HStack(alignment: .center) {
                            Text("\(achievement.progress)pts")
                                .font(.title3).bold().foregroundColor(.white)
                            Spacer()
                            Text("\(achievement.total)pts")
                                .font(.title3).bold().foregroundColor(.white)
                        }
                    }.padding()
                )
        }
        .cornerRadius(10)
        .padding([.horizontal], 20)
    }
}
