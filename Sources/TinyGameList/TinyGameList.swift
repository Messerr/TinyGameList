@main
struct TinyGameList {
  static func main() {
    let games = [
      Game(
        title: "Demon's Souls",
        platform: .pc,
        hoursPlayed: 15,
        completed: false
      ),
      Game(
        title: "The Legend of Zelda",
        platform: .nintendoSwitch,
        hoursPlayed: 30,
        completed: true
      ),
    ]

    let hasPCGame = games.contains { $0.platform == .pc }
    if hasPCGame {
      print("This list contains pc games")
    } else {
      print("There are no PC games in the list")
    }
  }
}
