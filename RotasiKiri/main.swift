//
//  main.swift
//  RotasiKiri
//
//  Created by M Habib Ali Akbar on 31/05/21.
//

import Foundation

func getInputArray(message: String) -> [Int] {
    
    print(message, terminator: ": ")
    let line = readLine() ?? ""
    
    return line.split(separator: " ").map{ Int($0) ?? 0}
    
}

func getInputNumber(message: String) -> Int {
    
    print(message, terminator: ": ")
    
    return Int(readLine() ?? "") ?? 0
}

//MARK: - Main Logic

func rotateLeft(arrayInt: [Int], numOfRotation: Int) {
    
    var array = arrayInt
    
    // to avoid unnecessary rotation, rotation value is ecual number of rotation modulo array size
    let rotation = numOfRotation % arrayInt.count
    
    // if rotation is zero, its rotated array will look like the original array
    if rotation == 0 {
        print("Rotated array \(array)")
        return
    }
    
    // rotate array base on rotation value
    for _ in 0..<rotation {
        let first = array.removeFirst()
        array.append(first)
    }
    
    print("Rotated array \(array)")
}

var shuldRepeat = 1

repeat {
    
    let array = getInputArray(message: "Masukkan angka array (angka dipisah dengan sepasi)")
    let rotation = getInputNumber(message: "Massukkan angka rotation")

    print("Original array: \(array)")
    print("Number of rotation: \(rotation)")

    rotateLeft(arrayInt: array, numOfRotation: rotation)
    
    shuldRepeat = getInputNumber(message: "Apakah anda ingin mencoba lagi? (masukkan angka 1 untuk coba lagi)") != 1 ? 0 : 1
    
} while shuldRepeat != 0



