import Foundation

extension String {

  var length: Int { return characters.count }

  func replace(string: String, with withString: String) -> String {
    return stringByReplacingOccurrencesOfString(string, withString: withString)
  }

}