# Muffin Mart Mobile
## Nama : Fadhlurohman Dzaki
## Npm : 2306202132


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


