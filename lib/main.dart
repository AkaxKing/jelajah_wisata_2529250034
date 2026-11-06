

import 'package:flutter/material.dart';

void main() {
  runApp(const StoneGardenApp());
}

class StoneGardenApp extends StatelessWidget {
  const StoneGardenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoneGardenPage(),
    );
  }
}

class StoneGardenPage extends StatelessWidget {
  const StoneGardenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // FOTO STONE GARDEN
            Image.network(
              'https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?w=1200',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  width: double.infinity,
                  height: 240,
                  color: Colors.grey.shade300,
                  child: const Icon(
                    Icons.landscape,
                    size: 80,
                    color: Colors.white,
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            // LOKASI
            const Center(
              child: Text(
                'Padalarang - Bandung',
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.black54,
                ),
              ),
            ),

            const SizedBox(height: 5),

            // JUDUL
            const Center(
              child: Text(
                'STONE GARDEN',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  color: Colors.black,
                ),
              ),
            ),

            const SizedBox(height: 12),

            const Divider(
              thickness: 1,
              indent: 25,
              endIndent: 25,
            ),

            const SizedBox(height: 12),

            // DESKRIPSI
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'Stone Garden atau Taman Batu di Padalarang - '
                'Bandung ini adalah nama secara harafiah untuk '
                'apa yang akan kita lihat jika berada di sana. '
                'Hamparan batu yang artistik membuat kita merasa '
                'tidak sedang berada di Bandung, apalagi di '
                'Padalarang. Hamparan batu yang dimaksud bukan '
                'terhampar begitu saja di atas tanah luas yang '
                'menjadi permukaannya. Batu-batu besar yang '
                'ukurannya pasti bervariasi tersusun seperti '
                'memiliki suatu formasi matematis.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 14,
                  height: 1.45,
                  color: Colors.black87,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // INFORMASI WISATA
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  InfoRow(
                    icon: Icons.star,
                    color: Colors.orange,
                    text: '4.5',
                  ),

                  SizedBox(height: 12),

                  InfoRow(
                    icon: Icons.access_time,
                    color: Colors.teal,
                    text: '06:00 - 17:00',
                  ),

                  SizedBox(height: 12),

                  InfoRow(
                    icon: Icons.monetization_on,
                    color: Colors.teal,
                    text: 'Rp30.000',
                  ),

                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}

// WIDGET INFORMASI
class InfoRow extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const InfoRow({
    super.key,
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: color,
          size: 20,
        ),
        const SizedBox(width: 12),
        Text(
          text,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
