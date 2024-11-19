# Muffin Mart Mobile
## Nama : Fadhlurohman Dzaki
## Npm : 2306202132


# Tugas 9  Integrasi Layanan Web Django dengan Aplikasi Flutter

<details>
<summary>Click for more detail</summary>
<br>

# Jawaban Pertanyaan

### 1.Jelaskan mengapa kita perlu membuat model untuk melakukan pengambilan ataupun pengiriman data JSON? Apakah akan terjadi error jika kita tidak membuat model terlebih dahulu?
Membuat model untuk pengambilan atau pengiriman data JSON sangat diperlukan untuk memastikan proses yang konsisten dan aman dalam pertukaran data. Berikut adalah alasan dan risikonya:

- **Struktur yang Konsisten**  
  Model membantu memastikan struktur data yang diterima atau dikirim selalu sesuai, sehingga meminimalkan kesalahan.
  
- **Validasi Data**  
  Model memverifikasi bahwa data yang diterima sesuai dengan tipe atau aturan yang ditentukan, seperti format tanggal atau tipe integer.

- **Pengelolaan Lebih Mudah**  
  Dengan model, manipulasi data seperti serialisasi atau deserialisasi menjadi lebih sistematis.

- **Error Jika Tidak Membuat Model**  
  Jika tidak membuat model, beberapa error mungkin terjadi, seperti:
  1. Struktur JSON tidak sesuai dengan yang diharapkan.
  2. Data tidak tervalidasi dengan benar.
  3. Aplikasi client atau server mengalami kesulitan memahami data.



### 2. Jelaskan fungsi dari library http yang sudah kamu implementasikan pada tugas ini
Saya menggunakan library `pbp_django_auth`. Library `pbp_django_auth` di Flutter mempermudah implementasi otentikasi antara aplikasi Flutter dan Django. Berikut adalah fungsi utamanya:

- **Otomatisasi Proses Otentikasi**  
  Library ini menyediakan cara mudah untuk login dan logout pengguna dengan metode seperti `request.login()` dan `request.logout()`. Setelah login, cookie sesi disimpan dan digunakan untuk autentikasi pada permintaan selanjutnya.

- **Manajemen Cookie**  
  Secara otomatis menangani pengambilan dan pengiriman cookie CSRF dan sesi antara Flutter dan Django. Ini memungkinkan pengiriman permintaan yang memerlukan otentikasi (seperti endpoint dengan decorator `@login_required`) tanpa konfigurasi tambahan.

- **Integrasi Mudah dengan Provider**  
  Dengan memanfaatkan `Provider`, library ini memungkinkan instance `CookieRequest` dibagikan ke seluruh komponen aplikasi, sehingga setiap bagian aplikasi dapat mengakses status otentikasi dan melakukan permintaan API yang aman.

- **Mendukung Operasi HTTP**  
  Menyediakan metode seperti `request.get()`, `request.post()`, dan `request.postJson()` untuk melakukan operasi pengambilan atau pengiriman data ke server Django. Data dikirim dalam format yang kompatibel dengan Django, termasuk JSON dan data form.

- **Pengelolaan Status Login**  
  Library ini memiliki properti seperti `request.loggedIn` untuk memeriksa status login pengguna secara real-time, membantu dalam menampilkan UI yang berbeda untuk pengguna yang sudah login dan belum login.

- **Keamanan Tambahan**  
  Dengan konfigurasi CORS dan pengaturan cookie di Django (seperti `CSRF_COOKIE_SECURE` dan `SESSION_COOKIE_SAMESITE`), library ini menjaga keamanan komunikasi antara Flutter dan Django.



### 3. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Fungsi dari `CookieRequest` dalam aplikasi adalah untuk menyimpan informasi otentikasi, seperti cookie atau token, sehingga mempermudah pengelolaan sesi pengguna. Dengan membagikan instance `CookieRequest` ke seluruh komponen aplikasi melalui `Provider`, setiap bagian aplikasi dapat memanfaatkan status otentikasi tanpa perlu login ulang. Hal ini memastikan data pengguna tetap konsisten di seluruh aplikasi, menghemat waktu, dan mencegah duplikasi proses autentikasi.



### 4. Jelaskan mekanisme pengiriman data mulai dari input hingga dapat ditampilkan pada Flutter.
Mekanisme pengiriman data dari input hingga ditampilkan di Flutter melibatkan langkah-langkah berikut:

1. Pengguna mengisi data di form aplikasi Flutter.
2. Flutter mengirim data ke server Django menggunakan permintaan HTTP, misalnya melalui library `pbp_django_auth`.
3. Django menerima data, memprosesnya (seperti menyimpan ke database atau melakukan validasi), dan menghasilkan respons dalam format JSON.
4. Respons dari server diterima oleh Flutter, didekode, dan ditampilkan di UI menggunakan widget seperti `ListView` atau `Text`.



### 5.  Jelaskan mekanisme autentikasi dari login, register, hingga logout. Mulai dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
Proses autentikasi melibatkan interaksi antara Flutter dan Django sebagai berikut:

1. **Registrasi**  
   Flutter mengirim data akun seperti username, email, dan password ke endpoint Django untuk diverifikasi dan disimpan di database.

2. **Login**  
   Flutter mengirim data username dan password ke server Django untuk divalidasi. Jika valid, Django mengatur cookie sesi dan mengirimkannya kembali ke Flutter. Cookie ini digunakan untuk permintaan berikutnya yang membutuhkan autentikasi.

3. **Logout**  
   Saat logout, Django menghapus sesi atau token, memberitahu Flutter untuk mengarahkan pengguna kembali ke halaman login.

Proses ini memastikan otentikasi yang aman dan memungkinkan integrasi yang mulus antara server dan aplikasi Flutter.



### 6.  Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).



</details>


# Tugas 8 Flutter Navigation, Layouts, Forms, and Input Elements
<details>
<summary>Click for more detail</summary>
<br>

1. Apa kegunaan const di Flutter? Jelaskan apa keuntungan ketika menggunakan const pada kode Flutter. Kapan sebaiknya kita menggunakan const, dan kapan sebaiknya tidak digunakan?

    const digunakan untuk menyatakan bahwa sebuah objek atau widget tidak akan berubah setelah didefinisikan. Dengan kata lain, objek tersebut bersifat immutable (tidak dapat diubah), sehingga kompilator atau runtime Flutter dapat mengoptimalkan penggunaannya.

    ### Keuntungan Menggunakan const
    * Optimasi Memori: Objek const hanya akan dibuat satu kali dalam memori. Flutter akan menggunakan objek yang sama untuk semua instance const dengan nilai yang sama. Ini membantu mengurangi penggunaan memori, terutama pada elemen UI yang sering dibuat ulang, seperti Text, Icon, atau Container.

    * Peningkatan Performa: Flutter tidak perlu membangun ulang objek const yang tidak berubah, yang mempercepat proses rendering UI. Hal ini sangat bermanfaat dalam widget hierarki yang kompleks di mana widget tidak berubah seiring waktu.

    * Optimasi Proses Rendering: Dengan menggunakan const, Flutter dapat dengan cepat mengenali bahwa widget tertentu tidak memerlukan pembaruan, sehingga rendering menjadi lebih 
    efisien.

    ### Kapan Sebaiknya Menggunakan const

    Gunakan const jika kita tahu bahwa widget atau nilai tidak akan berubah selama runtime, seperti pada widget statis seperti Text, Icon, Padding, atau Container yang hanya menampilkan data tetap. Gunakan juga const di mana kita dapat mengatur nilai tetap (literal), seperti string atau angka, dalam widget atau parameter lainnya.

    ### Kapan Sebaiknya Tidak Menggunakan const
    
    Tidak perlu menggunakan `const` jika nilai widget atau objek dapat berubah selama runtime. Misalnya, jika kita memiliki widget yang bergantung pada data dinamis atau variabel stateful yang akan berubah, maka jangan gunakan `const`. Pada widget yang memerlukan perubahan berdasarkan interaksi pengguna atau variabel yang diambil dari API, penggunaan `const` tidak disarankan karena Flutter perlu membangun ulang widget tersebut saat data berubah.

2.  Jelaskan dan bandingkan penggunaan Column dan Row pada Flutter. Berikan contoh implementasi dari masing-masing layout widget ini!

    


    `Column` dan `Row` adalah dua widget tata letak (layout widgets) dasar di Flutter yang digunakan untuk menyusun widget anak (children) secara vertikal (`Column`) dan horizontal (`Row`).

    - **Column**: Menyusun widget secara vertikal dari atas ke bawah.
    - **Row**: Menyusun widget secara horizontal dari kiri ke kanan.

    ### Perbedaan Utama Column dan Row
    | Aspek       | Column                                                | Row                                                |
    |-------------|-------------------------------------------------------|----------------------------------------------------|
    | Arah Layout | Vertikal (atas ke bawah)                              | Horizontal (kiri ke kanan)                         |
    | Alignment   | `crossAxisAlignment` mengatur sejajar secara horizontal | `crossAxisAlignment` mengatur sejajar secara vertikal |
    | Overflow    | Bisa menyebabkan overflow vertikal                    | Bisa menyebabkan overflow horizontal               |
    | Digunakan Ketika | Membutuhkan layout vertikal | Membutuhkan layout horizontal |

    ### Contoh Implementasi `Column`
    Berikut adalah contoh penggunaan `Column` untuk menyusun widget `Text` secara vertikal:

    ```dart
    import 'package:flutter/material.dart';

    class ColumnExample extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(title: const Text('Column Example')),
        body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
            Text("This is line 1"),
            Text("This is line 2"),
            Text("This is line 3"),
            ],
        ),
        );
    }
    }
    ```

    ### Contoh Implementasi `Row`
    Berikut adalah contoh penggunaan `Row` untuk menyusun widget `Text` secara horizontal:

    ```dart
    import 'package:flutter/material.dart';

    class RowExample extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
        return Scaffold(
        appBar: AppBar(title: const Text('Row Example')),
        body: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
            Text("Item 1"),
            Text("Item 2"),
            Text("Item 3"),
            ],
        ),
        );
    }
    }
    ```
3.  Sebutkan apa saja elemen input yang kamu gunakan pada halaman form yang kamu buat pada tugas kali ini. Apakah terdapat elemen input Flutter lain yang tidak kamu gunakan pada tugas ini? Jelaskan!

    Pada form ini, elemen input yang saya gunakan adalah `TextFormField` untuk menerima masukan data produk, yang mencakup elemen berikut:

    1. **Name**: Untuk memasukkan nama produk.
    2. **Description**: Untuk memasukkan deskripsi produk.
    3. **Price**: Untuk memasukkan harga produk, yang diformat sebagai angka.
    4. **Amount**: Untuk memasukkan jumlah produk, yang juga diformat sebagai angka.

    Ada beberapa elemen input Flutter lain yang belum digunakan dalam tugas ini, antara lain:

    - **DropdownButtonFormField**: Dapat digunakan untuk memilih satu opsi dari daftar pilihan yang tersedia. Cocok jika ingin memberikan pilihan kategori produk.
    - **Checkbox**: Berguna jika ada atribut produk yang dapat aktif atau tidak, misalnya untuk menandai apakah produk ini tersedia atau tidak.
    - **Switch**: Cocok untuk fitur yang aktif atau nonaktif, mirip seperti checkbox namun tampilannya berbeda.
    - **Slider**: Bisa digunakan untuk mengatur rentang nilai, misalnya dalam menentukan diskon atau nilai persentase.
    - **Radio**: Berguna untuk memilih satu opsi dari beberapa pilihan yang eksklusif.

   
4. Bagaimana cara kamu mengatur tema (theme) dalam aplikasi Flutter agar aplikasi yang dibuat konsisten? Apakah kamu mengimplementasikan tema pada aplikasi yang kamu buat?

    Saya menerapkan tema (theme) dalam aplikasi Flutter saya melalui `ThemeData` di kelas utama `MaterialApp`. Tema ini memungkinkan saya untuk mengonfigurasi skema warna, gaya teks, dan berbagai elemen visual lainnya secara menyeluruh di aplikasi. Pada aplikasi MuffinMart, saya telah menggunakan `colorScheme` yang menetapkan `primarySwatch` dengan warna utama, seperti `Colors.brown`, serta warna sekunder untuk menjaga tampilan yang konsisten. Dengan pengaturan ini, elemen-elemen seperti `AppBar`, `Drawer`, dan `Card` di berbagai halaman menggunakan warna yang sama dari skema tema, menciptakan konsistensi tampilan di seluruh aplikasi.

5. Bagaimana cara kamu menangani navigasi dalam aplikasi dengan banyak halaman pada Flutter?

    Saya menggunakan Navigator dan MaterialPageRoute untuk menangani navigasi antar halaman. Dengan Navigator, saya dapat menambahkan atau menghapus halaman dari stack, yang memudahkan untuk berpindah antar halaman. Untuk menavigasi ke halaman baru, saya menggunakan Navigator.push bersama MaterialPageRoute, yang memungkinkan saya memanggil halaman tujuan dengan animasi standar. Jika saya perlu kembali ke halaman sebelumnya, saya menggunakan Navigator.pop. Selain itu, saya juga menggunakan Navigator.pushReplacement untuk menggantikan halaman saat ini dengan halaman baru, seperti pada navigasi halaman utama dan tambah product di drawer.

</details>

# Tugas 7: Elemen Dasar Flutter
<details>
<summary>Click for more detail</summary>
 <br>

1. Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget, dan jelaskan perbedaan dari keduanya.

    * Stateless Widget: Stateless widget adalah widget yang tidak memiliki state yang dapat berubah setelah widget itu dibuat. Artinya, tampilan dari widget ini statis atau tetap, dan tidak akan berubah secara dinamis. Stateless widget cocok untuk menampilkan UI yang tidak akan berubah, seperti ikon, teks, atau gambar yang tidak interaktif. Contoh dari stateless widget adalah Text, Icon, dan Image.

    * Stateful Widget: Stateful widget adalah widget yang memiliki state dan dapat berubah sepanjang masa hidupnya. Ini berarti tampilan dari widget ini bisa berubah berdasarkan state-nya, seperti ketika pengguna melakukan interaksi atau ketika data diperbarui. Stateful widget biasanya digunakan untuk widget yang interaktif, seperti tombol yang bisa di-tap, slider, atau switch. Contoh dari stateful widget adalah Checkbox, Switch, dan Slider.

    Perbedaan utama: Stateless widget tidak berubah selama aplikasi berjalan, sementara stateful widget dapat berubah-ubah karena dipengaruhi oleh state yang di-update.

2. Sebutkan widget apa saja yang kamu gunakan pada proyek ini dan jelaskan fungsinya.

    * Scaffold:<br>
    Fungsi: Menyediakan struktur dasar halaman seperti AppBar dan body.<br>
    Penggunaan: Scaffold menjadi wadah utama yang membentuk halaman aplikasi, memberikan tampilan dasar dengan AppBar di atas dan body di tengah.

    * AppBar:<br>
    Fungsi: Menampilkan judul halaman atau aplikasi di bagian atas.<br>
    Penggunaan: Menampilkan judul "MuffinMart" dengan warna teks putih dan background yang diambil dari tema aplikasi.

    * Padding:<br>
    Fungsi: Memberikan ruang (padding) di sekitar widget agar tampilan lebih rapi.<br>
    Penggunaan: Menerapkan padding di sekitar body Scaffold dan beberapa widget lain seperti teks sambutan.

    * Column:<br>
    Fungsi: Menyusun widget secara vertikal (top-down).<br>
    Penggunaan: Menyusun informasi NPM, nama, kelas, serta teks sambutan, dan grid item.

    * Row:<br>
    Fungsi: Menyusun widget secara horizontal (kiri-kanan).<br>
    Penggunaan: Digunakan untuk menampilkan 3 widget InfoCard secara horizontal, masing-masing berisi informasi NPM, nama, dan kelas.

    * InfoCard (custom widget):<br>
    Fungsi: Menampilkan kartu informasi dengan judul (title) dan isi (content) yang diberikan sebagai parameter.<br>
    Penggunaan: Terdapat tiga InfoCard di dalam Row, masing-masing berisi informasi NPM, nama, dan kelas.

    * Card:<br>
    Fungsi: Membuat tampilan kotak dengan efek bayangan, yang umumnya digunakan untuk menampilkan informasi tertentu dalam bentuk kartu.<br>
    Penggunaan: Digunakan di dalam InfoCard untuk menampilkan informasi seperti NPM, nama, dan kelas.

    * Text:<br>
    Fungsi: Menampilkan teks di layar.<br>
    Penggunaan: Digunakan di berbagai tempat untuk menampilkan judul aplikasi, teks sambutan, serta judul dan isi di dalam InfoCard dan ItemCard.

    * GridView.count:<br>
    Fungsi: Menyusun widget dalam bentuk grid dengan jumlah kolom yang ditentukan.<br>
    Penggunaan: Membuat grid dengan 3 kolom untuk menampilkan ItemCard sesuai dengan item yang ada di items list.

    * ItemCard (custom widget):<br>
    Fungsi: Menampilkan kartu yang berisi ikon dan nama untuk setiap item dalam items list.<br>
    Penggunaan: Menampilkan kartu yang berisi informasi dan ikon yang dapat ditekan untuk menampilkan SnackBar.

    * Material:<br>
    Fungsi: Menentukan warna latar belakang dari tema aplikasi dan memberikan tampilan material pada kartu.<br>
    Penggunaan: Digunakan dalam ItemCard untuk mengatur warna background yang konsisten dengan tema aplikasi.

    * InkWell:<br>
    Fungsi: Membuat efek klik atau tap pada widget dan mengatur aksi saat widget ditekan.<br>
    Penggunaan: Digunakan di dalam ItemCard untuk mendeteksi klik pada kartu dan menampilkan SnackBar.

    * SnackBar:<br>
    Fungsi: Menampilkan notifikasi singkat di bagian bawah layar.<br>
    Penggunaan: Saat ItemCard ditekan, SnackBar muncul menampilkan pesan bahwa tombol telah ditekan.

    * Icon:<br>
    Fungsi: Menampilkan ikon sesuai dengan IconData yang diberikan.<br>
    Penggunaan: Menampilkan ikon di dalam ItemCard untuk mewakili setiap item, seperti list, add, dan logout.

    * SizedBox:<br>
    Fungsi: Memberikan jarak atau ukuran khusus pada layout.<br>
    Penggunaan: Memberikan jarak vertikal antara InfoCard dan teks sambutan.

3. Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

    setState() adalah fungsi yang digunakan dalam stateful widget untuk memperbarui tampilan (UI) aplikasi saat ada perubahan pada state widget tersebut. Ketika setState() dipanggil, Flutter akan membangun ulang widget terkait dengan memperbarui state baru yang dihasilkan.

    Variabel yang Dapat Terdampak: Variabel-variabel yang disimpan dalam kelas state dari widget yang ingin di-update, seperti variabel yang menampung data dari input pengguna, counter, status checklist, atau data yang diperoleh dari server.

4. Jelaskan perbedaan antara const dengan final.

    * const: Digunakan untuk mendeklarasikan nilai yang bersifat tetap dan sudah diketahui saat waktu kompilasi. const ini benar-benar konstan dan bersifat immutable (tidak dapat diubah sama sekali).
    * final: Digunakan untuk mendeklarasikan nilai yang hanya diinisialisasi sekali (immutable) dan nilainya bisa ditentukan di waktu runtime, bukan hanya waktu kompilasi.

    Perbedaan utama: const hanya bisa digunakan jika nilai sudah diketahui pada waktu kompilasi, sementara final bisa digunakan untuk nilai yang akan ditentukan di runtime namun hanya sekali saja.

5. Jelaskan bagaimana cara kamu mengimplementasikan checklist-checklist di atas.

    * Menggenerate proyek flutter baru dengan command ```flutter create <APP_NAME>```
    * Merapikan struktur proyek dengan membuat file ```menu.dart``` pada direktori proyek kemudian memindahan class MyHomePage dan class _MyHomePageState di file ```main.dart``` ke file ```menu.dart```
    * Mengubah tema aplikasi dengan 
    ```dart
         colorScheme: ColorScheme.fromSwatch(
            primarySwatch: Colors.brown,
          ).copyWith(secondary: Colors.brown[400]),
    ```
    * Membuat tombol Lihat Daftar Produk, Tambah Produk, Logout dan snackbar kemudian menintegrasikannya untuk ditampilkan di MyHomePage pada ```menu.dart```
    ```dart
    class MyHomePage extends StatelessWidget {
        MyHomePage({super.key});

        final String npm = '2306202132'; // NPM
        final String name = 'Fadhlurohman Dzaki'; // Nama
        final String className = 'PBP C'; // Kelas

        final List<ItemHomepage> items = [
            ItemHomepage("Lihat Daftar Produk", Icons.list),
            ItemHomepage("Tambah Produk", Icons.add),
            ItemHomepage("Logout", Icons.logout),
        ];

        @override
    Widget build(BuildContext context) {
        // Scaffold menyediakan struktur dasar halaman dengan AppBar dan body.
        return Scaffold(
        // AppBar adalah bagian atas halaman yang menampilkan judul.
        appBar: AppBar(
            // Judul aplikasi " muffinmart Tracker" dengan teks putih dan tebal.
            title: const Text(
            'MuffinMart',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
            ),
            ),
            // Warna latar belakang AppBar diambil dari skema warna tema aplikasi.
            backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        // Body halaman dengan padding di sekelilingnya.
        body: Padding(
            padding: const EdgeInsets.all(16.0),
            // Menyusun widget secara vertikal dalam sebuah kolom.
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                // Row untuk menampilkan 3 InfoCard secara horizontal.
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                    InfoCard(title: 'NPM', content: npm),
                    InfoCard(title: 'Name', content: name),
                    InfoCard(title: 'Class', content: className),
                ],
                ),

                // Memberikan jarak vertikal 16 unit.
                const SizedBox(height: 16.0),

                // Menempatkan widget berikutnya di tengah halaman.
                Center(
                child: Column(
                    // Menyusun teks dan grid item secara vertikal.

                    children: [
                    // Menampilkan teks sambutan dengan gaya tebal dan ukuran 18.
                    const Padding(
                        padding: EdgeInsets.only(top: 16.0),
                        child: Text(
                        'Welcome to MuffinMart',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                        ),
                        ),
                    ),

                    // Grid untuk menampilkan ItemCard dalam bentuk grid 3 kolom.
                    GridView.count(
                        primary: true,
                        padding: const EdgeInsets.all(20),
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        crossAxisCount: 3,
                        // Agar grid menyesuaikan tinggi kontennya.
                        shrinkWrap: true,

                        // Menampilkan ItemCard untuk setiap item dalam list items.
                        children: items.map((ItemHomepage item) {
                        return ItemCard(item);
                        }).toList(),
                    ),
                    ],
                ),
                ),
            ],
            ),
        ),
        );
    }
    }



    class InfoCard extends StatelessWidget {
    // Kartu informasi yang menampilkan title dan content.

    final String title;  // Judul kartu.
    final String content;  // Isi kartu.

    const InfoCard({super.key, required this.title, required this.content});

    @override
    Widget build(BuildContext context) {
        return Card(
        // Membuat kotak kartu dengan bayangan dibawahnya.
        elevation: 2.0,
        child: Container(
            // Mengatur ukuran dan jarak di dalam kartu.
            width: MediaQuery.of(context).size.width / 3.5, // menyesuaikan dengan lebar device yang digunakan.
            padding: const EdgeInsets.all(16.0),
            // Menyusun title dan content secara vertikal.
            child: Column(
            children: [
                Text(
                title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                Text(content),
            ],
            ),
        ),
        );
    }
    }

    class ItemHomepage {
        final String name;
        final IconData icon;

        ItemHomepage(this.name, this.icon);
    }


    class ItemCard extends StatelessWidget {
    // Menampilkan kartu dengan ikon dan nama.

    final ItemHomepage item; 
    
    const ItemCard(this.item, {super.key}); 

    @override
    Widget build(BuildContext context) {
        return Material(
        // Menentukan warna latar belakang dari tema aplikasi.
        color: Theme.of(context).colorScheme.secondary,
        // Membuat sudut kartu melengkung.
        borderRadius: BorderRadius.circular(12),
        
        child: InkWell(
            // Aksi ketika kartu ditekan.
            onTap: () {
            // Menampilkan pesan SnackBar saat kartu ditekan.
            ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                SnackBar(content: Text("Kamu telah menekan tombol ${item.name}!"))
                );
            },
            // Container untuk menyimpan Icon dan Text
            child: Container(
            padding: const EdgeInsets.all(8),
            child: Center(
                child: Column(
                // Menyusun ikon dan teks di tengah kartu.
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                    Icon(
                    item.icon,
                    color: Colors.white,
                    size: 30.0,
                    ),
                    const Padding(padding: EdgeInsets.all(3)),
                    Text(
                    item.name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(color: Colors.white),
                    ),
                ],
                ),
            ),
            ),
        ),
        );
    }
    
    }

    ```
</details>


