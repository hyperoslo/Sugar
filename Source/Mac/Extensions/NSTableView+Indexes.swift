import Cocoa

public extension NSTableView {

  func insert(indexes: [Int], section: Int = 0, animation: NSTableViewAnimationOptions = .EffectFade) {
    let indexPaths = NSMutableIndexSet()
    indexes.forEach { indexPaths.addIndex($0) }
    performUpdates { insertRowsAtIndexes(indexPaths, withAnimation: animation) }
  }

  func reload(indexes: [Int], section: Int = 0, animation: NSTableViewAnimationOptions = .EffectFade) {
    let indexPaths = NSMutableIndexSet()
    indexes.forEach { indexPaths.addIndex($0) }
    performUpdates { reloadDataForRowIndexes(indexPaths, columnIndexes: NSIndexSet(index: 0)) }
  }

  func delete(indexes: [Int], animation: NSTableViewAnimationOptions = .EffectFade) {
    let indexPaths = NSMutableIndexSet()
    indexes.forEach { indexPaths.addIndex($0) }
    performUpdates { removeRowsAtIndexes(indexPaths, withAnimation: animation) }
  }

  private func performUpdates(@noescape closure: () -> Void) {
    beginUpdates()
    closure()
    endUpdates()
  }
}
