import Foundation

protocol Car{
    var tires: Tires {get set}
    var music: Subwoofer {get set}
    var engine: Engine {get set}
    var window: Window {get set}
    func helloDriver()
}

extension Car {
    mutating func onOffEngine() {
        engine = engine == .on ? .off : .on //тернарный оператор
    }
    mutating func windowFunc(){
        window = window == .open ? .noOpen : .open
    }
    mutating func music(){
        music = music == .yes ? .no : .yes
    }
}
