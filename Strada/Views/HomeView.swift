//
//  HomeView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// Vista principal con carrusel y acceso a la lista completa
// HomeView.swift
// Vista principal con carrusel y acceso a la lista completa

import SwiftUI

struct HomeView: View {
    let cars = [
        Car(name: "Toyota Supra MK4", model: "1998", price: "$85,000", imageName: "supra"),
        Car(name: "Mitsubishi Lancer Evo X", model: "2015", price: "$42,000", imageName: "lancer"),
        Car(name: "Porsche 911 Turbo S", model: "2022", price: "$210,000", imageName: "porsche"),
        Car(name: "Nissan GTR R35", model: "2020", price: "$115,000", imageName: "gtr"),
        Car(name: "Mazda RX-7", model: "2002", price: "$68,000", imageName: "rx7"),
        Car(name: "Honda NSX", model: "2021", price: "$180,000", imageName: "nsx")
    ]

    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenido a Strada")
                    .font(.largeTitle)
                    .bold()
                    .padding(.top)

                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16) {
                        ForEach(cars) { car in
                            NavigationLink(destination: CarDetailView(car: car)) {
                                CarCardView(car: car)
                            }
                        }
                    }
                    .padding()
                }

                NavigationLink(destination: CarListView(cars: cars)) {
                    Text("Ver Todos los Autos")
                        .font(.headline)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal)
                }

                Spacer()
            }
            .navigationBarTitle("Inicio", displayMode: .inline)
        }
    }
}
