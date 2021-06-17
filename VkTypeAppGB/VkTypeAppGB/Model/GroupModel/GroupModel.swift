//
//  GroupModel.swift
//  VkTypeAppGB
//
//  Created by Роман Ботов on 11.06.2021.
//

import UIKit

struct GroupModel {
    
    let name: String
    let description: String
    let groupImage: String
    
}

struct GroupStorage {
    
    static let shared = GroupStorage() //Что это?
    
    var groups: [GroupModel]
    var searchGroups: [GroupModel]
    
    private init() {
        groups = [
            GroupModel(name: "Пацанский цитатник", description: "В основном мысли Джейсэна Статхэма", groupImage: "Stetham"),
            GroupModel(name: "Фехралевый Жуль-Верн", description: "Для тех, кому интересно", groupImage: "JulVern"),
            GroupModel(name: "Corgi Club", description: "Название говорит само за себя", groupImage: "CorgiClub")
        ]
        searchGroups = [
            GroupModel(name: "Кинолюбы", description: "Описание группы", groupImage: "CorgiClub"),
            GroupModel(name: "Готовим вкусно", description: "Описание группы", groupImage: "CorgiClub"),
            GroupModel(name: "Комики", description: "Описание группы", groupImage: "CorgiClub"),
            GroupModel(name: "Театры Петербурга", description: "Описание группы", groupImage: "CorgiClub")
        ]
    }
    
}
