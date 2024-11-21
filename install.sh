#!/bin/bash

# Memperbarui repositori dan menginstal dependensi
echo "Memperbarui sistem dan menginstal dependensi..."

# Update dan upgrade sistem
sudo apt update && sudo apt upgrade -y

# Menginstal Golang (untuk Nuclei, httpx)
if ! command -v go &> /dev/null; then
    echo "Menginstal Go..."
    sudo apt install -y golang
else
    echo "Go sudah terpasang."
fi

# Menginstal Amass
if ! command -v amass &> /dev/null; then
    echo "Menginstal Amass..."
    sudo apt install -y amass
else
    echo "Amass sudah terpasang."
fi

# Menginstal Nmap
if ! command -v nmap &> /dev/null; then
    echo "Menginstal Nmap..."
    sudo apt install -y nmap
else
    echo "Nmap sudah terpasang."
fi

# Menginstal Python3 dan pip (untuk Corsy)
if ! command -v pip3 &> /dev/null; then
    echo "Menginstal pip..."
    sudo apt install -y python3-pip
else
    echo "Pip sudah terpasang."
fi

# Menginstal Corsy
if ! command -v corsy &> /dev/null; then
    echo "Menginstal Corsy..."
    sudo pip3 install corsy
else
    echo "Corsy sudah terpasang."
fi

# Menyalin file AjiFuzzer.sh ke /usr/bin/aji
if [ -f "AjiFuzzer.sh" ]; then
    echo "Menyalin AjiFuzzer.sh ke /usr/bin/aji..."
    sudo cp AjiFuzzer.sh /usr/bin/aji
else
    echo "File AjiFuzzer.sh tidak ditemukan!"
    exit 1
fi

# Memberikan izin eksekusi pada file AjiFuzzer.sh
echo "Memberikan izin eksekusi pada /usr/bin/aji..."
sudo chmod u+x /usr/bin/aji

# Mengonfirmasi pemasangan berhasil
echo "AjiFuzzing telah berhasil diinstal! Sekarang masukkan perintah 'aji' untuk menjalankan alat ini."

# Cek apakah perintah 'aji' dapat dijalankan langsung
if ! command -v aji &> /dev/null; then
    echo "Terjadi kesalahan. Perintah 'aji' tidak ditemukan!"
    echo "Coba jalankan ulang script ini dengan akses root."
    exit 1
fi
