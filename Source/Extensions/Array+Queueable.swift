public protocol Queueable {
  func process() -> Bool
}

public extension Array where Element : Queueable {

  public mutating func processQueue(from: Int = 0, _ to: Int? = nil, process: ((object: Element) -> Void)? = nil) {
    let to = to != nil ? to! : count
    let currentQueue = self[from..<to]
    for (index, queuable) in currentQueue.enumerate() {
      if queuable.process() == true {
        process?(object: queuable)
        removeAtIndex(index - (currentQueue.count - self.count))
      }
    }
  }
}
