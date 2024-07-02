//
//  CreateUserProfileView.swift
//  Snapshot-ios-sample
//
//  Created by Rami LAJMI on 22/05/2024.
//

import SwiftUI

struct CreateUserProfileView: View {
    @State var firstName: String = ""
    @State var lastName: String = ""
    @State var userName: String = ""
    @State var email: String = ""
    
    @State var isMemojiStickersOn = true
    @State var selColorIndexPicker = 0
    @State var selColorIndexStepper = 0
    let colors: [(Color, String)] = [
        (.red, "Rouge"),
        (.orange, "Orange"),
        (.yellow, "Jaune"),
        (.green, "Vert"),
      (.blue, "Bleu"),
          (Color(red: 238/255, green: 130/255, blue: 238/255), "Violet")
      ]

        var body: some View {
            NavigationView {
                Form {
                    CustomTextField(
                        headerLabel: "Nom",
                        placeHolder: "Nom",
                        value: $lastName)
                    
                    CustomTextField(
                        headerLabel: "Prénom",
                        placeHolder: "Prénom",
                        value: $firstName)
                    
                    CustomTextField(
                        headerLabel: "Nom d'utilisateur",
                        placeHolder: "Nom d'utilisateur",
                        value: $userName)
                    
                    CustomTextField(
                        headerLabel: "Adresse e-mail",
                        placeHolder: "exemple@exemple.fr",
                        value: $email)
                    
                    CustomColorPicker(
                        headerLabel: "Couleur favorite",
                        placeHolder: "Votre Couleur",
                        colors: colors
                    )
                    
                }
                .navigationTitle("Compte utilisateur")
            }
        }
}

#Preview {
    CreateUserProfileView(
    )
}
