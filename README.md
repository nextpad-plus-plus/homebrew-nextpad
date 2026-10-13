# Nextpad++ Homebrew tap

A [Homebrew](https://brew.sh) tap for [Nextpad++](https://nextpad.org/) —
the native macOS port of Notepad++.

## Install

Nextpad++ is in the official Homebrew Cask repository, so no tap is needed:

```sh
brew install --cask nextpad++
```

This tap additionally offers the shorter `nextpad` token:

```sh
brew tap nextpad-plus-plus/nextpad
brew install --cask nextpad
```

Nextpad++ is Apple Developer ID signed and notarized, so no
`--no-quarantine` flag is needed — Gatekeeper accepts it directly.

## Update

```sh
brew upgrade --cask nextpad++   # or: brew upgrade --cask nextpad
```

## Uninstall

```sh
brew uninstall --cask nextpad++   # or: brew uninstall --cask nextpad
```

To also remove configuration and saved state (`~/.nextpad++`, preferences):

```sh
brew uninstall --zap --cask nextpad++   # or: --cask nextpad
```

## Links

- Website: <https://nextpad.org/>
- Source: <https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos>
- Releases: <https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos/releases>
