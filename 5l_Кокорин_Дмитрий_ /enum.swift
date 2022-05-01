import Foundation

enum Engine: String{
    case on = "двигатель заведен"
    case off = "двигатель выключен"
}

enum Subwoofer: String{
    case yes = "есть cабвуфер"
    case no = "нет сабвуфера"
}

enum Window{
    case open
    case noOpen
}

enum Lights{
    case on
    case off
}

enum Tires: String{
    case summer = "летняя резина"
    case winter = "зимняя резина"
}

enum Spoiler: String{
    case yes = "есть спойлер"
    case no = "спойлер отсутствует"
}

enum Ladle: String{
    case yes = "есть ковш"
    case no = "ковш отсутствует"
}
