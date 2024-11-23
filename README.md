<h1 align="center"> 
  AjiFuzzing = Tools Fuzzing For Bug Hunting
  <br>
</h1>

<p align="center">
  <a href="https://github.com/mas4ji/AjiFuzzing/issues">
    <img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat" alt="Contributions Welcome">
  </a>
</p>

## 🛠️ Apa itu AjiFuzzing?

`AjiFuzzing` adalah alat otomatisasi untuk pengujian keamanan web yang dirancang untuk mendeteksi kerentanan pada aplikasi web, seperti XSS, SQLi, SSRF, Open-Redirect, dan lainnya.

Alat ini menggabungkan kemampuan `ParamSpider` untuk menemukan titik masuk potensial (parameter) dengan template fuzzing dari Nuclei guna memindai kerentanannya. Dengan `AjiFuzzing`, proses pengujian keamanan menjadi lebih mudah dan cepat, sehingga memudahkan profesional keamanan dan pengembang untuk mengidentifikasi serta mengatasi risiko keamanan secara efisien.

**Catatan Penting:**  
Pastikan Anda telah menginstal dan mengonfigurasi `Nuclei`, `httpx`, dan `Paramspider` di mesin Anda sebelum menggunakan `AjiFuzzing`.

---

### 🔧 Alat yang Digunakan:
- **ParamSpider** 
  `git clone https://github.com/mas4ji/ParamSpider`

- **Nuclei**  
  `git clone https://github.com/projectdiscovery/nuclei.git`

### 📑 Template:
- **Fuzzing Templates**
  `git clone https://github.com/mas4ji/fuzzing-templates`
---

## 📸 Tangkapan Layar

![Tangkapan Layar](https://github.com/mas4ji/AjiFuzzing/blob/main/aji.png)

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
git clone https://github.com/mas4ji/AjiFuzzing.git && cd AjiFuzzing && sudo chmod +x install.sh && ./install.sh && aji -h && cd ..
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

- Fork repository ini.
- Buat cabang baru (branch).
- Lakukan perubahan dan commit.
- Kirim pull request.

👤 Pembuat
Muhammad Fazriansyah | mas4ji
Bug Hunter

## 📱 Hubungi Saya:
<p align="left">
  <a href="https://linkedin.com/in/mas4ji" target="blank">
    LinkedIn
  </a>
</p>

---

## 💖 Dukung Saya:
Jika Anda merasa proyek ini bermanfaat dan ingin mendukung, Anda bisa melakukannya melalui BuyMeACoffee:

<p align="center">
  <a href="https://www.buymeacoffee.com/mas4ji">
    <img src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="Dukung Saya" />
  </a>
</p>

Terima kasih telah menggunakan AjiFuzzing. Semoga alat ini membantu Anda dalam menjaga keamanan aplikasi web!

