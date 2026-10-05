import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
  final String nama;
  final String nim;
  final String hobi;
  final int skorAktivitas;

  const ProfileCard({
    super.key,
    required this.nama,
    required this.nim,
    required this.hobi,
    required this.skorAktivitas,
  });

  @override
  Widget build(BuildContext context) {
    // Perhitungan NIM: 20240801085
    // Lebar Kartu = 320.0 + (8 * 5) = 360.0
    // Sudut Melengkung = 12.0 + (5 * 1.5) = 19.5
    // Ukuran Logo = 60.0 + (5 * 2) = 70.0
    // Jarak Pemisah = 15.0 + 5 = 20.0
    // Skor Aktivitas = 85 + 50 = 135

    const double lebarKartu = 360.0;
    const double sudutMelengkung = 19.5;
    const double ukuranLogo = 70.0;
    const double jarakPemisah = 20.0;

    return Container(
      width: lebarKartu,
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(sudutMelengkung),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.12),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header Kartu
          Row(
            children: [
              FlutterLogo(
                size: ukuranLogo,
              ),
              const SizedBox(width: jarakPemisah),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'KARTU MAHASISWA',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.teal,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 2.0),
                    Text(
                      'Identitas Resmi',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

          // Pemisah
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            child: Divider(
              thickness: 1.5,
              color: Colors.black12,
            ),
          ),

          // Detail Identitas
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildDetailRow('Nama', nama),
              _buildDetailRow('NIM', nim),
              _buildDetailRow('Hobi', hobi),
              _buildDetailRow('Skor Aktivitas', skorAktivitas.toString()),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 105.0,
            child: Text(
              label,
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.w600,
                color: Colors.black54,
              ),
            ),
          ),
          const Text(
            ': ',
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: FontWeight.w600,
              color: Colors.black54,
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                fontSize: 13.0,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
