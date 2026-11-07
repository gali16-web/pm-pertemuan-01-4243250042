# Tugas Rutin 1 - Setup Environment & Aplikasi Hello World Flutter

Repository ini dibuat untuk memenuhi **Tugas Rutin 1** pada mata kuliah **Pemrograman Mobile** (Pertemuan 1). 
---

## (a) Identitas Mahasiswa

| Atribut | Keterangan |
| :--- | :--- |
| **Nama Lengkap** | Muhammad Gali Almahdi |
| **NIM** | 4243250042 |
| **Kelas** | PSIK 24 D 2024 |
---

---

## (b) Keluaran `flutter --version`

Berikut adalah hasil keluaran perintah `flutter --version` pada environment pengembangan yang digunakan:

![Tangkapan Layar flutter --version](screenshots/flutter_version.png)

---

## (c) Tangkapan Layar `flutter doctor`

![Tangkapan Layar Flutter Doctor](screenshots/flutter_doctor.png)

<details>
<summary>Lihat teks keluaran <code>flutter doctor</code></summary>

```text
Doctor summary (to see all details, run flutter doctor -v):
[√] Flutter (Channel stable, 3.44.9, on Microsoft Windows [Version 10.0.26100.9711], locale en-US)
[√] Windows Version (Windows 11 or higher, 24H2, 2009)
[√] Android toolchain - develop for Android devices (Android SDK version 36.0.0)
[√] Chrome - develop for the web
[√] Connected device (3 available)
[√] Network resources
```
</details>

---

## (d) Tangkapan Layar Aplikasi Berjalan

![Tangkapan Layar Aplikasi Berjalan](screenshots/app_running.png)

**Fitur yang ditampilkan pada aplikasi:**
1. Teks sapaan **`Hello World, Flutter!`**.
2. Kartu identitas mahasiswa yang memuat **Nama** (`M. Gali Almahdi`), **NIM** (`4243250042`), dan **Kelas** (`PSIK 24 D 2024`).
---

## (e) Kendala yang Dialami & Solusinya

Selama proses penyiapan *environment* dan pembuatan proyek ini, terdapat beberapa kendala yang berhasil diselesaikan:

1. **Kendala 1: Perbedaan aturan penamaan folder/repository (`pm-pertemuan-01-4243250042`) dengan aturan nama paket Dart.**
   - **Deskripsi Masalah:** Ketentuan tugas mengharuskan nama repository menggunakan tanda hubung (`pm-pertemuan-01-4243250042`), sedangkan perintah `flutter create` secara *default* menolak nama proyek yang mengandung tanda hubung (`-`) karena standar penamaan paket Dart di `pubspec.yaml` hanya mengizinkan huruf kecil dan garis bawah (`_`).
   - **Solusi:** Menjalankan perintah pembuatan proyek dengan menambahkan flag `--project-name`, yaitu:
     ```bash
     flutter create --project-name pm_pertemuan_01_4243250042 pm-pertemuan-01-4243250042
     ```
     Dengan cara ini, nama direktori/repository tetap `pm-pertemuan-01-4243250042` sesuai ketentuan, sementara nama paket internal Dart menjadi `pm_pertemuan_01_4243250042`.

2. **Kendala 2: Peringatan komponen `cmdline-tools` dan lisensi Android SDK pada saat pemeriksaan awal `flutter doctor`.**
   - **Deskripsi Masalah:** Saat pertama kali memeriksa *toolchain* menggunakan `flutter doctor`, muncul peringatan bahwa *Android SDK Command-line Tools* belum terpasang atau beberapa lisensi Android SDK belum disetujui.
   - **Solusi:** Membuka **Android Studio > SDK Manager > SDK Tools**, mencentang dan menginstal **Android SDK Command-line Tools (latest)**, lalu menjalankan perintah `flutter doctor --android-licenses` di terminal dan menekan `y` untuk menyetujui seluruh lisensi hingga status *Android toolchain* bercentang hijau `[√]`.

---

## Esai Singkat: Perbandingan Pendekatan Native, Hybrid, dan Cross-Platform

Pengembangan aplikasi mobile memiliki tiga pendekatan utama, yaitu Native, Hybrid, dan Cross-platform, yang masing-masing memiliki karakteristik teknis serta peruntukan yang berbeda.

Pendekatan **Native** membangun aplikasi khusus untuk satu sistem operasi menggunakan bahasa resminya, seperti Kotlin pada Android atau Swift pada iOS. Keunggulan utamanya adalah performa komputasi paling optimal, akses langsung ke seluruh fitur perangkat keras tanpa perantara, serta antarmuka yang sangat responsif. Namun, biaya dan waktu pengembangannya tinggi karena membutuhkan dua basis kode terpisah. Contoh kasus yang tepat adalah **aplikasi mobile banking** yang menuntut keamanan tingkat tinggi, autentikasi biometrik presisi, dan stabilitas maksimal.

Pendekatan **Hybrid** membungkus kode web (HTML, CSS, dan JavaScript) di dalam komponen WebView menggunakan kerangka kerja seperti Ionic atau Cordova. Pendekatan ini sangat hemat biaya dan cepat dikerjakan oleh pengembang web, tetapi performanya paling rendah karena antarmuka dirender melalui peramban internal. Contoh kasus yang tepat adalah **aplikasi katalog informasi kampus atau pencatatan hasil panen komunitas petani** dengan anggaran terbatas dan fitur sederhana.

Sementara itu, pendekatan **Cross-platform** seperti Flutter menggunakan satu basis kode (Dart) yang dikompilasi ke kode mesin native (AOT) serta menggambar piksel antarmuka sendiri melalui engine rendering Impeller. Hasilnya, performa aplikasi mendekati Native dengan efisiensi waktu dan biaya pengembangan lintas platform. Contoh kasus yang tepat adalah **aplikasi e-commerce atau startup layanan pesan-antar** yang membutuhkan tampilan konsisten dan responsif di Android maupun iOS secara bersamaan.
---

## (f) Pernyataan Penggunaan AI

Dalam pengerjaan Tugas Rutin 1 ini, penulis menggunakan bantuan asisten AI (Google Antigravity / Gemini) sebagai pendamping belajar (*pair programming*) untuk:
1. Membantu merancang pemisahan struktur folder kode sumber (`models`, `screens`, dan `widgets`) dan konvensi dokumentasi Dart (`///`).
2. Membantu merapikan format penulisan tabel dan tata letak dokumentasi Markdown pada berkas `README.md`.
3. Memahai flow dari flutter.