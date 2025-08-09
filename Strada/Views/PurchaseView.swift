//
//  PurchaseView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// PurchaseView.swift
// Simulación de compra del auto

import SwiftUI

struct PurchaseView: View {
    let car: Car
    @State private var showConfirmation = false

    var body: some View {
        VStack(spacing: 20) {
            Text("Estás a punto de comprar:")
                .font(.headline)

            Text(car.name)
                .font(.largeTitle)
                .bold()

            Text("Precio: \(car.price)")
                .font(.title2)

            Button(action: {
                showConfirmation = true
            }) {
                Text("Confirmar Compra")
                    .bold()
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            .padding()

            Spacer()
        }
        .padding()
        .alert(isPresented: $showConfirmation) {
            Alert(
                title: Text("¡Compra Exitosa!"),
                message: Text("Gracias por comprar en Strada."),
                dismissButton: .default(Text("OK"))
            )
        }
    }
}
