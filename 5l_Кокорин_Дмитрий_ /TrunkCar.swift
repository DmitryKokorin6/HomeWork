import Foundation

class TrunkCar: Car {
    var window: Window
    var tires: Tires
    var music: Subwoofer
    var engine: Engine
    var ladle: Ladle
    
    init(tires: Tires, music:Subwoofer, engine: Engine, window: Window, ladle: Ladle){
        self.tires = tires
        self.music = music
        self.engine = engine
        self.window = window
        self.ladle = ladle
    }
    func helloDriver() {
        var hello = "Следите за дорогой!"
        hello.helloTime()
        print(hello)
    }
}

extension TrunkCar: CustomStringConvertible{
    var description: String {
        "У данной спортивной машины \(engine.rawValue), \(music.rawValue), \(tires.rawValue), \(ladle.rawValue)"
    }
}
