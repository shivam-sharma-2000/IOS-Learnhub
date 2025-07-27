import Foundation


var landmarks: [Landmark] = load("landmarkData.json")

let modules = [
    Module(title: "Home", iconName:"baseball.diamond.bases"),
    Module(title: "Swift Basics", iconName:"baseball.diamond.bases"),
    Module(title: "UI Widgets", iconName:"globe"),
    Module(title: "Navigation & Layout", iconName: "globe"),
    Module(title: "State Management", iconName:"globe"),
    Module(title: "Networking", iconName:"globe"),
    Module(title: "Local Storage", iconName:"globe"),
    Module(title: "Authentication", iconName:"globe"),
    Module(title: "Notifications", iconName:"globe"),
    Module(title: "Device Features", iconName:"globe"),
]

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data


    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
