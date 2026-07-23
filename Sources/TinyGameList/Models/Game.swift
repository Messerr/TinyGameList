struct Game {
  let title: String
  let platform: Platform
  var hoursPlayed: Int
  var completed: Bool
  var playStatus: String {
    completed ? "Completed" : "In Progress"
  }
  var progress: GameProgress {
    if completed {
      return .completed
    } else if hoursPlayed == 0 {
      return .notStarted
    } else {
      return .playing(hours: hoursPlayed)
    }
  }

  init(
    title: String,
    platform: Platform
  ) {
    self.title = title
    self.platform = platform
    self.hoursPlayed = 0
    self.completed = false
  }

  func summary() -> String {
    let gameSummary =
      "\(title) is on \(platform.displayName). You've played for \(hoursPlayed) hours and \(completed ? "you've completed it!" : "you have not completed it, boo.")"
    return gameSummary
  }

  mutating func addHours(_ hours: Int) {
    hoursPlayed += hours
  }

  mutating func markCompleted() {
    completed = true
  }
}
extension Game {
  func detailedDescription() -> String {
    return "\(title) on \(platform.displayName) - \(progress)"
  }
}
