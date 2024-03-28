go-mobile-playground
====================
From https://cs.opensource.google/go/x/mobile/+/master:example/basic/main.go

### Documentation
- [mobile module - golang.org/x/mobile - Go Packages](https://pkg.go.dev/golang.org/x/mobile)

### Steps
1. `go install golang.org/x/mobile/cmd/gomobile@latest`
2. `gomobile init`
3. `gomobile build [-target android|ios|iossimulator|macos|maccatalyst] [-o output] [-bundleid bundleID] [build flags] [package]`
    - `gomobile build -target android`

### TODOs
- [ ] CICD
