import mysql.connector
from prettytable import PrettyTable
import os
os.system('cls')

# Koneksi ke database
mydb = mysql.connector.connect(
    host="localhost",
    user="root",
    password="",
    database="seacare_center"
)
mycursor = mydb.cursor()


# Class untuk node
class Node:
    def __init__(self, data):
        self.data = data
        self.next = None


# Class untuk linked list
class LinkedList:
    def __init__(self):
        self.head = None
        

    # Method tambah node
    def append(self, data):
        new_node = Node(data)
        if not self.head:
            self.head = new_node
            return
        last_node = self.head
        while last_node.next:
            last_node = last_node.next
        last_node.next = new_node



    # Method tampilkan tabel tindakan pelestarian
    def display_tindakan_pelestarian(self):
        current = self.head
        t = PrettyTable()
        t.field_names = ["ID_REGISTRASI", "ID_PJ", "ID_perairan", "Jenis_Tindakan", "Waktu_Kegiatan"]
        while current:
            t.add_row(current.data)
            current = current.next
        print(t)

    # Method tampilkan tabel biota laut
    def display_biota_laut(self):
        current = self.head
        t = PrettyTable()
        t.field_names = ["nama_biota", "flora_atau_fauna", "nama_ilmiah", "populasi", "status", "ID_perairan", "ID_ADMIN"]
        while current:
            t.add_row(current.data)
            current = current.next
        print(t)

    # Method quick sort
    def sorting_cepat(self, arr, ascending=True):
        if len(arr) <= 1:
            return arr
        pivot = arr[len(arr) // 2][0]
        kiri = [a for a in arr if a[0] < pivot]
        tengah = [a for a in arr if a[0] == pivot]
        kanan = [a for a in arr if a[0] > pivot]
        if ascending:
            return self.sorting_cepat(kiri, ascending) + tengah + self.sorting_cepat(kanan, ascending)
        else:
            return self.sorting_cepat(kanan, ascending) + tengah + self.sorting_cepat(kiri, ascending)

    # Method jump search PJ
    def jump_search(self, arr, x): #untuk search PJ
        n = len(arr)
        step = int(n ** 0.5)
        prev = -1
        while prev < n and arr[prev][0] < x:
            prev = step
            step += int(step ** 0.5)
            if prev >= n:
                return -1
        while prev < n and arr[prev][0] != x:
            prev += 1
        if prev < n and arr[prev][0] == x:
            return prev
        return -1
    
    # Method jump search admin
    def jump_search_2(self, arr, x): # untuk serch admin
        n = len(arr)
        step = int(n ** 0.5)
        prev = 0
        while arr[min(step, n) - 1][0] < x:
            prev = step
            step += int(step ** 0.5)
            if prev >= n:
                return -1
        while arr[prev][0] < x:
            prev += 1
            if prev == min(step, n):
                return -1
        if arr[prev][0] == x:
            return prev
        return -1



def tampilkan_tindakan_pelestarian():
    try:
        mycursor.execute("SELECT * FROM tindakan_pelestarian")
        result = mycursor.fetchall()
        data_list = []
        for data in result:
            data_list.append(data)
        return data_list
    except mysql.connector.Error as err:
        print("Error:", err)
        return []


def tampilkan_biota_laut():
    try:
        mycursor.execute("SELECT * FROM biota_laut")
        result = mycursor.fetchall()
        data_list = []
        for data in result:
            data_list.append(data)
        return data_list
    except mysql.connector.Error as err:
        print("Error:", err)
        return []

# Fungsi tambah tindakan pelestarian
def tambah_data_tindakan_pelestarian():
    while True:
        try:
            
            ID_PERAIRAN = str(input("Masukkan ID perairan: "))
            if not ID_PERAIRAN.isdigit() or len(ID_PERAIRAN) > 3:
                print("ID perairan hanya boleh diisi dengan angka dan tidak lebih dari 3 karakter.")
                continue
            ID_PERAIRAN = int(ID_PERAIRAN)

            Jenis_Tindakan = str(input("Masukkan Jenis Tindakan: "))
            if len(Jenis_Tindakan) > 50:
                print("Jenis Tindakan tidak boleh lebih dari 50 karakter.")
                continue

            Waktu_Kegiatan = str(input("Masukkan Waktu Kegiatan (format: YYYY-MM-DD): "))

            Query = f"""
            INSERT INTO tindakan_pelestarian (ID_REGISTRASI, ID_PJ, ID_perairan, Jenis_Tindakan, Waktu_Kegiatan)
            VALUES (DEFAULT, '{ID_PJ}', '{ID_PERAIRAN}', '{Jenis_Tindakan}', '{Waktu_Kegiatan}')
            """

            mycursor.execute(Query)
            mydb.commit()
            print("Data tindakan pelestarian berhasil ditambahkan!!")
            break
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except (ValueError, mysql.connector.Error) as err:
            print("Error:", err)

# Fungsi tambah biota laut
def tambah_data_biota_laut():
    while True:
        try:
            nama_biota = str(input("Masukkan nama biota laut: "))
            if not nama_biota.isalpha() or len(nama_biota) > 50:
                print("Data hanya boleh diisi dengan huruf dan tidak lebih dari 50 karakter.")
                continue

            pilih_jenis = int(input(f"1. Flora \n2. Fauna \n Masukkan jenis biota laut: "))
            if pilih_jenis == 1:
                flora_atau_fauna = "Flora"
            elif pilih_jenis == 2:
                flora_atau_fauna = "Fauna"
            else:
                print("Mohon pilih opsi yang sesuai (1/2)")
                continue

            nama_ilmiah = str(input("Masukkan nama ilmiah: "))
            if not nama_ilmiah.isalpha() or len(nama_ilmiah) > 100:
                print("Data hanya boleh diisi dengan huruf dan tidak lebih dari 100 karakter.")
                continue

            pilih_populasi = int(input(f"1. Berlimpah \n2. Sedang \n3. Terancam Punah \n Masukkan populasi biota: "))
            if pilih_populasi == 1:
                populasi = "Berlimpah"
            elif pilih_populasi == 2:
                populasi = "Sedang"
            elif pilih_populasi == 3:
                populasi = "Terancam Punah"
            else:
                print("Mohon pilih opsi yang sesuai (1/2/3)")
                continue

            pilih_status = int(input(f"1. Lestari \n2. Rentan \n3. Terancam \n4. Dilindungi \n Masukkan status biota: "))
            if pilih_status == 1:
                status = "Lestari"
            elif pilih_status == 2:
                status = "Rentan"
            elif pilih_status == 3:
                status = "Terancam"
            elif pilih_status == 4:
                status = "Dilindungi"
            else:
                print("Mohon pilih opsi yang sesuai (1/2/3/4)")
                continue

            ID_perairan = str(input("Masukan ID perairan: "))# yang betull wkwkwkw
            if not ID_perairan.isdigit() or len(ID_perairan) > 3:
                print("Data hanya boleh diisi dengan angka tanpa koma dan tidak lebih dari 3 karakter.")
                continue
            ID_perairan = int(ID_perairan)

            Query = f"""
            INSERT INTO biota_laut (nama_biota, flora_atau_fauna, nama_ilmiah, populasi, status, ID_perairan, ID_admin)
            VALUES ('{nama_biota}', '{flora_atau_fauna}', '{nama_ilmiah}', '{populasi}', '{status}', '{ID_perairan}', '{ID_admin}')
            """

            mycursor.execute(Query)
            mydb.commit()
            print("Data biota laut berhasil ditambahkan!!")
            break
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except (ValueError, mysql.connector.Error) as err:
            print("Error:", err)

# Fungsi hapus biota laut 
def hapus_biota_laut():
    while True:
        try:
            tampilkan_biota_laut()
            nama_biota_laut = input("Masukkan nama biota laut yang ingin dihapus: ")

            code = f"DELETE FROM biota_laut WHERE nama_biota = '{nama_biota_laut}'"

            mycursor.execute(code)
            mydb.commit()
            print(f"Data dari {nama_biota_laut} telah dihapus!!")
            break
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except mysql.connector.Error as err:
            print("Error:", err)
            

def perbarui_biota_laut():
    while True:
        try:
            tampilkan_biota_laut()
            nama_biota = str(input("Masukkan nama biota laut: "))
            if not nama_biota.isalpha() or len(nama_biota) > 50:
                print("Data hanya boleh diisi dengan huruf dan tidak lebih dari 50 karakter.")
                continue

            pilih_jenis = int(input(f"1. Flora \n2. Fauna \n Masukkan jenis biota laut: "))
            if pilih_jenis == 1:
                flora_atau_fauna = "Flora"
            elif pilih_jenis == 2:
                flora_atau_fauna = "Fauna"
            else:
                print("Mohon pilih opsi yang sesuai (1/2)")
                continue

            nama_ilmiah = str(input("Masukkan nama ilmiah: "))
            if not nama_ilmiah.isalpha() or len(nama_ilmiah) > 100:
                print("Data hanya boleh diisi dengan huruf dan tidak lebih dari 100 karakter.")
                continue

            pilih_populasi = int(input(f"1. Berlimpah \n2. Sedang \n3. Terancam Punah \n Masukkan populasi biota: "))
            if pilih_populasi == 1:
                populasi = "Berlimpah"
            elif pilih_populasi == 2:
                populasi = "Sedang"
            elif pilih_populasi == 3:
                populasi = "Terancam Punah"
            else:
                print("Mohon pilih opsi yang sesuai (1/2/3)")
                continue

            pilih_status = int(input(f"1. Lestari \n2. Rentan \n3. Terancam \n4. Dilindungi \n Masukkan status biota: "))
            if pilih_status == 1:
                status = "Lestari"
            elif pilih_status == 2:
                status = "Rentan"
            elif pilih_status == 3:
                status = "Terancam"
            elif pilih_status == 4:
                status = "Dilindungi"
            else:
                print("Mohon pilih opsi yang sesuai (1/2/3/4)")
                continue
                

            print("SELECT * FROM biota_laut {ID_perairan} ")
            ID_perairan = str(input("Masukan ID perairan: "))# yang betull wkwkwkw
            if not ID_perairan.isdigit() or len(ID_perairan) > 3:
                print("Data hanya boleh diisi dengan angka tanpa koma dan tidak lebih dari 3 karakter.")
                continue
            ID_perairan = int(ID_perairan)

            code = f"""
            UPDATE biota_laut 
            SET flora_atau_fauna = '{flora_atau_fauna}',
            nama_ilmiah = '{nama_ilmiah}',
            populasi = '{populasi}',
            status = '{status}',
            ID_perairan = '{ID_perairan}',
            ID_admin = '{ID_admin}'
            WHERE nama_biota = '{nama_biota}'
            """
            mycursor.execute(code)
            mydb.commit()
            print(f"Data dari {nama_biota} telah diperbarui!!")
            break
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except (ValueError, mysql.connector.Error) as err:
            print("Error:", err)


def login_admin():
    while True:
        try:
            login_attempts = 0
            global ID_admin

            while login_attempts < 3:
                nama_admin = input("Masukkan nama admin: ")
                ID_admin = input("Masukkan ID admin: ")

                # Memeriksa kredensial admin di database
                mycursor.execute("SELECT * FROM admin WHERE nama_admin = %s AND ID_admin = %s", (nama_admin, ID_admin))
                result = mycursor.fetchone()

                if result:
                    print("\n")
                    print("+=================================================+")
                    print(f" Login berhasil! Selamat datang, {nama_admin}  ")
                    print("+=================================================+")
                    print("\n")
                    return result, "admin"
                else:
                    print("+=================================================+")
                    print("|  nama atau ID salah atau Anda bukan Admin.  |")
                    print("+=================================================+")
                    login_attempts += 1

            if login_attempts == 3:
                print("Anda telah mencoba login sebanyak 3 kali dengan kesalahan. Otomatis keluar aplikasi.")
                exit()
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
                print(f"Terjadi kesalahan tak terduga: {e}")
        except mysql.connector.Error as err:
            print("Error:", err)


def login_PJ():
    while True:
        try:
            login_attempts = 0
            global ID_PJ

            while login_attempts < 3:
                nama_PJ = input("Masukkan nama PJ: ")
                ID_PJ = input("Masukkan ID PJ: ")

                # Memeriksa kredensial penanggung jawab di database
                mycursor.execute("SELECT * FROM penanggung_jawab WHERE nama_PJ = %s AND ID_PJ = %s", (nama_PJ, ID_PJ))
                result = mycursor.fetchone()

                if result:
                    print("\n")
                    print("+=================================================+")
                    print(f" Login berhasil! Selamat datang, {nama_PJ}  ")
                    print("+=================================================+")
                    print("\n")
                    return result, "PJ"
    
                else:
                    print("+=================================================+")
                    print("|  nama atau ID salah atau Anda bukan penanggung jawab.  |")
                    print("+=================================================+")
                    login_attempts += 1

            if login_attempts == 3:
                print("Anda telah mencoba login sebanyak 3 kali dengan kesalahan. Otomatis keluar aplikasi.")
                exit()
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except mysql.connector.Error as err:
            print("Error:", err)


def main():
    while True:
        try:
            print("Pilihan login:")
            print("1. Admin")
            print("2. Penanggung Jawab (PJ)")
            print("3. Keluar")
            choice = input("Masukkan pilihan: ")

            if choice == "1":
                user, role = login_admin()
                if user and role == "admin":
                    print("Login berhasil sebagai admin.")
                    menu_admin()
                    break
            elif choice == "2":
                user, role = login_PJ()
                if user and role == "PJ":
                    print("Login berhasil sebagai PJ.")
                    menu_PJ()
                    break
            elif choice == "3":
                exit()
            else:
                print("Pilihan tidak valid. Silakan coba lagi.")
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except mysql.connector.Error as err:
            print("Error:", err)


def menu_admin():
    data_list = tampilkan_biota_laut()


    while True:
        try:
            print("==============================================")
            print("|             OPSI yang tersedia            |")
            print("==============================================")
            print("|1. Tampilkan data biota laut               |")
            print("|2. Tambahkan data biota laut               |")
            print("|3. Hapus data biota laut                   |")
            print("|4. Perbarui data biota laut                |")
            print("|5. Sorting ascending berdasarkan nama      |")
            print("|6. Sorting descending berdasarkan nama     |")
            print("|7. Cari atau search berdasarkan nama       |")
            print("|8. Logout                                  |")
            print("==============================================")

            pilihan = input("Masukkan opsi yang ingin Anda gunakan: ")

            if pilihan == '1':
                ll = LinkedList()
                for data in data_list:
                    ll.append(data)
                ll. display_biota_laut()
            elif pilihan == '2':
                tambah_data_biota_laut()
                data_list = tampilkan_biota_laut()
                ll = LinkedList()
                for data in data_list:
                        ll.append(data)
                ll.display_biota_laut()
            elif pilihan == '3':
                hapus_biota_laut()
                data_list = tampilkan_biota_laut()
                ll = LinkedList()
                for data in data_list:
                        ll.append(data)
                ll.display_biota_laut()
            elif pilihan == '4':
                perbarui_biota_laut()
                data_list = tampilkan_biota_laut()
                ll = LinkedList()
                for data in data_list:
                        ll.append(data)
                ll.display_biota_laut()
            elif pilihan == '5':
                ll = LinkedList()
                sorted_data = ll.sorting_cepat(data_list, ascending=True)
                for data in sorted_data:
                    ll.append(data)
                ll.display_biota_laut()
            elif pilihan == '6':
                ll = LinkedList()
                sorted_data = ll.sorting_cepat(data_list, ascending=False)
                for data in sorted_data:
                    ll.append(data)
                ll.display_biota_laut()
            elif pilihan == '7':
                nama = str(input("Masukkan nama yang ingin dicari: "))
                ll = LinkedList()
                pencarian = ll.jump_search_2(data_list, nama)
                if pencarian != -1:
                    print("Nama yang dicari ditemukan")
                    y = PrettyTable()
                    y.field_names = ["nama_biota", "flora_atau_fauna", "nama_ilmiah", "populasi", "status", "ID_perairan", "ID_ADMIN"]
                    y.add_row(data_list[pencarian])
                    print(y)
                else:
                    print("Nama yang dicari tidak ditemukan")
            elif pilihan == '8':
                print("Logout berhasil.")
                return main()
            else:
                print("Pilihan tidak valid")
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except mysql.connector.Error as err:
            print("Error:", err)


def menu_PJ():
    data_list = tampilkan_tindakan_pelestarian()


    while True:
        try:
            print("==============================================")
            print("|             OPSI yang tersedia            |")
            print("==============================================")
            print("|1. Tampilkan data tindakan pelestarian     |")
            print("|2. Sorting ascending berdasarkan nama      |")
            print("|3. Sorting descending berdasarkan nama     |")
            print("|4. Cari atau search berdasarkan ID-nya     |")
            print("|5. tambah data tindakan pelestarian        |")
            print("|6. Logout                                  |")
            print("==============================================")

            pilihan = input("Masukkan opsi yang ingin Anda gunakan: ")

            if pilihan == '1':
                    ll = LinkedList()
                    for data in data_list:
                        ll.append(data)
                    ll.display_tindakan_pelestarian()

            elif pilihan == '2':
                ll = LinkedList()
                sorted_data = ll.sorting_cepat(data_list, ascending=True)
                for data in sorted_data:
                    ll.append(data)
                ll.display_tindakan_pelestarian()
            elif pilihan == '3':
                ll = LinkedList()
                sorted_data = ll.sorting_cepat(data_list, ascending=False)
                for data in sorted_data:
                    ll.append(data)
                ll.display_tindakan_pelestarian()
            elif pilihan == '4':
                Nama = int(input("Masukkan nama yang ingin dicari: "))
                ll = LinkedList()
                pencarian = ll.jump_search(data_list, Nama)
                if pencarian != -1:
                    print("Data yang dicari ditemukan")
                    y = PrettyTable()
                    y.field_names = ["ID_REGISTRASI", "ID_PJ", "ID_perairan", "Jenis_Tindakan", "Waktu_Kegiatan"]
                    y.add_row(data_list[pencarian])
                    print(y)
                else:
                    print("Data yang dicari tidak ditemukan")


            elif pilihan == "5":
                tambah_data_tindakan_pelestarian()
                data_list = tampilkan_tindakan_pelestarian()
            elif pilihan == '6':
                print("Logout berhasil.")
                return main()
            else:
                print("Pilihan tidak valid")
        except KeyboardInterrupt:
            print("\nOperasi dibatalkan oleh pengguna. Lanjutkan program...")
            continue
        except Exception as e:
            print(f"Terjadi kesalahan tak terduga: {e}")
        except mysql.connector.Error as err:
            print("Error:", err)



if __name__ == "__main__":
    main() 



