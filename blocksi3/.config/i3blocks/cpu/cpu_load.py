from __future__ import annotations

import os
import subprocess


def _get_load() -> float:
    load_average = os.getloadavg()[0]
    cores_number = os.cpu_count()
    load = float(load_average) / cores_number * 100
    return load


def _get_temp() -> str | None:
    try:
        command= subprocess.run(
                'sensors',
                capture_output=True,
                text=True,
            )
        temp = next(
                (
                    line for line in command.stdout.splitlines()
                    if line.startswith('Package id 0')
                )
            )
    except FileNotFoundError:
        return None
    return temp


def _main() -> int:

    load = _get_load()
    temp = _get_temp()

    if temp is None:
        print(f'{round(load)}%')
    else:
        print(f'{round(load)}%/{temp}')

    return 0


def main() -> int:
    try:
        return _main()
    except Exception as e:
        print(f'{e.__class__.__name__}: {e}')
        return 1

if __name__ == '__main__':
    main()
