
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Grid 2x2',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Grid 2x2'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakIcon(
                    warna: Colors.blue,
                    teks: 'Biru',
                  ),
                  SizedBox(width: 20),
                  KotakIcon(
                    warna: Colors.green,
                    teks: 'Hijau',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  KotakIcon(
                    warna: Colors.orange,
                    teks: 'Oranye',
                  ),
                  SizedBox(width: 20),
                  KotakIcon(
                    warna: Colors.purple,
                    teks: 'Ungu',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class KotakIcon extends StatelessWidget {
  final Color warna;
  final String teks;

  const KotakIcon({
    super.key,
    required this.warna,
    required this.teks,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 130,
      height: 130,
      decoration: BoxDecoration(
        color: warna,
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.favorite,
            color: Colors.red,
            size: 40,
          ),
          SizedBox(height: 10),
          Text(
            teks,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
