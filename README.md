# 📱 Aplikasi Formulir Flutter

Aplikasi sederhana menggunakan Flutter yang memungkinkan pengguna mengisi formulir dengan nama dan email, lalu menyimpan data ke daftar yang ditampilkan di halaman utama.

Fitur tambahan termasuk **edit** dan **hapus**

---

## 🧹 Fitur Utama

- ✅ Input Form Nama & Email
- ✅ Tampilkan Data di Beranda
- ✅ Edit & Hapus Data

---

## 📂 Preview

![image](https://github.com/user-attachments/assets/da23d284-db4d-4bac-8b84-e61db6a0bc48)
![image](https://github.com/user-attachments/assets/e41e74a7-fcee-48ff-932d-f43d6d7c4204)
![image](https://github.com/user-attachments/assets/db5ebc16-5b95-4f3a-9bfa-a070c5744433)
![image](https://github.com/user-attachments/assets/9c78b09d-7e80-49e8-88ae-11373f31489c)

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
