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

# Mengonfirmasi pemasangan berhasil
echo "AjiFuzzing telah berhasil diinstal! Sekarang masukkan perintah 'aji' untuk menjalankan alat ini."

# Cek apakah perintah 'aji' dapat dijalankan langsung
if ! command -v aji &> /dev/null; then
    echo "Terjadi kesalahan. Perintah 'aji' tidak ditemukan!"
    echo "Coba jalankan ulang script ini dengan akses root."
    exit 1
fi
