import 'package:flutter/material.dart';

class Cartprovider extends ChangeNotifier {
  var ListKeranjang = [];
  var ListPurLog = [];
  void masukkanKeranjang(nama, gambar, toko, harga, ukuran) {
    var temp = {
      "Nama": nama,
      "Gambar": gambar,
      "Toko": toko,
      "Harga": harga,
      "Ukuran": ukuran,
      "Jumlah": 0,
      "Total": 0,
    };

    ListKeranjang.add(temp);
    ListPurLog.add(temp);
    print(ListKeranjang);
  }

  void hapusKeranjang() {
    ListKeranjang.removeRange(0, ListKeranjang.length);
  }
}
