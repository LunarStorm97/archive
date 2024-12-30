## 📱 Samsung Firmware Downloader

This repository contains a script to download firmware for Samsung devices using Node.js.

### ✨ Features

- 📥 Download the latest firmware for Samsung devices.
- 🔓 Automatic decryption and decompression of the downloaded firmware.
- 🔒 Secure interaction with Samsung servers using nonce-based authentication.

### 📋 Requirements

- Node.js version 18.x, 20.x, or 22.x
- npm (Node Package Manager)

### 🚀 Installation

1. Clone this repository:
    ```bash
    git clone https://github.com/LunarStorm97/samsung-firmware.git
    cd samsung-firmware
    ```

2. Install the dependencies:
    ```bash
    npm install
    ```

### 🛠️ Usage

To run the script, use the following command, replacing `<model>`, `<region>`, and `<imei>` or `<serial>` with the corresponding values for your device:

```bash
node main.mjs -m <model> -r <region> -i <imei or serial>
```

#### Example using IMEI:
```bash
node main.mjs -m SM-A236M -r ARO -i 358263681238947
```

#### Example using Serial Number (SN):
```bash
node main.mjs -m SM-A236M -r ARO -i R5CW312KLVM
```

### 🤖 Dependabot Configuration

This repository uses Dependabot to keep dependencies up-to-date. The current configuration is located in `.github/dependabot.yml` and is set to update npm dependencies weekly.

### ⚙️ CI/CD with GitHub Actions

The repository includes a GitHub Actions workflow for continuous integration and testing. The configuration file is located at `.github/workflows/node.js.yml` and performs the following tasks:

- Install Node.js dependencies.
- Run tests on different Node.js versions (18.x, 20.x, 22.x).
- Execute the firmware download script.

### 📦 Dependencies

This project uses the following dependencies:

- `axios`: ^1.7.9
- `chalk`: ^5.4.1
- `fast-xml-parser`: ^4.5.1
- `unzip-stream`: ^0.3.4
- `yargs`: ^17.7.2

### 📜 License

This project is released under [The Unlicense](https://unlicense.org). For more details, see the [LICENSE](./LICENSE).

### 🤝 Contribution

Contributions are welcome. Please open an issue or a pull request to discuss any major changes before making them.
