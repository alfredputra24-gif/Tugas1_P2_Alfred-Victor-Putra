import 'package:flutter/material.dart';

class StatelessPage extends StatelessWidget {
  const StatelessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tugas 1: Stateless Widget'),
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profil (CircleAvatar, Nama, Row Kontak)
            const Center(
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage(
                      'https://picsum.photos/200',
                    ),
                  ),
                  SizedBox(height: 12),
                  Text(
                    'Alfred Victor Putra',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ContactIcon(icon: Icons.email, color: Colors.red),
                      ContactIcon(icon: Icons.phone, color: Colors.green),
                      ContactIcon(icon: Icons.language, color: Colors.blue),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(height: 40, thickness: 2),

            // Daftar 3 Kartu Mahasiswa
            const Text(
              'Daftar Kartu Mahasiswa',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const KartuMahasiswa(
              nama: 'Ivan sayfuddin',
              nim: '3012410028',
              prodi: 'Informatika',
            ),
            const KartuMahasiswa(
              nama: 'Naufal Maulana',
              nim: '3012410010',
              prodi: 'Informatika',
            ),
            const KartuMahasiswa(
              nama: 'Yuan Desfuno Emanuel',
              nim: '3012410026',
              prodi: 'Informatika',
            ),
          ],
        ),
      ),
    );
  }
}

class KartuMahasiswa extends StatelessWidget {
  final String nama;
  final String nim;
  final String prodi;

  const KartuMahasiswa({
    super.key,
    required this.nama,
    required this.nim,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              nama,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            Text('NIM: $nim'),
            Text('Prodi: $prodi'),
          ],
        ),
      ),
    );
  }
}

class ContactIcon extends StatelessWidget {
  final IconData icon;
  final Color color;

  const ContactIcon({
    super.key,
    required this.icon,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        shape: BoxShape.circle,
        border: Border.all(color: color, width: 1.5),
      ),
      child: Icon(icon, color: color, size: 24),
    );
  }
}