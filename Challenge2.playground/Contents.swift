import UIKit

let texto = "la historia de mi vida"

func contarLetras(de text: String) {
    var characterOcurrences: [Character: Int] = [:]
    
    let lowercaseText = text.lowercased()
    let textWithoutSpaces = lowercaseText.filter{ $0 != " " }
    let characters = Array(textWithoutSpaces)
    
    for character in characters {
        if (characterOcurrences[character] != nil) {
            characterOcurrences[character]! += 1
        } else {
            characterOcurrences[character] = 1
        }
    }
    
    for (character, ocurrences) in characterOcurrences {
        print("\(character): \(ocurrences)")
    }
}

contarLetras(de: texto)
