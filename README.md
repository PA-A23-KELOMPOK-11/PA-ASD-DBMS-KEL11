# PA-ASD-DBMS-KEL11
* **Sub-tema**: Ekosistem Kelautan
## Anggota
* **Aidhil Saputra** - 2309116014
* **Irene Mi'raj Nur Sari**- 2309116015
* **Naura Syawal Athallah Putri** - 2309116032
* **Rofi Hanif Fauzan** - 2309116026

# DAFTAR ISI
* Brief Description [(https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/blob/main/README.md#brief-description)]
* Flowchart [(https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/blob/main/README.md#flowchart)]
* Penggunaan Program [(https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/blob/main/README.md#cara-penggunaan-program)]
* Menu Admin [(https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/blob/main/README.md#menu-admin)]
* Menu PJ [(https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/blob/main/README.md#menu-penanggung-jawabpj)]
* Library [(https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/blob/main/README.md#import-modul)]

# IMPORT MODUL
> Import import mysql.connector

> from prettytable import PrettyTable

> import os | os.system('cls')

# Program Menjaga Ekosistem Laut
## Program Name
Seacare Center
## Brief Description
Program menjaga Ekosistem Laut adalah program yang dibuat untuk mengawasi dan mengamati perkembangan ekosistem laut. Sering kali kita melihat berita terumbu karang yang rusak karena bom dan penangkapan ikan serta hewan yang dilindungi secara ilegal. Program ini bertujuan untuk mendata dan melihat perkembangan ekosistem laut dari banyaknya tindakan pelestarian yang dilakukan para penanggung jawab dari berbagai instansi tentunnya. 
# FLOWCHART
![PA ASD](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144671469/83163775-e027-4314-af27-5a21ca9facdd)


# Cara Penggunaan Program
## Menu Utama
* Ini merupakan menu utama, user dapat melakukan login sebagai Admin atau Penanggung Jawab(PJ)
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/3c56880a-ba0f-4d8d-8341-5ef2f94a5111)
  
* Disini saya memilih opsi '1'1 yaitu login sebagai admin, masukkan Nama dan ID Admin
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/f6c0ea49-9060-49fe-8495-0eb2bff1a5e4)

## Menu Admin
* Jika berhasil login, user akan masuk ke menu admin admin. Di menu admin sendiri memiliki 8 opsi yang bisa dilihat di bawah ini
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/d5c97efb-2c2b-4413-8d49-152605467f41)

* Opsi '1' untuk menampilkan data dari biota laut
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/bb64edcf-63f9-4ffe-ac88-b76eff1c4511)

* Opsi '2' untuk menambah data biota laut baru
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/9a859435-68eb-45c5-9d16-29538ffa5b5c)
  
  Data baru berhasil ditambah
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/e3329b64-c81e-4245-9d59-cf4c28fbbd3f)

* Opsi '3' untuk menghapus data biota laut
  
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/97768033-61fa-4572-b3cb-7884592916e2)

  Data berhasil dihapus
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/0455eae3-ce31-4fa7-9214-fe93abaeabcd)

* Opsi '4' Untuk memperbarui data yang sudah ada
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/6e174ee5-b76a-47c1-aaba-677d0b510bd8)

  Data sebelum diperbarui
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/a54c221e-a3c5-454b-ae22-346acbea7ad7)

  Data setelah diperbarui
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/be81ab70-04c1-4931-aa58-631f740ae8ac)

* Opsi '5' Untuk melakukan sorting berdasarkan nama biota secara ascending (A-Z)
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/0e919598-752f-4312-a481-2d7c449aa3b6)

* Opsi '6' Untuk melakukan sorting berdasarkan nama biota secara descending (Z-A)
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/f8def990-274d-4826-a633-1a8fb83805b1)

* Opsi '7' Untuk melakukan searching berdasarkan nama biota
  ![WhatsApp Image 2024-05-01 at 20 44 16](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/b66e5595-aecb-421b-a69c-294f933d298b)

* Opsi '8' Untuk melakukan logout dan kembali ke menu utama

  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/d8a8b15c-5d21-4005-82bd-f44ebe1f3f81)

## Menu Penanggung Jawab(PJ)

* Lakukan login sebagai PJ di menu utama
  
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/a2b43f6b-9d9b-4642-8655-2cc98374e977)

* Setelah login berhasil, akan masuk ke menu PJ. Di menu PJ sendiri ada 6 opsi yang bisa dilihat di bawah ini
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/8380f694-0794-49b0-9c78-40a22eb60206)

* Opsi '1' untuk menampilkan data tindakan pelestarian
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/2d099f90-2825-4ec5-b632-2fa09626dc90)

* Opsi '2' melakukan sorting berdasarkan ID_Registrasi secara ascending (terkecil-terbesar)
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/f3d1c9ee-e085-40f1-9a0b-5ea69e2ddd0c)

* Opsi '3' melakukan sorting berdasarkan ID_Registrasi secara descending (terbesar-terkecil)
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/0075d233-97a9-4d38-be17-c10be6294d17)

* Opsi '4' Untuk melakukan searching berdasarkan ID_Registrasi
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/6caba6a5-9a7a-4cae-9c4c-9df9c7a96ea5)

* Opsi '5' Untuk menambah data baru di tindakan pelestarian
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/3358f3fe-a730-4c19-9d9c-45029f19264b)

  Data berhasil ditambah
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/5b52b31f-67c5-439f-8ac9-148298c25301)

* Opsi '6 Untuk kembali ke menu utama, lalu pilih opsi '3' pada menu utama untuk memberhentikan program
  ![image](https://github.com/PA-A23-KELOMPOK-11/PA-ASD-DBMS-KEL11/assets/144798359/36c7a40b-7ea5-44fc-af70-e287dd4a85e7)












  



