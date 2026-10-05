# 📱 Tugas Layout Flutter - Profil Interaktif Berbasis NIM

Proyek Flutter ini merupakan bagian dari **Implementasi Praktikum Pemrograman Aplikasi Bergerak (Bagian II)** yang menampilkan **Kartu Profil Interaktif Praktikan / Kartu Mahasiswa**. Seluruh atribut styling kartu dihitung secara dinamis menggunakan rumus digit NIM mahasiswa.

---

## 👤 Informasi Mahasiswa

- **Nama**: Nadhif Shoeema Goldist
- **NIM**: 20240801085
- **Program Studi**: Teknik Informatika

---

## 📐 Perhitungan Atribut Styling Berdasarkan NIM

Data NIM: `20240801085`
- **Digit Terakhir NIM**: `5` (Ganjil)
- **Digit Ke-2 Belakang NIM**: `8`
- **2 Digit Terakhir NIM**: `85`

| Komponen / Properti | Rumus Ketentuan | Perhitungan | Hasil Akhir |
| :--- | :--- | :--- | :--- |
| **Lebar Kartu** (`Container.width`) | $320.0 + (\text{Digit ke-2 dari belakang} \times 5)$ | $320.0 + (8 \times 5)$ | **`360.0`** |
| **Sudut Melengkung** (`BorderRadius.circular`) | $12.0 + (\text{Digit terakhir} \times 1.5)$ | $12.0 + (5 \times 1.5)$ | **`19.5`** |
| **Ukuran Logo** (`FlutterLogo.size`) | $60.0 + (\text{Digit terakhir} \times 2)$ | $60.0 + (5 \times 2)$ | **`70.0`** |
| **Jarak Pemisah** (`SizedBox.width`) | $15.0 + (\text{Digit terakhir})$ | $15.0 + 5$ | **`20.0`** |
| **Skor Aktivitas** (`skorAktivitas`) | $(2 \text{ digit terakhir}) + 50$ | $85 + 50$ | **`135`** |
| **Warna Latar Scaffold** | Digit Terakhir Ganjil $\rightarrow$ Pastel Hijau/Toska | `5` (Ganjil) | **`Colors.tealAccent[100]`** |

---

## 🏗️ Hirarki Widget Architecture

Aplikasi ini disusun menggunakan struktur hirarki widget berikut:
1. **`MaterialApp`**: Root pembungkus utama aplikasi dan penyedia konfigurasi `ThemeData`.
2. **`Scaffold`**: Struktur halaman utama yang memiliki `AppBar` dan `scaffoldBackgroundColor`.
3. **`Center`**: Memposisikan kartu profil tepat di tengah layar.
4. **`Container`**: Pembungkus kartu dengan dekorasi `BoxDecoration` (warna latar putih, `borderRadius: 19.5`, dan `boxShadow`).
5. **`Column`**: Menyusun komponen header dan detail identitas secara vertikal.
6. **`Row`**: Menyusun logo dan judul header secara horizontal, serta merapikan posisi label identitas dan tanda titik dua (`:`).

---

## 🚀 Cara Menjalankan Aplikasi

1. Clone repository ini:
   ```bash
   git clone https://github.com/nadhifshoeemagoldist-wq/Tugas_Layout_Flutter.git
   ```
2. Masuk ke direktori proyek:
   ```bash
   cd Tugas_Layout_Flutter
   ```
3. Unduh dependensi Flutter:
   ```bash
   flutter pub get
   ```
4. Jalankan aplikasi pada emulator atau perangkat:
   ```bash
   flutter run
   ```
