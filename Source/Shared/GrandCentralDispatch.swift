import Foundation

public enum DispatchQueue {
  case Main, Interactive, Initiated, Utility, Background, Custom(dispatch_queue_t)
}

private func getQueue(queue queueType: DispatchQueue = .Main) -> dispatch_queue_t {
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

  return queue
}

public func delay(delay:Double, queue queueType: DispatchQueue = .Main, closure: () -> Void) {
  dispatch_after(
    dispatch_time(DISPATCH_TIME_NOW, Int64(delay * Double(NSEC_PER_SEC))),
    getQueue(queue: queueType),
    closure
  )
}

public func dispatch(queue queueType: DispatchQueue = .Main, closure: () -> Void) {
  dispatch_async(getQueue(queue: queueType), {
    closure()
  })
}
