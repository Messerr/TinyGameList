@main
struct TinyGameList {
  static func main() {
    let game = Game(
      title: "Demon's Souls",
      platform: .pc,
      hoursPlayed: 100,
      completed: true
    )

    switch game.progress {
    case .notStarted:
      print("Game not started")
    case .completed:
      print("Game completed")
    case .playing(let hours):
      print("Game in progress for \(hours) hours")
    }
  }
}
