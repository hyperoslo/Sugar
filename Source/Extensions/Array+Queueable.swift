public protocol Queueable {
  func process() -> Bool
}

public extension Array where Element : Queueable {

  public mutating func processQueue(from: Int = 0, _ to: Int? = nil, process: ((element: Element) -> Void)? = nil) {
    let to = to != nil ? to! : count
    let currentQueue = self[from..<to]
    for (index, element) in currentQueue.enumerate() where element.process() {
      process?(element: element)
      removeAtIndex(index - (currentQueue.count - self.count))
    }
  }
}
