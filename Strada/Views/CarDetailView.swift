//
//  CarDetailView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// CarDetailView.swift
// Vista de detalle con opción de compra

import SwiftUI

struct CarDetailView: View {
    let car: Car

    var body: some View {
        VStack {
            Image(car.imageName)
                .resizable()
                .scaledToFit()
                .frame(height: 250)

            Text(car.name)
                .font(.title)
                .bold()

            Text("Modelo: \(car.model)")
                .font(.subheadline)

            Text("Precio: \(car.price)")
                .font(.title2)
                .padding(.bottom)

            NavigationLink(destination: PurchaseView(car: car)) {
                Text("Comprar")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.green)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .padding()

            Spacer()
        }
        .padding()
        .navigationTitle("Detalles")
    }
}
