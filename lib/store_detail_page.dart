import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StoreDetailPage extends StatelessWidget {
  final Map<String, String> data;

  const StoreDetailPage({super.key, required this.data});

  // ฟังก์ชันสำหรับเปิด Google Maps
  Future<void> _launchMap() async {
    final String urlString = data['mapUrl'] ?? '';
    if (urlString.isEmpty) return;

    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('ไม่สามารถเปิดลิงก์ $urlString ได้');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        title: Text(data['name'] ?? 'รายละเอียด'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ส่วนรูปภาพด้านบน
            Image.asset(
              data['image']!,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) => Container(
                height: 250,
                color: Colors.grey[300],
                child: const Icon(Icons.image, size: 100, color: Colors.grey),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data['name']!,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),

                  // ข้อมูลเบอร์โทร
                  _buildInfoRow(Icons.phone, "เบอร์", data['phone']!),
                  const Divider(),

                  // ข้อมูลที่อยู่
                  _buildInfoRow(Icons.location_on, "ที่อยู่", data['address']!),
                  const SizedBox(height: 30),

                  // ปุ่ม Google Maps
                  ElevatedButton.icon(
                    onPressed: _launchMap,
                    icon: const Icon(Icons.map),
                    label: const Text(
                      "MAP Click Here",
                      style: TextStyle(fontSize: 18),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(
                        0xFF4DB6AC,
                      ), // สีฟ้าอมเขียวตามดีไซน์
                      foregroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget ช่วยสร้างแถวข้อมูล
  Widget _buildInfoRow(IconData icon, String title, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: Colors.grey[600]),
          const SizedBox(width: 10),
          Text(
            "$title: ",
            style: TextStyle(color: Colors.grey[600], fontSize: 16),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.right,
            ),
          ),
        ],
      ),
    );
  }
}
