# 📱 Samsung Firmware Downloader

A Node.js script to download firmware for Samsung devices.

### 📋 Requirements

- Node.js version 18.x, 20.x, or 22.x
- npm (Node Package Manager)

### 🚀 Installation

1. **Clone this repository:**

    ```bash
    git clone https://github.com/LunarStorm97/samsung-firmware.git
    cd samsung-firmware
    ```

2. **Install the dependencies:**

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

### 📦 Dependencies

This project uses the following dependencies:

- `axios`: ^1.7.9
- `chalk`: ^5.4.1
- `fast-xml-parser`: ^4.5.1
- `unzip-stream`: ^0.3.4
- `yargs`: ^17.7.2

### 📜 License

This project is licensed under [The Unlicense](https://unlicense.org).
