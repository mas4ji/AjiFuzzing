#!/bin/bash

# Kode warna ANSI
MERAH='\033[91m'
RESET='\033[0m'

# Seni ASCII
echo -e "${MERAH}"
cat << "EOF"
 
   _____       __.__  ___________                   .__                
  /  _  \     |__|__| \_   _____/_ _________________|__| ____    ____  
 /  /_\  \    |  |  |  |    __)|  |  \___   /\___   /  |/    \  / ___\ 
/    |    \   |  |  |  |     \ |  |  //    /  /    /|  |   |  \/ /_/  >
\____|__  /\__|  |__|  \___  / |____//_____ \/_____ \__|___|  /\___  / 
        \/\______|         \/              \/      \/       \//_____/  v1.0.0

                               Dibuat oleh Muhammad Fazriansyah (fazriansyahmuh)
EOF
echo -e "${RESET}"

# Menu Bantuan
tampilkan_bantuan() {
    echo -e "AjiFuzzer adalah alat otomatisasi yang kuat untuk mendeteksi kerentanannya seperti XSS, SQLi, SSRF, Open-Redirect, dll. di Aplikasi Web\n\n"
    echo -e "Penggunaan: $0 [opsi]\n\n"
    echo "Opsi:"
    echo "  -h, --help              Menampilkan informasi bantuan"
    echo "  -d, --domain <domain>   Satu domain untuk dipindai kerentanannya XSS, SQLi, SSRF, Open-Redirect, dll."
    echo "  -f, --file <filename>   File yang berisi beberapa domain/URL untuk dipindai"
    exit 0
}

# Dapatkan direktori home pengguna saat ini
direktori_home=$(eval echo ~"$USER")

# Ekstensi file yang dikecualikan untuk ParamSpider dan alat lainnya
ekstensi_dikecualikan="png,jpg,gif,jpeg,swf,woff,svg,pdf,json,css,js,webp,woff,woff2,eot,ttf,otf,mp4,txt"

# Instalasi dependensi jika belum terinstal
instal_dependensi() {
    # Periksa apakah Nuclei terinstal
    if ! command -v nuclei -up &> /dev/null; then
        echo "Menginstal Nuclei..."
        go install -v github.com/projectdiscovery/nuclei/v3/cmd/nuclei@latest
    fi

    # Periksa apakah httpx terinstal
    if ! command -v httpx -up &> /dev/null; then
        echo "Menginstal httpx..."
        go install -v github.com/projectdiscovery/httpx/cmd/httpx@latest
    fi

    # Periksa apakah ParamSpider terinstal
    if [ ! -d "$direktori_home/ParamSpider" ]; then
        echo "Mengkloning ParamSpider..."
        git clone https://github.com/0xKayala/ParamSpider "$direktori_home/ParamSpider"
    fi

    # Periksa apakah Sublist3r terinstal
    if [ ! -d "$direktori_home/Sublist3r" ]; then
        echo "Mengkloning Sublist3r..."
        git clone https://github.com/aboul3la/Sublist3r "$direktori_home/Sublist3r"
    fi

    # Instalasi Amass
    if ! command -v amass &> /dev/null; then
        echo "Menginstal Amass..."
        sudo apt-get install amass
    fi

    # Instalasi Dirsearch
    if [ ! -d "$direktori_home/dirsearch" ]; then
        echo "Mengkloning Dirsearch..."
        git clone https://github.com/maurosoria/dirsearch "$direktori_home/dirsearch"
    fi

    # Instalasi Nmap
    if ! command -v nmap &> /dev/null; then
        echo "Menginstal Nmap..."
        sudo apt-get install nmap
    fi

    # Instalasi Corsy
    if ! command -v corsy &> /dev/null; then
        echo "Menginstal Corsy..."
        pip install corsy
    fi
}

# Instal dependensi
instal_dependensi

# Parsing argumen baris perintah
while [[ $# -gt 0 ]]
do
    key="$1"
    case $key in
        -h|--help)
            tampilkan_bantuan
            ;;
        -d|--domain)
            domain="$2"
            shift
            shift
            ;;
        -f|--file)
            filename="$2"
            shift
            shift
            ;;
        *)
            echo "Opsi tidak dikenal: $key"
            tampilkan_bantuan
            ;;
    esac
done

# Logika pemindaian utama
if [ -z "$domain" ] && [ -z "$filename" ]; then
    echo "Harap berikan domain dengan opsi -d atau file dengan opsi -f."
    tampilkan_bantuan
fi

# Membuat folder untuk domain jika belum ada
if [ -n "$domain" ]; then
    folder_domain="output/$domain"
    mkdir -p "$folder_domain"
fi

# File output gabungan untuk semua domain
file_output="output/allurls.yaml"

# Langkah 1: Menjalankan ParamSpider pada domain atau file
if [ -n "$domain" ]; then
    echo "Menjalankan ParamSpider pada $domain"
    python3 "$direktori_home/ParamSpider/paramspider.py" -d "$domain" --exclude "$ekstensi_dikecualikan" --level high --quiet -o "$folder_domain/$domain.yaml"
elif [ -n "$filename" ]; then
    echo "Menjalankan ParamSpider pada URL dari $filename"
    while IFS= read -r line; do
        python3 "$direktori_home/ParamSpider/paramspider.py" -d "$line" --exclude "$ekstensi_dikecualikan" --level high --quiet -o "output/${line}.yaml"
        cat "output/${line}.yaml" >> "$file_output"  # Menambahkan ke file output gabungan
    done < "$filename"
fi

# Langkah 2: Menjalankan Aji Fuzzing pada URL yang terkumpul
echo "Menjalankan Aji pada URL yang terkumpul"
temp_file=$(mktemp)
if [ -n "$domain" ]; then
    sort "$folder_domain/$domain.yaml" | uro > "$temp_file"
    httpx -silent -mc 200,301,302,403 -l "$temp_file" | nuclei -t "$direktori_home/nuclei-templates" -dast -rl 05 > "$folder_domain/aji_output.txt"
elif [ -n "$filename" ]; then
    sort "$file_output" | uro > "$temp_file"
    httpx -silent -mc 200,301,302,403 -l "$temp_file" | nuclei -t "$direktori_home/nuclei-templates" -dast -rl 05 > "$folder_domain/aji_output.txt"
fi
rm "$temp_file"  # Menghapus file sementara

# Langkah 3: Menjalankan Sublist3r dan Amass untuk Enumerasi Subdomain
echo "Menjalankan Sublist3r dan Amass untuk enumerasi subdomain"
python3 "$direktori_home/Sublist3r/sublist3r.py" -d "$domain" -o "$folder_domain/subdomains.txt"
amass enum -d "$domain" -o "$folder_domain/amass_subdomains.txt"

# Langkah 4: Menjalankan Dirsearch untuk Brute Force Direktori
echo "Menjalankan Dirsearch untuk brute forcing direktori"
python3 "$direktori_home/dirsearch/dirsearch.py" -u "https://$domain" -o "$folder_domain/dirsearch.txt"

# Langkah 5: Menjalankan Nmap untuk Pemindaian Port
echo "Menjalankan Nmap untuk pemindaian port"
nmap -p- --open "$domain" -oN "$folder_domain/nmap_scan.txt"

# Langkah 6: Menjalankan Corsy untuk Deteksi Kerentanannya CORS
echo "Menjalankan Corsy untuk deteksi kerentanannya CORS"
corsy --url "https://$domain" --output "$folder_domain/corsy_report.txt"

# Langkah 7: Memeriksa Kerentanannya Clickjacking
echo "Menjalankan pemeriksaan clickjacking untuk $domain..."

# Fungsi untuk memeriksa header X-Frame-Options
periksa_x_frame_options() {
    echo "Memeriksa header X-Frame-Options untuk $1"
    header=$(curl -s -I "$1" | grep -i "X-Frame-Options")
    if [[ -z "$header" ]]; then
        echo -e "${MERAH}Header X-Frame-Options tidak ditemukan.${RESET} Situs ini mungkin rentan terhadap clickjacking!"
    else
        echo -e "${GREEN}Header X-Frame-Options ditemukan: $header${RESET}"
    fi
}

# Fungsi untuk memeriksa Content-Security-Policy (CSP)
periksa_csp() {
    echo "Memeriksa header Content-Security-Policy untuk $1"
    header=$(curl -s -I "$1" | grep -i "Content-Security-Policy")
    if [[ -z "$header" ]]; then
        echo -e "${MERAH}Header Content-Security-Policy tidak ditemukan.${RESET} Situs ini mungkin rentan terhadap clickjacking!"
    else
        echo -e "${GREEN}Header Content-Security-Policy ditemukan: $header${RESET}"
    fi
}

# Memanggil fungsi untuk pemeriksaan clickjacking
periksa_x_frame_options "$domain"
periksa_csp "$domain"

# Langkah 8: Selesai
echo "Pemindaian selesai - Selamat Fuzzing!"
