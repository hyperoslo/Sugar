import Foundation

public enum DispatchQueue {
  case main, interactive, initiated, utility, background, custom(Dispatch.DispatchQueue)
}

private func getQueue(queue queueType: DispatchQueue = .main) -> Dispatch.DispatchQueue {
  let queue: Dispatch.DispatchQueue

  switch queueType {
  case .main:
    queue = DispatchQueue.main
  case .interactive:
    queue = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInteractive)
  case .initiated:
    queue = DispatchQueue.global(qos: DispatchQoS.QoSClass.userInitiated)
  case .utility:
    queue = DispatchQueue.global(qos: DispatchQoS.QoSClass.utility)
  case .background:
    queue = DispatchQueue.global(qos: DispatchQoS.QoSClass.background)
  case .custom(let userQueue):
    queue = userQueue
  }

  return queue
}

public func delay(_ delay:Double, queue queueType: DispatchQueue = .main, closure: @escaping () -> Void) {
  getQueue(queue: queueType).asyncAfter(
    deadline: DispatchTime.now() + Double(Int64(delay * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC),
    execute: closure
  )
}

public func dispatch(queue queueType: DispatchQueue = .main, closure: @escaping () -> Void) {
  getQueue(queue: queueType).async(execute: {
    closure()
  })
}
