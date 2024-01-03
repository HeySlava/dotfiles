#!/usr/bin/python3


def _main() -> int:

    with open('/sys/class/power_supply/BAT1/capacity') as f:
        current_battery = int(f.read())
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
