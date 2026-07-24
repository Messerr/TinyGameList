enum GameError: Error {
  case emptyTitle
}

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
    platform: Platform,
    hoursPlayed: Int = 0,
    completed: Bool = false
  ) throws {
    guard !title.isEmpty else {
      throw GameError.emptyTitle
    }
    self.title = title
    self.platform = platform
    self.hoursPlayed = hoursPlayed
    self.completed = completed
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
