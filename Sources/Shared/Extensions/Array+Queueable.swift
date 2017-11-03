public protocol Queueable {
  func process() -> Bool
}

public extension Array where Element : Queueable {

  public mutating func processQueue(_ from: Int = 0, _ to: Int? = nil, process: ((_ element: Element) -> Void)? = nil) {
    let to = to != nil ? to! : count
    let currentQueue = self[from..<to]
    for (index, element) in currentQueue.enumerated() where element.process() {
      process?(element)
      remove(at: index - (currentQueue.count - self.count))
    }
  }
}
