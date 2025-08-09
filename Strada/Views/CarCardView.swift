//
//  CarCardView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// Vista de la tarjeta del carro (usada en el carrusel)
// CarCardView.swift
// Vista de tarjeta usada en el carrusel

import SwiftUI

struct CarCardView: View {
    let car: Car

    var body: some View {
        VStack {
            Image(car.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 160)
                .cornerRadius(12)

            Text(car.name)
                .font(.headline)

            Text(car.price)
                .font(.subheadline)
                .foregroundColor(.gray)
        }
        .frame(width: 220)
        .background(Color(.systemGray6))
        .cornerRadius(12)
        .shadow(radius: 5)
    }
}
