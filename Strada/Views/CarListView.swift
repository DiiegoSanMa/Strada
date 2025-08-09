//
//  CarListView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// CarListView.swift
// Lista completa de autos disponibles

import SwiftUI

struct CarListView: View {
    let cars: [Car]

    var body: some View {
        List(cars) { car in
            NavigationLink(destination: CarDetailView(car: car)) {
                HStack {
                    Image(car.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 60)
                        .cornerRadius(8)

                    VStack(alignment: .leading) {
                        Text(car.name)
                            .font(.headline)

                        Text(car.price)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
        }
        .navigationTitle("Todos los Autos")
    }
}
