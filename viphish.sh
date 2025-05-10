#!/bin/bash

ARCH=$(uname -m)

run_32bit() {
    echo "[+] Running 32-bit binary..."
    chmod +x viphish32
    ./viphish32
}

run_64bit() {
    echo "[+] Running 64-bit binary..."
    chmod +x viphish64
    ./viphish64
}


case "$ARCH" in
    "armv7l"|"armv8l")
        run_32bit
        ;;
    "aarch64")
        run_64bit
        ;;
    *)
        echo "[!] Unsupported architecture: $ARCH"
        exit 1
        ;;
esac
