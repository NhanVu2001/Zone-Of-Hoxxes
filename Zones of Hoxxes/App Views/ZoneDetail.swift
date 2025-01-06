/*
  RMIT University Vietnam
  Course: COSC2659 iOS Development
  Semester: 2022B
  Assessment: Assignment 1
  Author: Vu Thien Nhan
  ID: s3810151
  Created  date: 02/08/2022
  Last modified: 07/08/2022
  Acknowledgement: https://developer.apple.com/tutorials/swiftui/building-lists-and-navigation
*/

import SwiftUI

struct ZoneDetail: View {
    var zone: Zone
    var body: some View {
        
            ScrollView {
               // Display zone preview image
                mapImgClip(image: zone.zImage)
                // Display zone name
                Text(zone.name)
                    
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.yellow)
                    .multilineTextAlignment(.center)
                    
                //Display terrain toughness
                Text("\(zone.name) Terrain Toughness: \(zone.rockHardness)")
                    .foregroundColor(Color.white)
                
                //Display crafting materials
                    Text("Crafting Materials").fontWeight(.bold).foregroundColor(Color.white).padding()
                    Divider().frame(width: 218, height: 2).background(Color.white)
                
                    HStack{
                        // Left resource
                        VStack{
                            Text("Abundant")
                                .frame(width: 100)
                                .foregroundColor(Color.white)
                                .multilineTextAlignment(.center)
                            Divider().frame(width: 100, height: 2).background(Color.white)
                            ResIcon(image: zone.abResIcon)
                            Text(zone.abundantResource).foregroundColor(Color.white).frame(width:100)
                        }
                        Divider().frame(width: 2, height: 100).background(Color.white)
                        //Right resource
                        VStack{
                            Text("Scarce")
                                .foregroundColor(Color.white)
                                .frame(width:100)
                                .multilineTextAlignment(.center)
                            Divider().frame(width: 100, height: 2).background(Color.white)
                            ResIcon(image: zone.scResIcon)
                            Text(zone.scarceResource).frame(width:100)
                                .foregroundColor(Color.white)
                        }
                        
                    }
                // Zone description
                    Text("DRG's assestment of \(zone.name):")
                        .font(.title2)
                        .foregroundColor(Color.yellow)
                        .multilineTextAlignment(.leading)
                        .frame(width:400, alignment: .center)
                        .padding(.bottom)
                Text(zone.description)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .frame(width:360)
                    .padding(.bottom, 20.0)
                    
                
                HStack{
                    // Zone enemies
                    VStack{
                        Text("Be wary of these bugs when entering:")
                            .fontWeight(.medium)
                            .frame(width: 200, height: 50, alignment: .trailing)
                            .foregroundColor(Color.red)
                            .multilineTextAlignment(.center)
                        Divider().frame(width: 100, height: 2).background(Color.white)
                            .padding(.bottom,10)
                        
                        Text(zone.uniqueEnemy).foregroundColor(Color.white).frame(width: 200, height: 50, alignment: .top)
                    }
                    Divider().frame(width: 2, height: 100).background(Color.white)
                    //Zone hazards
                    VStack{
                        Text("Keep an eye out for these hazards:")
                            .fontWeight(.medium)
                            .frame(width: 200, height: 50, alignment: .top)
                            .foregroundColor(Color.orange)
                            .multilineTextAlignment(.center)
                        Divider().frame(width: 100, height: 2).background(Color.white).padding(.bottom,10);
                        
                        Text(zone.uniqueHazard).foregroundColor(Color.white).frame(width: 200, height: 50, alignment: .top)
                    }
                }
                .frame(width: 370)
                .padding(.bottom,10)
                
                // Helpful terrain
                VStack{
                Text("Find these, they might aid you in defeating those pesky bugs, or at least run from them (surival is not guarenteed):")
                    .fontWeight(.medium)
                    .foregroundColor(Color.green)
                    .multilineTextAlignment(.leading)
                    .frame(width: 380, height: 100, alignment: .top)
                
                    Text(zone.helpfulTerrain)
                        .foregroundColor(Color.white)
                        .frame(width: 380, height: 100, alignment: .top)
                }
                
                
            }
            // Background image and semi-transparent layer
            .background(Color(red: 0.06, green: 0.11, blue: 0.12))
            .background(Image("Hoxxes04")).opacity(0.865)
            .navigationTitle("DRG's Zone Guide")
    }
}

struct ZoneDetail_Previews: PreviewProvider {
    static var previews: some View {
        ZoneDetail(zone: zones[7])
.previewInterfaceOrientation(.portrait)
    }
}
