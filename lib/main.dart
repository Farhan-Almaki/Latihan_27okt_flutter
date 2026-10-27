import 'package:flutter/material.dart';

void main (){
  runApp(const MaterialApp(
    home: MyPages1(),
  ));
}

class MyPages1 extends StatelessWidget {
  const MyPages1({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '1 & 2. Aturan Constraints (Batas) dan Size (Ukuran)',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Induk memaksa anak berada di batas 100x100 hingga 200x200. Anak meminta ukuran 500x50, tapi dipaksa mengikuti batas induk (mentok di lebar 200, tinggi 100).',
            ),
            const SizedBox(height: 10),
            ConstrainedBox(
              constraints: const BoxConstraints(
                minWidth: 120,
                maxWidth: 220,
                minHeight: 120,
                maxHeight: 220,
              ),
              child: Container(
                width: 450,
                height: 60,
                color: Colors.teal,
                child: const Text(
                  'Saya minta 450x60, tapi dapatnya 220x120',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}