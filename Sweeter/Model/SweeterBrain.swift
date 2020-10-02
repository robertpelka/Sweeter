//
//  SweeterBrain.swift
//  Sweeter
//
//  Created by Robert Pelka on 07/08/2020.
//  Copyright © 2020 Robert Pelka. All rights reserved.
//

import Foundation

let morningWelcomes = ["Hej", "Hello", "Dzień dobry", "Witam", "Cześć", "No hej", "Hejo", "Dzieńdoberek", "Uszanowanko", "Hejka", "Halo"]
let nicknames = ["Myszko", "Piękna", "Słodziaku", "Słodcziaczku", "Pięknotko", "Pszczółko", "Rybko", "Kotku", "Kiciu", "Kitku", "Myszorku", "Żabko", "Cukiereczku", "Modelko moja", "Kochanie", "Skarbie", "Najdroższa", "Słoneczko", "Słońce moje", "Króliczku", "Miłości moja", "Księżniczko", "Misiaczku"]
let morningTexts = ["Śniłaś mi się dzisiaj", "Tęsknie za Tobą", "Tęsknotki mocno", "Chcę do Ciebie", "Daj buziora", "Marzy mi się przytulas", "Chciałbym dać Ci buziaka", "Jesteś najcudowniejsza", "Jesteś najpiękniejsza", "Jesteś najlepsza", "Jesteś najwspanialsza", "Jesteś cudna", "Piękny dziś dzień", "Jestem szczęściarzem", "Kocham Cię", "Kocham Cię najmocniej", "Kocham", "Koooocham", "Uwielbiam Cię", "Jesteś najcudowniejsza", "Jesteś najsłodsza"]
let emojis: [String] = ["😘", "😏", "💘", "❤️", "💋", "👩‍❤️‍👨", "😽", "😚", "😙", "💌", "😍", "🥰", "💓", "💗", "🤩", "💝", "🤗", "💞", "😻", "😊", "💖", "💕", "😸", "😁", "😀", "😄"]
let morningAdditionalTexts = ["Jak tam, wyspałaś się?", "Wyspana?", "Jak się spało?", "Spałaś dobrze?", "Jak spanko?", "Jak humorek?", "Jakie plany na dziś?", "Jak samopoczucie?", "Jakieś plany na dziś?", "Humorek dopisuje?", "U Ciebie też tak pięknie?", "U ciebie też taka pogoda?", "Wiesz, że jesteś najpiękniejsza na świecie?", "Też tak tęsknisz?", "Co planujesz dzisiaj robić?"]

let morningMessage = Message(welcome: morningWelcomes, nickname: nicknames, text: morningTexts, emoji: emojis, additionalText: morningAdditionalTexts)

let eveningGoodbyes = ["Dobranoc", "Dobrej nocy", "Papa", "Papapapapa", "Idę spać", "Idę już spać", "Mam spanko", "Do jutra", "Dobrej nocki", "Dobranocki", "Paa"]
let eveningTexts = ["Karaluchy pod poduchy", "Kolorowych snów", "Śpij dobrze", "Spokojnej nocy", "Miłych snów", "Będę śnił o Tobie", "Mam nadzieję, że mi się przyśnisz", "Chciałbym Cię przytulić", "Buziaczkiii", "Całuję", "Kocham Cię!", "Kocham Cię bardzo!", "Kocham Cię najmocniej", "Dobranoc, pchły na noc xD", "Spokojnych snów", "Wyśpij się dobrze", "Samych słodkich snów", "Słodkich snów"]
let eveningAdditionalTexts = ["Wiesz, że jesteś najcudniejsza?", "Wiesz, że Cię uwielbiam?", "Wiesz, że jesteś najpiękniejsza?", "Też tak tęsknisz?", "Wiesz, że kocham Cię najmocniej?", "Też taka zmęczona?", "Też idziesz już spać?", "Dostanę e-buziaka?", "Też chciałabyś przytulaska?", "Dasz mi buziaczka?", "Dostanę e-przytulaska?", "Wiesz, że nie ma piękniejszej od Ciebie?"]

let eveningMessage = Message(welcome: eveningGoodbyes, nickname: nicknames, text: eveningTexts, emoji: emojis, additionalText: eveningAdditionalTexts)

func generateFirstMorningText() -> String {
    let welcome = morningMessage.welcome[Int.random(in: 0...morningMessage.welcome.count-1)]
    let nickname = morningMessage.nickname[Int.random(in: 0...morningMessage.nickname.count-1)]
    let emoji = morningMessage.emoji[Int.random(in: 0...morningMessage.emoji.count-1)]
    let text = morningMessage.text[Int.random(in: 0...morningMessage.text.count-1)]
    let secondEmoji = morningMessage.emoji[Int.random(in: 0...morningMessage.emoji.count-1)]
    
    return welcome+", "+nickname+" "+emoji+"\n"+text+" "+secondEmoji
}

func generateSecondMorningText() -> String {
    let additionalText = morningMessage.additionalText[Int.random(in: 0...morningMessage.additionalText.count-1)]
    let emoji = morningMessage.emoji[Int.random(in: 0...morningMessage.emoji.count-1)]
    
    return additionalText+" "+emoji
}

func generateFirstEveningText() -> String {
    let welcome = eveningMessage.welcome[Int.random(in: 0...eveningMessage.welcome.count-1)]
    let nickname = eveningMessage.nickname[Int.random(in: 0...eveningMessage.nickname.count-1)]
    let emoji = eveningMessage.emoji[Int.random(in: 0...eveningMessage.emoji.count-1)]
    let text = eveningMessage.text[Int.random(in: 0...eveningMessage.text.count-1)]
    let secondEmoji = eveningMessage.emoji[Int.random(in: 0...eveningMessage.emoji.count-1)]
    
    return welcome+", "+nickname+" "+emoji+"\n"+text+" "+secondEmoji
}

func generateSecondEveningText() -> String {
    let additionalText = eveningMessage.additionalText[Int.random(in: 0...eveningMessage.additionalText.count-1)]
    let emoji = eveningMessage.emoji[Int.random(in: 0...eveningMessage.emoji.count-1)]
    
    return additionalText+" "+emoji
}
