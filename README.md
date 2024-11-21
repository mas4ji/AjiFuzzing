<h1 align="center"> 
  AjiFuzzing = Nuclei + Paramspider
  <br>
</h1>

<p align="center">
<a href="https://github.com/mas4ji/AjiFuzzing/issues"><img src="https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat"></a>
</p>

`NucleiFuzzer` adalah alat otomatisasi yang menggabungkan `ParamSpider` dan `Nuclei` untuk meningkatkan pengujian keamanan aplikasi web. Alat ini menggunakan `ParamSpider` untuk mengidentifikasi titik masuk yang potensial dan template fuzzing `Nuclei` untuk memindai kerentanannya. `NucleiFuzzer` menyederhanakan proses ini, sehingga memudahkan profesional keamanan dan pengembang web untuk mendeteksi dan menangani risiko keamanan dengan lebih efisien. Unduh `NucleiFuzzer` untuk melindungi aplikasi web Anda dari kerentanannya dan serangan.

**Catatan:** `Nuclei` + `Paramspider` = `NucleiFuzzer` <br><br>
**Penting:** Pastikan alat `Nuclei`, `httpx` & `Paramspider` telah diinstal dan berjalan dengan benar di mesin Anda agar dapat menggunakan `NucleiFuzzer` tanpa masalah.

### Alat yang disertakan:
[ParamSpider](https://github.com/0xKayala/ParamSpider) `git clone https://github.com/0xKayala/ParamSpider.git`<br><br>
[Nuclei](https://github.com/projectdiscovery/nuclei) `git clone https://github.com/projectdiscovery/nuclei.git`

### Template:
[Fuzzing Templates](https://github.com/mas4ji/fuzzing-templates)

## Tangkapan Layar
![image](https://github.com/0xKayala/NucleiFuzzer/assets/16838353/d29d18e2-e5b4-4f5f-b1fd-351167fa7c31)


## Penggunaan

```sh
aji -h

This will display help for the tool. Here are the options it supports.

```console
AjiFuzzing adalah alat otomatisasi yang kuat untuk mendeteksi kerentanannya seperti XSS, SQLi, SSRF, Open-Redirect, dll. pada aplikasi web.

Penggunaan: /usr/bin/nf [opsi]

Opsi:
  -h, --help              Menampilkan informasi bantuan
  -d, --domain <domain>   Domain untuk memindai kerentanannya seperti XSS, SQLi, SSRF, Open-Redirect, dll.
  -f, --file <filename>   File yang berisi beberapa domain/URL untuk dipindai

```  

## Installation:

To install `AjiFuzzing`, follow these steps:

```
git clone https://github.com/mas4ji/AjiFuzzing.git && cd AjiFuzzing && sudo chmod +x install.sh && ./install.sh && nf -h && cd ..
```

## Examples:

Here are a few examples of how to use NucleiFuzzer:

- Run `AjiFuzzing` on a single domain:

  ```sh
  aji -d example.com
  ```

- Run `AjiFuzzing` on multiple domains from a file:

  ```sh
  aji -f file.txt
  ```

## Practical Demonstration:

For a Practical Demonstration of the NucleiFuzzer tool see the below video 👇 <br>

[<img src="https://img.youtube.com/vi/2K2gTCHt6kg/hqdefault.jpg" width="600" height="300"/>](https://www.youtube.com/embed/2K2gTCHt6kg)

## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=0xKayala/NucleiFuzzer&type=Date)](https://star-history.com/#0xKayala/NucleiFuzzer&Date)

## Contributing

Contributions are welcome! If you'd like to contribute to `NucleiFuzzer`, please follow these steps:

1. Fork the repository.
2. Create a new branch.
3. Make your changes and commit them.
4. Submit a pull request.

Made by
`Satya Prakash` | `0xKayala` \

A `Security Researcher` and `Bug Hunter` \

## Connect with me:
<p align="left">
<a href="https://linkedin.com/in/mas4ji" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-
</p>

## Support me:
<p><a href="https://www.buymeacoffee.com/mas4ji"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="50" width="210" alt="0xKayala" /></a></p><br><br>
