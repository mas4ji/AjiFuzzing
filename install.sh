#!/bin/bash

# Menyalin dan memindahkan file AjiFuzzer.sh ke /usr/bin/aji
if [ -f "AjiFuzzer.sh" ]; then
    sudo cp AjiFuzzer.sh /usr/bin/aji
else
    echo "File AjiFuzzer.sh tidak ditemukan!"
    exit 1
fi

# Memberikan izin eksekusi pada file AjiFuzzer
sudo chmod u+x /usr/bin/aji

echo "AjiFuzzing telah berhasil diinstal! Sekarang masukkan perintah 'aji' untuk menjalankan alat ini."
