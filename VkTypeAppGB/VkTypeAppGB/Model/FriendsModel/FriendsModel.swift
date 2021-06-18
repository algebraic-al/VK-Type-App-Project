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
    let photos: [PhotoModel]
    
}

struct UserStorage {
    
    static let shared = UserStorage()
    
    var users: [UserModel]
    
    private init() {
        users = [
            UserModel(name: "Николай Костер-Вальдау", avatarImageName: "NCW", photos: [PhotoModel(image: "NCW")]),
            UserModel(name: "Николай Миклухо-Маклай", avatarImageName: "Mikluho_Maklai", photos: [PhotoModel(image: "Mikluho_Maklai")]),
            UserModel(name: "Дункан Маклауд", avatarImageName: "Dunkan_Maklaud", photos: [PhotoModel(image: "Dunkan_Maklaud")]),
            UserModel(name: "Сиба Ину", avatarImageName: "Siba_inu", photos: [PhotoModel(image: "Siba_inu")]),
            UserModel(name: "Финн Человек", avatarImageName: "Original_Finn", photos: [PhotoModel(image: "Original_Finn")]),
            UserModel(name: "Джэк Уайт", avatarImageName: "Jack_White", photos: [PhotoModel(image: "Jack_White")]),
            UserModel(name: "Меган Фокс", avatarImageName: "Megan_Fox", photos: [PhotoModel(image: "Megan_Fox")]),
            UserModel(name: "Пол Эдельштейн", avatarImageName: "Paul_Adelstein", photos: [PhotoModel(image: "Paul_Adelstein")]),
            UserModel(name: "Морихэй Уэсиба", avatarImageName: "Morihei_Uesiba", photos: [PhotoModel(image: "Morihei_Uesiba")]),
            UserModel(name: "Ричард Чиз", avatarImageName: "Richard Cheese", photos: [PhotoModel(image: "Richard Cheese")]),
        ]
    }
    
}
