//
//  ContentView.swift
//  Strada
//
//  Created by Diego Emiliano Santana Madrid on 07/08/25.
//

// Modelo de datos para cada carro
import Foundation

struct Car: Identifiable {
    let id = UUID()
    let name: String
    let model: String
    let price: String
    let imageName: String
}
