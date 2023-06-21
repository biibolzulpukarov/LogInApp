//
//  User.swift
//  LogInApp
//
//  Created by Бийбол Зулпукаров on 21/6/23.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "User",
            password: "password",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let photo: String
    let bio: String
    let university: University
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Biibol",
            surname: "Zulpukarov",
            photo: "BZulpukarov",
            bio: """
            Я, Зулпукаров Бийбол, родился 14 августа 2003 года в городе Ош Кыргызской Республики. Окончил школу №3 имени М.В.Ломоносова в 2021 году с отличием и поступил в университет Вистула в Варшаве(Польша). Окончил второй курс факультета Сomputer Engineering. На данный момент учусь IOS-разработке.
            """,
            university: University.getUniversity()
        )
    }
}

struct University {
    let title: String
    let semester: Semester
    let department: Department
    
    static func getUniversity() -> University {
        University(
            title: "Vistula",
            semester: .fourth,
            department: .computerEngineering
        )
    }
}

enum Semester: String {
    case first = "1"
    case second = "2"
    case third = "3"
    case fourth = "4"
    case fifth = "5"
}

enum Department: String {
    case management = "Management"
    case computerEngineering = "Computer Engineering"
    case internationalRelationships =  "International Relationships"
}
