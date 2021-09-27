//go:build tools
// +build tools

// https://github.com/golang/go/wiki/Modules#how-can-i-track-tool-dependencies-for-a-module

package tools

import (
	// Blank imports for tool binaries
	_ "golang.org/x/mobile/cmd/gobind"
	_ "golang.org/x/mobile/cmd/gomobile"
)

//go:generate go install golang.org/x/mobile/cmd/gomobile
//go:generate go install golang.org/x/mobile/cmd/gobind
