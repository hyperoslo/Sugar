import UIKit

public extension UITableView {

  func insert(indexes: [Int], section: Int = 0, animation: UITableViewRowAnimation = .None) {
    let indexPaths = indexes.map { NSIndexPath(forRow: $0, inSection: section) }
    performUpdates { insertRowsAtIndexPaths(indexPaths, withRowAnimation: .None) }
  }

  func reload(indexes: [Int], section: Int = 0, animation: UITableViewRowAnimation = .None) {
    let indexPaths = indexes.map { NSIndexPath(forRow: $0, inSection: section) }
    performUpdates { reloadRowsAtIndexPaths(indexPaths, withRowAnimation: .None) }
  }

  func delete(indexes: [Int], section: Int = 0, animation: UITableViewRowAnimation = .None) {
    let indexPaths = indexes.map { NSIndexPath(forRow: $0, inSection: section) }
    performUpdates { deleteRowsAtIndexPaths(indexPaths, withRowAnimation: .None) }
  }

  func reloadSection(section: Int = 0, animation: UITableViewRowAnimation = .None) {
    performUpdates {
      reloadSections(NSIndexSet(index: section), withRowAnimation: .Automatic)
    }
  }

  private func performUpdates(@noescape closure: () -> Void) {
    beginUpdates()
    closure()
    endUpdates()
  }
}
