# 📱 Aplikasi Formulir Flutter

Aplikasi sederhana menggunakan Flutter yang memungkinkan pengguna mengisi formulir dengan nama dan email, lalu menyimpan data ke daftar yang ditampilkan di halaman utama.

Fitur tambahan termasuk **edit** dan **hapus**

---

## 🧹 Fitur Utama

- ✅ Input Form Nama & Email
- ✅ Tampilkan Data di Beranda
- ✅ Edit & Hapus Data

---

## 📂 Struktur Folder

```

lib/

│
├── main.dart # Entry point aplikasi
│
├── screens/
│ ├── home_screen.dart # Halaman utama dengan daftar data
│ └── form_screen.dart # Halaman formulir input/edit
│
├── utils/
│ └── shared_prefs_helper.dart # Fungsi penyimpanan data lokal

```

---

## 🚀 Cara Menjalankan

1.  **Clone repository** ini atau salin semua file ke project Flutter-mu.
2.  **Install dependencies:**

```bash

flutter  pub  get

```

3.  **Jalankan aplikasi:**

```bash

flutter  run

```

---

## 🛆 Dependency

Tambahkan ini di `pubspec.yaml`:

```yaml
dependencies:

flutter:
sdk: flutter
shared_preferences: ^2.2.2
```

---

## 👨‍💻 Kontribusi

Jika ingin menambahkan fitur (misalnya filter pencarian, validasi lebih lanjut, atau penyimpanan cloud), silakan pull request atau modifikasi sesukamu.

---

## 📃 Lisensi

Aplikasi ini bebas digunakan untuk keperluan belajar, eksperimen, dan pengembangan pribadi.
