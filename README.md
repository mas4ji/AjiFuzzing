<h1 align="center"> 
  AjiFuzzing = Nuclei + Paramspider
  <br>
</h1>

<p align="center">
  <a href="https://github.com/mas4ji/AjiFuzzing/issues">
    <img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" alt="Contributions Welcome">
  </a>
</p>

## 🛠️ Apa itu AjiFuzzing?

`AjiFuzzing` adalah alat otomatisasi keamanan aplikasi web yang menggabungkan dua alat powerful: `ParamSpider` dan `Nuclei`. Alat ini dirancang untuk memudahkan pengujian kerentanannya di aplikasi web, seperti XSS, SQLi, SSRF, Open-Redirect, dan lainnya.

Dengan menggunakan `ParamSpider`, AjiFuzzing mengidentifikasi titik masuk potensial, dan menggunakan template fuzzing `Nuclei` untuk memindai kerentanannya. Alat ini menyederhanakan dan mempercepat proses pengujian keamanan, memungkinkan profesional keamanan dan pengembang web untuk mendeteksi dan menangani risiko dengan lebih efisien.

**Catatan Penting:**  
Pastikan Anda telah menginstal dan mengonfigurasi `Nuclei`, `httpx`, dan `Paramspider` di mesin Anda sebelum menggunakan `AjiFuzzing`.

---

### 🔧 Alat yang Digunakan:
- **[ParamSpider](https://github.com/0xKayala/ParamSpider)**  
  `git clone https://github.com/devanshbatham/ParamSpider`

- **[Nuclei](https://github.com/projectdiscovery/nuclei)**  
  `git clone https://github.com/projectdiscovery/nuclei.git`

### 📑 Template:
- **[Fuzzing Templates](https://github.com/mas4ji/fuzzing-templates)**

---

## 📸 Tangkapan Layar

![Tangkapan Layar](https://github.com/0xKayala/NucleiFuzzer/assets/16838353/d29d18e2-e5b4-4f5f-b1fd-351167fa7c31)

---

## 🖥️ Penggunaan

Untuk mendapatkan bantuan dan informasi lebih lanjut mengenai perintah yang tersedia di AjiFuzzing, gunakan:

```sh
aji -h

Ini akan menampilkan informasi bantuan dengan opsi berikut:
Opsi:

-h, --help: Menampilkan informasi bantuan.
-d, --domain <domain>: Memindai kerentanannya pada domain (misalnya XSS, SQLi, SSRF, Open-Redirect, dll.).
-f, --file <filename>: File yang berisi daftar domain/URL untuk dipindai.
```

## 📥 Instalasi

Untuk menginstal **AjiFuzzing**, ikuti langkah-langkah berikut:

```bash
git clone https://github.com/mas4ji/AjiFuzzing.git && cd AjiFuzzing && sudo chmod +x install.sh && ./install.sh && nf -h && cd ..
```

## 🧪 Contoh Penggunaan

Berikut adalah beberapa contoh penggunaan **AjiFuzzing**:

- **Memindai domain tunggal:**
  ```bash
  aji -d example.com

- ** Memindai beberapa domain dari sebuah file:**
  ```bash
  aji -f file.txt

## 🤝 Berkontribusi
Saya sangat menyambut kontribusi dari Anda! Jika Anda ingin berkontribusi ke dalam proyek AjiFuzzing, ikuti langkah-langkah berikut:

Fork repository ini.
Buat cabang baru (branch).
Lakukan perubahan dan commit.
Kirim pull request.

##👤 Pembuat
Muhammad Fazriansyah | mas4ji
Bug Hunter & Cyber security enthusiasts

## 📱 Hubungi Saya:
<p align="left"> <a href="https://linkedin.com/in/mas4ji" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-/assets/linkedin.png" alt="mas4ji" height="30" width="40" /></a> </p>

## 💖 Dukung Saya:
Jika Anda merasa proyek ini bermanfaat dan ingin mendukung, Anda bisa melakukannya melalui BuyMeACoffee:

<p><a href="https://www.buymeacoffee.com/mas4ji"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="mas4ji" /></a></p><br><br>
Terima kasih telah menggunakan AjiFuzzing. Semoga alat ini membantu Anda dalam menjaga keamanan aplikasi web!
