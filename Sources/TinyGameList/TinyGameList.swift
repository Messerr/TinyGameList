@main
struct TinyGameList {
  static func main() {
    let newGame = try? Game(
      title: "Silent Hill 2",
      platform: .pc
    )

    let completedGame = try? Game(
      title: "Demon's Souls",
      platform: .ps3,
      hoursPlayed: 100,
      completed: true
    )

    do {
      let invalidGame = try Game(
        title: "",
        platform: .pc
      )

      print(invalidGame.detailedDescription())
    } catch GameError.emptyTitle {
      print("A game must have a title")
    }

    printGame(newGame)
    printGame(completedGame)

    func printGame(_ game: Game?) {
      guard let game else {
        print("Invalid Game")
        return
      }

      print(game.detailedDescription())
    }
  }
}
