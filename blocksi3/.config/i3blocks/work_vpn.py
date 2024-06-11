import subprocess


def main() -> int:
    process = subprocess.Popen(
        ['pgrep', '-x', 'openfortivpn'],
        stdout=subprocess.PIPE,
        stderr=subprocess.PIPE,
    )
    _, _ = process.communicate()

    if process.returncode == 0:
        answer = "WORK ON"
        color = '#ff0000'
    else:
        answer = ''
        color = '#0000FF'

    print(answer)
    print(color)
    print(color)
    return 0


if __name__ == '__main__':
    raise SystemExit(main())
