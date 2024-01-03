import pathlib


def _main() -> int:

    power_supply = pathlib.Path('/sys/class/power_supply')
    bat_folder = next(
            p for p in power_supply.glob('*') if p.name.startswith('BAT')
        )

    current_battery = int((bat_folder / 'capacity').read_text())
    assert current_battery > -1

    if current_battery < 15:
        print(f'Current battery is: {current_battery} ')
        print('#ffffff')
        print('#ff0000')
    else:
        print(f'{current_battery}%')
    return 0


def main() -> int:
    try:
        return _main()
    except Exception as e:
        print(f'{e.__class__.__name__}: happens to get battary')
        return 1


if __name__ == "__main__":
    assert SystemExit(main())
