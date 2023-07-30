**Tabel Fakta: Penjualan (Sales)**

Kolom: 

- **Sales\_ID** (Primary Key) [Integer]
- **Item\_ID** (Foreign Key ke tabel Item) [Integer]
- **Store\_ID** (Foreign Key ke tabel Store) [Integer]
- **Staff\_ID** (Foreign Key ke tabel Staff) [Integer]
- **Customer\_ID** (Foreign key ke tabel Customer) [Integer]
- **Promotion\_ID** (Foreign key ke tabel Promotion) [Integer]
- **Date\_transaction** (Tanggal transaksi) [Date]
- **Quantity\_sold** (Jumlah barang terjual) [Integer]
- **Revenue** (Pendapatan) [Integer]

**Tabel Dimensi: Item (Barang)**

Kolom:

- **Item\_ID** (Primary Key) [Integer]
- **Item\_code** (Barcode barang) [varchar]
- **Item\_name** (Nama barang) [varchar]
- **Item\_price** (Harga barang) [Integer]

**Tabel Dimensi: Store (Toko)**

Kolom:

- **Store\_ID** (Primary Key) [Integer]
- **Store\_code** (Kode barang) [varchar]
- **Store\_name** (Nama toko) [varchar]
- **City** (Kota lokasi toko) [varchar]
- **Region** (Region toko) [varchar]

**Tabel Dimensi: Staff (Personel)**

Kolom:

- **Staff\_ID** (Primary Key) [Integer]
- **Staff\_name** (Nama personel) [varchar]
- **Age** (Umur personel) [Integer]
- **Gender** (Jenis Kelamin personel) [char]
- **Date\_join** (Tanggal bergabung) [date]


**Tabel Dimensi: Customer (Pelanggan)**

Kolom:

- **Customer\_ID** (Primary Key) [Integer]
- **Customer\_name** (Nama pelanggan) [varchar]
- **Age** (Umur pelanggan) [Integer]
- **Gender** (Jenis kelamin pelanggan) [char]
- **Occupation** (Pekerjaan pelanggan) [varchar]

**Tabel Dimensi: Promosi (Promotion)**

Kolom:

- **Promotion\_ID** (Primary Key) [Integer]
- **Promotion\_name** (Nama promosi) [varchar]
- **Start\_date** (Tanggal mulai promosi) [date]
- **End\_date** (Tanggal berakhir promosi) [date]
- **Discount\_rate** (Diskon yang diberikan) [float]
