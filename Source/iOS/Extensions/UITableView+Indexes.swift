import UIKit

public extension UITableView {

  func insert(indexes: [Int], section: Int = 0, animation: UITableViewRowAnimation = .Automatic) {
    let indexPaths = indexes.map { NSIndexPath(forRow: $0, inSection: section) }
    performUpdates { insertRowsAtIndexPaths(indexPaths, withRowAnimation: animation) }
  }

  func reload(indexes: [Int], section: Int = 0, animation: UITableViewRowAnimation = .Automatic) {
    let indexPaths = indexes.map { NSIndexPath(forRow: $0, inSection: section) }
    performUpdates { reloadRowsAtIndexPaths(indexPaths, withRowAnimation: animation) }
  }

  func delete(indexes: [Int], section: Int = 0, animation: UITableViewRowAnimation = .Automatic) {
    let indexPaths = indexes.map { NSIndexPath(forRow: $0, inSection: section) }
    performUpdates { deleteRowsAtIndexPaths(indexPaths, withRowAnimation: animation) }
  }

  func reloadSection(section: Int = 0, animation: UITableViewRowAnimation = .Automatic) {
    performUpdates {
      reloadSections(NSIndexSet(index: section), withRowAnimation: animation)
    }
  }

  private func performUpdates(@noescape closure: () -> Void) {
    beginUpdates()
    closure()
    endUpdates()
  }
}
