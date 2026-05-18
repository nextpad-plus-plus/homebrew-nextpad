# Nextpad++ Homebrew tap

A [Homebrew](https://brew.sh) tap for [Nextpad++](https://nextpad.org/) —
the native macOS port of Notepad++.

## Install

```sh
brew tap nextpad-plus-plus/nextpad
brew install --cask nextpad
```

Nextpad++ is Apple Developer ID signed and notarized, so no
`--no-quarantine` flag is needed — Gatekeeper accepts it directly.

## Update

```sh
brew upgrade --cask nextpad
```

## Uninstall

```sh
brew uninstall --cask nextpad
```

To also remove configuration and saved state (`~/.nextpad++`, preferences):

```sh
brew uninstall --zap --cask nextpad
```

## Links

- Website: <https://nextpad.org/>
- Source: <https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos>
- Releases: <https://github.com/nextpad-plus-plus/nextpad-plus-plus-macos/releases>
