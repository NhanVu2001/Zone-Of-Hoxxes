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

struct ResIcon: View {
    var image: Image
    var body: some View {
    image
            .clipShape(Rectangle())
                    .shadow(radius: 7)
    }
}

struct ResIcon_Previews: PreviewProvider {
    static var previews: some View {
        ResIcon(image:Image("Croppa_icon"))
    }
}
