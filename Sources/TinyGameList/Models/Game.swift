struct Game {
  let title: String
  let platform: Platform
  var hoursPlayed: Int
  let completed: Bool

  func summary() -> String {
    let gameSummary =
      "\(title) is on \(platform.displayName). You've played for \(hoursPlayed) hours and \(completed ? "you've completed it!" : "you have not completed it, boo.")"
    return gameSummary
  }

  mutating func addHours(_ hours: Int) {
    hoursPlayed += hours
  }
}
