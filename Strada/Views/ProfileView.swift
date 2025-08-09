//
//  ProfileView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// ProfileView.swift
// Vista de perfil (en desarrollo)

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(spacing: 20) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 100, height: 100)

            Text("Usuario Invitado")
                .font(.title2)
                .bold()

            Text("Bienvenido a Strada")
                .foregroundColor(.gray)

            Spacer()
        }
        .padding()
        .navigationTitle("Perfil")
    }
}
