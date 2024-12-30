# Samsung Firmware Downloader

This repository contains a script to download firmware for Samsung Devices using Node.js. The script interacts with Samsung servers to fetch the latest firmware version for a specific model and region and downloads the firmware securely.

## Features

- Download the latest firmware for Samsung Devices.
- Automatic decryption and decompression of the downloaded firmware.
- Secure interaction with Samsung servers using nonce-based authentication and custom headers.

## Requirements

- Node.js version 18.x, 20.x, or 22.x
- npm (Node Package Manager)

## Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/LunarStorm97/samsung-firmware.git
    cd samsung-firmware
    ```

2. Install the dependencies:
    ```bash
    npm install
    ```

## Usage

To run the script, use the following command, replacing `<model>`, `<region>` and `<imei>` with the corresponding values for your device:
```bash
node index.mjs -m <model> -r <region> -i <imei>
```

Example:
```bash
node index.mjs -m SM-A236M -r ARO -i 358263681238947
```

## Dependabot Configuration

This repository uses Dependabot to keep dependencies up-to-date. The current configuration is located in `.github/dependabot.yml` and is set to update npm dependencies weekly.

## CI/CD with GitHub Actions

The repository includes a GitHub Actions workflow for continuous integration and testing. The configuration file is located at `.github/workflows/node.js.yml` and performs the following tasks:

- Install Node.js dependencies.
- Run tests on different Node.js versions (18.x, 20.x, 22.x).
- Execute the firmware download script.

## Dependencies

This project uses the following dependencies:

- `axios`: ^1.7.9
- `chalk`: ^5.4.1
- `fast-xml-parser`: ^4.5.1
- `unzip-stream`: ^0.3.4
- `yargs`: ^17.7.2

## License

This project is released under [The Unlicense](https://unlicense.org). For more details, see the [LICENSE](./LICENSE) file.

## Contribution

Contributions are welcome. Please open an issue or a pull request to discuss any major changes before making them.

---
