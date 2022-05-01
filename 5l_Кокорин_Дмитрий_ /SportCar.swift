import Foundation

class SportCar: Car {
    var window: Window
    var tires: Tires
    var music: Subwoofer
    var engine: Engine
    var spoiler: Spoiler
    
    init(tires: Tires, music:Subwoofer, engine: Engine, window: Window, spoiler: Spoiler){
        self.tires = tires
        self.music = music
        self.engine = engine
        self.window = window
        self.spoiler = spoiler
    }
    func helloDriver() {
        var hello = "Следите за дорогой!"
        hello.helloTime()
        print(hello)
    }
}

extension SportCar: CustomStringConvertible{
    var description: String {
        "У данной спортивной машины \(engine.rawValue), \(music.rawValue), \(tires.rawValue), \(spoiler.rawValue)"
    }
    
    
}
