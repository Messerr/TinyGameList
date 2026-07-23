@main
struct TinyGameList {
  static func main() {
    let game = Game(title: "Silent Hill 2", platform: .pc)

    print(game.detailedDescription())
  }
}
