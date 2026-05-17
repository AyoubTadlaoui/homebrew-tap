# homebrew-tap

Homebrew tap for [Atlas Kaisar](https://github.com/AyoubTadlaoui)'s tools.

## Install

```bash
brew tap AyoubTadlaoui/tap
brew install <formula>
```

or in one line:

```bash
brew install AyoubTadlaoui/tap/<formula>
```

## Available formulae

| Formula | Project | Description |
|---|---|---|
| [`logx`](Formula/logx.rb) | [GoLogX](https://github.com/AyoubTadlaoui/GoLogX) | Pretty-print JSON `slog` logs from stdin, files, or follow mode. |

## How updates land

For each tagged release of the upstream project, [goreleaser](https://goreleaser.com/) regenerates the formula file with the new version + SHA256s and pushes the change here. The first release of each formula is hand-committed; subsequent releases are automated.

## License

Each formula inherits the license of its upstream project. Most are MIT.
