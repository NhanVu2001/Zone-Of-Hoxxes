//
//  LandingPage.swift
//  Zones of Hoxxes
//
//  Created by Nhan Vu Thien on 05/08/2022.
//

import SwiftUI

struct LandingPage: View {
    @State var isHome: Bool = true
    var body: some View {
        
        // Initial logic for button
        if isHome {
            ZStack {
                //Background image
                Image("Hoxxes04")
                
                    //Game logo
                    VStack {
                        Image("DRG")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 500)
                        //Mission control message frame
                        HStack{
                            Image("MissionControl")
                            
                                .resizable()
                            
                                .clipShape(Circle())
                                .overlay{
                                    Circle().stroke(.yellow, lineWidth: 2)
                                }
                                .scaledToFit()
                                .frame(width: 100, alignment: .top).offset(x:-3,y:-26)
                            
                            Text("Congratulations on signing on for Deep Rock Galactic, miner, and welcome on board. Settle in and get your bearings, then proceed to the Mission Selection terminal and select your first mission! We are looking forward to seeing you in action!")
                                .fontWeight(.medium)
                                .font(.body)
                                .foregroundColor(Color.white)
                                .frame(width: 300, alignment: .leading)
                        }
                        .frame(width: 600, height: 200)
                        .background(Color(red: 0.06, green: 0.11, blue: 0.12)).opacity(0.8)
                    }.offset(y:-220)
                    .padding(.bottom)
                //Button logic
                Button(action: {self.isHome.toggle()}){
                    Text("Zone Guide")
                        .foregroundColor(Color.white)
                        
                        .frame(width: 100, height: 50)
                        .overlay{
                            Rectangle().stroke(.white, lineWidth: 2)
                        }
                        .background(Color(red: 0.31, green: 0.18, blue: 0.04))
                    
                }.padding(.top, 650.0)
            }
        }
        //When button is clicked, go to zonelist
        else{
            ZoneList()
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        LandingPage()
    }
}
