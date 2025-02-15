class Buku {
  int idBuku;
  String judul;
  String penulis;
  int tahunTerbit;
  String status;
  Buku(this.idBuku, this.judul, this.penulis, this.tahunTerbit) : status = "Tersedia";

  void ubahStatus(String statusBaru) {
    status = statusBaru;
  }

  @override
  String toString() {
    return "$judul oleh $penulis ($tahunTerbit) - $status";
  }
}

class Anggota {
  int idAnggota;
  String nama;
  String alamat;
  List<Buku> riwayatPeminjaman = [];

  Anggota(this.idAnggota, this.nama, this.alamat);

  void tambahRiwayat(Buku buku) {
    riwayatPeminjaman.add(buku);
  }

  @override
  String toString() {
    return "Anggota: $nama, Alamat: $alamat";
  }
}

class Peminjaman {
  Anggota anggota;
  Buku buku;
  String status;

  Peminjaman(this.anggota, this.buku) : status = "Dipinjam" {
    buku.ubahStatus("Dipinjam");
    anggota.tambahRiwayat(buku);
  }

  void kembalikanBuku() {
    status = "Dikembalikan";
    buku.ubahStatus("Tersedia");
  }

  @override
  String toString() {
    return "${anggota.nama} meminjam ${buku.judul} - Status: $status";
  }
}

class Petugas {
  int idPetugas;
  String nama;
  Petugas(this.idPetugas, this.nama);

  void tambahBuku(List<Buku> daftarBuku, Buku buku) {
    daftarBuku.add(buku);
  }

  void hapusBuku(List<Buku> daftarBuku, Buku buku) {
    daftarBuku.remove(buku);
  }

  void daftarBuku(List<Buku> daftarBuku) {
    for (var buku in daftarBuku) {
      print(buku);
    }
  }

  void daftarAnggota(List<Anggota> daftarAnggota) {
    for (var anggota in daftarAnggota) {
      print(anggota);
    }
  }
}

void main() {
  var buku1 = Buku(1, "Dart untuk Pemula", "John Doe", 2020);
  var buku2 = Buku(2, "Mastering OOPon Dart", "Jane Doe", 2021);

  var anggota1 = Anggota(101, "Budi", "Jakarta");
  var petugas1 = Petugas(201, "Joko");

  var daftarBuku = [buku1, buku2];
  var daftarAnggota = [anggota1];

  var peminjaman1 = Peminjaman(anggota1, buku1);
  print(peminjaman1);

  peminjaman1.kembalikanBuku();
  print(peminjaman1);

  petugas1.daftarBuku(daftarBuku);
  petugas1.daftarAnggota(daftarAnggota);
}
