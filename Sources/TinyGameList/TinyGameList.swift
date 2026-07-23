@main
struct TinyGameList {
  static func main() {
    let game = Game(
      title: "Demon's Souls",
      platform: .pc,
      hoursPlayed: 100,
      completed: false
    )

    print(game.progress)
  }
}
