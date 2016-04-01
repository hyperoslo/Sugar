# Sugar

Sugar is a sweetener for your Cocoa implementations.

[![CI Status](http://img.shields.io/travis/hyperoslo/Sugar.svg?style=flat)](https://travis-ci.org/hyperoslo/Sugar)
[![Version](https://img.shields.io/cocoapods/v/Sugar.svg?style=flat)](http://cocoadocs.org/docsets/Sugar)
[![Carthage Compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![License](https://img.shields.io/cocoapods/l/Sugar.svg?style=flat)](http://cocoadocs.org/docsets/Sugar)
[![Platform](https://img.shields.io/cocoapods/p/Sugar.svg?style=flat)](http://cocoadocs.org/docsets/Sugar)

## Table of Contents

<img src="https://raw.githubusercontent.com/hyperoslo/Sugar/master/Images/icon.png" alt="Hue Icon" align="right" />

* [iOS](#ios)
  * [Application](#application)
  * [Screen](#screen)
  * [Simulator](#simulator)
  * [iOS Extensions](#ios-extensions)
    * [UICollectionView](#uicollectionView)
    * [UITableView](#uitableView)
    * [UIView](#uiview)
    * [UIImage](#uiimage)
* [Shared](#shared)
  * [Dates](#dates)
  * [Frame](#frame)
  * [Grand Central Dispatch](#grand-central-dispatch)
  * [Localization](#localization)
  * [Operators](#operators)
  * [Regex](#regex)
  * [Shared Extensions](#shared-extensions)
    * [Queueable](#queueable)
    * [URLStringConvertible](#urlstringconvertible)
    * [Core Foundation](#corefoundation)
  * [Swizzler](#swizzler)
  * [Then](#then)
  * [Type Alias](#type-alias)
  * [UITesting](#uitesting)
  * [UnitTesting](#unittesting)

## iOS

### Application

```swift
let appName = Application.name             // CFBundleDisplayName : String
let appVersion = Application.version       // CFBundleShortVersionString : String
let appExecutable = Application.executable // CFBundleExecutable : String
let appBundle = Application.bundle         // CFBundleIdentifier : String
let appSchemes = Application.schemes       // CFBundleURLSchemes : [String]
let mainAppScheme = Application.mainScheme // CFBundleURLSchemes.first : String?
```

Gain easy access to main bundle information.

### Screen

```swift
let pixelSize = Screen.pixelSize // CGSize(width: screenWidth * scale, height: screenHeight * scale)
```

Get the actual pixel information of the device screen.

### Simulator

```swift
if !Simulator.isRunning {
  // add device specific operations here
}
```

To easily exclude operations from when you as a developer runs the application in the simulator,
not subscribing to push notification or running analytics operations etc.

### iOS Extensions

### UICollectionView

#### +Indexes

```swift
let collectionView = UICollectionView()
collectionView.insert([1,2,3]) // ([Int] -> [NSIndexPaths]).{ insertRowsAtIndexPaths }
collectionView.reload([1,2,3]) // ([Int] -> [NSIndexPaths]).{ reloadRowsAtIndexPaths }
collectionView.delete([1,2,3]) // ([Int] -> [NSIndexPaths]).{ deleteRowsAtIndexPaths }
collectionView.reloadSection() // ([Int] -> [NSIndexSet]).{ reloadSections }
```

Enables you to easily run insert, update, delete, reload methods for a collection view by using `Int`s instead
of `NSIndexPath` and `NSIndexSet`.

### UITableView

#### +Indexes

```swift
let tableView = UITableView()
tableView.insert([1,2,3]) // ([Int] -> [NSIndexPaths]).{ insertRowsAtIndexPaths }
tableView.reload([1,2,3]) // ([Int] -> [NSIndexPaths]).{ reloadRowsAtIndexPaths }
tableView.delete([1,2,3]) // ([Int] -> [NSIndexPaths]).{ deleteRowsAtIndexPaths }
tableView.reloadSection() // ([Int] -> [NSIndexSet]).{ reloadSections }
```

Enables you to easily run insert, update, delete, reload methods for a table view by using `Int`s instead
of `NSIndexPath` and `NSIndexSet`.

#### UIView

##### .optimize()
```swift
let view = UIView.optimize
/*
  clipsToBounds = true
  layer.drawsAsynchronously = true
  opaque = true
*/
```

#### UIImage

##### +Rendering mode

```swift
image.original // imageWithRenderingMode(.AlwaysOriginal)
image.template // imageWithRenderingMode(.AlwaysTemplate)
```

## Shared

### Dates

```swift
if date1 < date2 {
  // do something
} else if date1 >= date2 {
  // do something else
}
```

### Frame

```swift
let view = UIView()
view.width = 200
view.height = 200
view.x = 25
view.y = 25

print(view.width) // prints 200
print(view.height) // prints 200
print(view.x) // prints 25
print(view.y) // prints 25
```

### Grand Central Dispatch

```swift
dispatch {
  // dispatch in main queue
}

dispatch(queue: .Background) {
  // dispatch in background queue
}

lazy var serialQueue = dispatch_queue_create("serialQueue", DISPATCH_QUEUE_SERIAL)
dispatch(queue: .Custom(serialQueue)) {
  // dispatch in a serial queue
}
```

Easy dispatching with grand central dispatch.
Support all the regular global queues: `Main`, `Interactive`, `Initiated`, `Utility`, `Background`.
And `.Custom()` for your own dispatch queues.

### Localization

```swift
let string = localizedString("My Profile")
let formattedString = localizedString(key: "%d numbers", arguments: 10) 
```

Swift access (pun intended) to `NSLocalizedString`, you will get more valid auto completion
with this one, we promise.

### Operators

```swift
var url = NSURL(string: "hyper.no")!
url ?= NSURL(string: "\\/http")
// url is equal to hyper.no
```

The `?=` only assigns values if the right is not nil.

### Regex

```swift
if "ios@hyper.no".isEmail() {
  // Is email
}

let stringNumber = "1984"
if stringNumber.isNumber() {
  // Is a number
}

if stringNumber.matches("^[0-9]*?$") {
  // Is a number
}
```

### Shared Extensions

#### +Queueable

```swift

struct Object: Queueable {

  func process() -> Bool { return true }
}

let myQueue = [Object(), Object()]
myQueue.processQueue()
```

Make your own processing queue with ease, just make your object conform the `Queueable`.

```swift
public protocol Queueable {
  func process() -> Bool
}
```

#### URLStringConvertible

```swift
let urlString = "https://hyper.no"
let url = urlString.url
```

Highly inspired by / borrowed from [Alamofire](https://github.com/Alamofire/Alamofire)'s [implementation](https://github.com/Alamofire/Alamofire/blob/990fded98afe5135dc418e1f6eb0287027dd067f/Source/Alamofire.swift#L31) of URLStringConvertible.

#### Core Foundation

```swift
let string = "hyper/oslo"
string.length // 10
string.truncate(5) // hyper...
string.split(/) // ["hyper", oslo]

if string.isPresent {
  // do something
}

if string.contains("hyper") {
  // found hyper
}

var dirtyString = "   hyper   "
print(dirtyString.trim()) // prints "hyper"
```

Just some extra sugar on top of `String` for getting the length, truncating, trimming or splitting a `String`.

`isPresent` is the opposite of `isEmpty`.

`contains` and be used to check if a string contains a word or pharse.

### Swizzler

```swift
class Swizzled: NSObject {

  override class func initialize() {
    struct Static {
      static var token: dispatch_once_t = 0
    }

    if self !== Swizzled.self {
    return
  }

  dispatch_once(&Static.token) {
    Swizzler.swizzle("method", cls: self)
  }
}

  dynamic func method() -> Bool {
    return true
  }

  func swizzled_method() -> Bool {
    return false
  }
}

let object = Swizzled()
object.method() // false
```

Everyday we are swizzling, this use to be mundane, now it just Swiftling, we mean, super fast.

#### Then

```
let UIView().then {
  $0.backgroundColor = UIColor.blackColor()
}
```

This implementation is brought to you by [@devxoul](https://github.com/devxoul) by his awesome [Then](https://github.com/devxoul/Then) repository.

### Type Alias

```swift
public typealias JSONArray = [[String : AnyObject]]
public typealias JSONDictionary = [String : AnyObject]
```

### UITesting
```
if UITesting.isRunning {
  // tests are running
} else {
  // everything is fine, move along
}
```

To easily include or exclude operations for when you are running UI tests.

### UnitTesting

```
if UnitTesting.isRunning {
  // running test
}

func testPerformance() {
  let measurement = measure {
    // run operation
  }
}
```

Check if you are running UniTests and to measure performance.

## Installation

**Sugar** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'Sugar'
```

**Sugar** is also available through [Carthage](https://github.com/Carthage/Carthage).
To install just write into your Cartfile:

```ruby
github "hyperoslo/Sugar"
```

## Author

Hyper Interaktiv AS, ios@hyper.no

## License

**Sugar** is available under the MIT license. See the LICENSE file for more info.
