#!/bin/bash

# Menyalin dan memindahkan file AjiFuzzing.sh ke /usr/bin/aji
if [ -f "AjiFuzzing.sh" ]; then
    sudo cp AjiFuzzing.sh /usr/bin/aji
else
    echo "File AjiFuzzing.sh tidak ditemukan!"
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
