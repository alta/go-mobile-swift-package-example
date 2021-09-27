# [gomobile](https://pkg.go.dev/golang.org/x/mobile/cmd/gomobile) + [Swift Package Manager](https://swift.org/package-manager/)

Example [Go](https://golang.org/) package built into an [XCFramework](https://developer.apple.com/documentation/swift_packages/distributing_binary_frameworks_as_swift_packages) for [Swift Package Manager](https://swift.org/package-manager/), targeting iOS, macOS, and macCatalyst targets.

This package implements a simple API to fetch a URL using an HTTP `GET` request and return the response bytes.

## Calling Go from Swift

```swift
var error: NSErrorPointer = nil
let response = GoGet("https://golang.org/", error)
guard error == nil else {
        return
}
guard let response = response else {
        return
}
guard let str = String(data: response, encoding: .utf8) else {
        return
}
```

## Requirements

Go 1.16, Swift 5.3, and Xcode 11 or later.

## Usage

To build the XCFramework and Swift package: `make build`

To test: `make test`

## Author

© Alta Software, LLC
