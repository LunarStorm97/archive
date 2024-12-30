# Samsung Firmware Downloader

A Node.js script to download firmware for Samsung devices.

## Requirements

- Node.js version 18.x, 20.x, 22.x or 23.x
- npm (Node Package Manager)

<p><img src="https://raw.githubusercontent.com/nodejs/Release/refs/heads/main/schedule.svg" alt="LTS Schedule"/></p>

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

To run the script, use the following command, replacing `<model>`, `<region>`, and `<imei>` or `<serial>` with the corresponding values for your device:

```bash
node main.mjs -m <model> -r <region> -i <imei or serial>
```

Example using IMEI:

```bash
node main.mjs -m SM-A236M -r ARO -i 358263681238947
```

Example using Serial Number (SN):

```bash
node main.mjs -m SM-A236M -r ARO -i R5CW312KLVM
```
