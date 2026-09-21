# My Indicators

A set of **manual state indicators** for the Omarchy bar: Dictation, Screen
Recording, Reminder, Night Light, Do Not Disturb, and Stay Awake. Active
indicators show at all times; inactive ones reveal on hover, or permanently if
you ask them to.

Derived from Omarchy's built-in `omarchy.indicators` widget (MIT, © David
Heinemeier Hansson) and extended with the manual indicators below.

## Install

```sh
omarchy plugin add https://github.com/zerwiz/omarchy-indicators.git --enable
```

## Indicators

| Indicator | Active when | Click |
| --- | --- | --- |
| Dictation | voice typing is recording | — |
| Screen recording | `gpu-screen-recorder` is running | stop recording |
| Reminder | a reminder is queued | — |
| Night light | the blue-light filter is on | toggle / right-click for strength |
| Do not disturb | notifications are silenced | toggle |
| Stay awake | idle lock and screensaver are held off | toggle |

## Configure

The widget is multi-instance: you can place several and give each its own set.
Pick the indicators for an instance in the shell's plugin settings.

| Setting | Default | Meaning |
| --- | --- | --- |
| `items` | all six | Which indicators this instance shows |
| `alwaysShow` | `false` | Show inactive indicators without waiting for hover |

```sh
omarchy bar move io.github.zerwiz.indicators --section left
```

## Remove

```sh
omarchy plugin remove io.github.zerwiz.indicators
```

## License

MIT — see [LICENSE](LICENSE). Portions © David Heinemeier Hansson.
