enum Platform {
  case ps3
  case ps5
  case pc
  case nintendoSwitch

  var displayName: String {
    switch self {
    case .ps3: return "PS3"
    case .ps5: return "PS5"
    case .pc: return "PC"
    case .nintendoSwitch: return "Nintendo Switch"
    }
  }
}
