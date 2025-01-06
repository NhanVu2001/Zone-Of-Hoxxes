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
 https://stackoverflow.com/questions/56517904/how-do-i-modify-the-background-color-of-a-list-in-swiftui
*/


import SwiftUI

struct ZoneList: View {
    init() {
           UITableView.appearance().backgroundColor = .clear // For tableView
        UITableViewCell.appearance().backgroundColor = .white // For tableViewCell
       }

    @State private var searchText = ""
    
    var body: some View {
        NavigationView{
            //Display zone list
            VStack{
            List(filteredZones){
                zone in NavigationLink {
                    ZoneDetail(zone: zone)
                }label: {
                    ListRowView(zone: zone)
                }
            }
            //Page background and navigation title
            .background(Image("Hoxxes04"))
            .navigationTitle(Text("Welcome to Hoxxes IV"))
            .searchable(text: $searchText, prompt: "Search for resource")
        }   .environment(\.colorScheme, .dark)
    }   .environment(\.colorScheme, .dark)
}
    
    // var to return filtered list
    var filteredZones: [Zone] {
        if searchText.isEmpty {
            return zones
        } else {
            return zones.filter {
                $0.abundantResource.localizedCaseInsensitiveContains(searchText) ||
                $0.scarceResource.localizedCaseInsensitiveContains(searchText)
            }
        }
    }
    

struct ZoneList_Previews: PreviewProvider {
    static var previews: some View {
        ZoneList()
    }
}
    }
