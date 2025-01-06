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

struct ListRowView: View {
    
    var zone: Zone
    var body: some View {
        HStack {
        //Setup list row view
            zone.zIcon
            .resizable()
            .frame(width: 50, height: 50)
            Text(zone.name)
                .fontWeight(.heavy)
                .foregroundColor(Color.yellow)
                .padding(.trailing, 0)
                .frame(width: 200, height: 50, alignment: .leading)
            zone.abResIcon
            zone.scResIcon
            Spacer()
        }
        //Set background image for list row
        .background(Color(red: 0.06, green: 0.11, blue: 0.12).frame(width: 385, height: 70, alignment: .center).offset(x:8).opacity(0.6))
        .background(zone.zImage.resizable().frame(width: 385, height: 70,alignment: .center).offset(x:8))
            
    }
}

struct ListRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ListRowView(zone: zones[0])
            ListRowView(zone: zones[1])
        }
        .previewLayout(.fixed(width:400, height:100))
        
    }
}
