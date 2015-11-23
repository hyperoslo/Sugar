import Foundation

public func delay(delay:Double, closure: () -> Void) {
  dispatch_after(
    dispatch_time(
      DISPATCH_TIME_NOW,
      Int64(delay * Double(NSEC_PER_SEC))
    ),
    dispatch_get_main_queue(), closure)
}

public func localizedString(key: String, comment: String? = nil) -> String {
  return NSLocalizedString(key, comment: (comment != nil) ? comment! : key)
}

public enum DispatchQueue {
  case Main, Interactive, Initiated, Utility, Background, Custom(dispatch_queue_t)
}

public func dispatch(queue queueType: DispatchQueue = .Main, closure: () -> Void) {
  let queue: dispatch_queue_t

  switch queueType {
    case .Main:
      queue = dispatch_get_main_queue()
    case .Interactive:
      queue = dispatch_get_global_queue(QOS_CLASS_USER_INTERACTIVE, 0)
    case .Initiated:
      queue = dispatch_get_global_queue(QOS_CLASS_USER_INITIATED, 0)
    case .Utility:
      queue = dispatch_get_global_queue(QOS_CLASS_UTILITY, 0)
    case .Background:
      queue = dispatch_get_global_queue(QOS_CLASS_BACKGROUND, 0)
    case .Custom(let userQueue):
      queue = userQueue
  }

  dispatch_async(queue, {
    closure()
  })
}

dispatch(queue: .Custom(myQueue)) {

}
