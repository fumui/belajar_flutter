import 'package:belajar_flutter/ui/produk_detail.dart';
import 'package:flutter/material.dart';

class ProdukForm extends StatefulWidget {
  const ProdukForm({Key? key}) : super(key: key);

  @override
  _ProdukFormState createState() => _ProdukFormState();
}

class _ProdukFormState extends State<ProdukForm> {
  final _kodeProdukTextboxController = TextEditingController();
  final _namaProdukTextboxController = TextEditingController();
  final _hargaProdukTextboxController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Form Produk'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _textboxKodeProduk(),
            _textboxNamaProduk(),
            _textboxHarga(),
            _buttonSimpan()
          ],
        ),
      ),
    );
  }

  ElevatedButton _buttonSimpan() => ElevatedButton(
      onPressed: () {
        String kodeProduk = _kodeProdukTextboxController.text;
        String namaProduk = _namaProdukTextboxController.text;
        int harga = int.parse(_hargaProdukTextboxController.text);
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProdukDetail(
                  kodeProduk: kodeProduk,
                  namaProduk: namaProduk,
                  harga: harga,
                )));
      },
      child: const Text('Simpan'));

  TextField _textboxHarga() => TextField(
      decoration: const InputDecoration(labelText: "Harga"),
      controller: _kodeProdukTextboxController);

  TextField _textboxNamaProduk() => TextField(
      decoration: InputDecoration(labelText: "Nama Produk"),
      controller: _namaProdukTextboxController);

  TextField _textboxKodeProduk() => TextField(
      decoration: const InputDecoration(labelText: "Kode Produk"),
      controller: _hargaProdukTextboxController);
}
