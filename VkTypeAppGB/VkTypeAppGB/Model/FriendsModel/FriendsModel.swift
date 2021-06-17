//
//  UserModel.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 11.06.2021.
//

import UIKit

struct UserModel {
    
    let name: String
    let avatarImageName: String
    
}

struct UserStorage {
    
    static let shared = UserStorage()
    
    var users: [UserModel]
    
    private init() {
        users = [
            UserModel(name: "Николай Миклухо-Маклай", avatarImageName: "Mikluho_Maklai"),
            UserModel(name: "Дункан Маклауд", avatarImageName: "Dunkan_Maklaud"),
            UserModel(name: "Сиба Ину", avatarImageName: "Siba_inu"),
            UserModel(name: "Финн Человек", avatarImageName: "Original_Finn"),
            UserModel(name: "Джэк Уайт", avatarImageName: "Jack_White"),
            UserModel(name: "Меган Фокс", avatarImageName: "Megan_Fox"),
            UserModel(name: "Николай Костер-Вальдау", avatarImageName: "NCW"),
            UserModel(name: "Пол Эдельштейн", avatarImageName: "Paul_Adelstein"),
            UserModel(name: "Морихэй Уэсиба", avatarImageName: "Morihei_Uesiba"),
            UserModel(name: "Ричард Чиз", avatarImageName: "Richard Cheese")
        ]
    }
    
}
