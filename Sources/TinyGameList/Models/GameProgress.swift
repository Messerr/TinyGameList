enum GameProgress: CustomStringConvertible {
  case notStarted
  case playing(hours: Int)
  case completed

  var description: String {
    switch self {
    case .notStarted: return "Game Not Started"
    case .completed: return "Game Completed"
    case .playing(let hours): return "Game played for \(hours) hours"
    }
  }
}
