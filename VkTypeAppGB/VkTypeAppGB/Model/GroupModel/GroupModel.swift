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
            GroupModel(name: "Пацанский цитатник", description: "В основном мысли Джейсена Стэтхема", groupImage: "Stetham"),
            GroupModel(name: "Готовим вкусно", description: "Рецепты на каждый день. Кухни всех стран.", groupImage: "CookGood"),
            GroupModel(name: "Corgi Club", description: "Название говорит само за себя", groupImage: "CorgiClub")
        ]
        searchGroups = [
            GroupModel(name: "Пацанский цитатник", description: "В основном мысли Джейсэна Статхэма", groupImage: "Stetham"),
            GroupModel(name: "Фехралевый Жуль-Верн", description: "Кургазак vs Догомыс", groupImage: "JulVern"),
            GroupModel(name: "Corgi Club", description: "Название говорит само за себя", groupImage: "CorgiClub"),
            GroupModel(name: "Кинолюбы", description: "Всё о кино и не только", groupImage: "Kinolovers"),
            GroupModel(name: "Готовим вкусно", description: "Рецепты на каждый день. Кухни всех стран.", groupImage: "CookGood"),
            GroupModel(name: "Комики", description: "Группа, посвящённая Stand Up комедии", groupImage: "StandUp"),
            GroupModel(name: "Театры Петербурга", description: "Расписание спектаклей и билеты", groupImage: "SpbT")
        ]
    }
    
}
