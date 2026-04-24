import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HealthRouteDetailPage extends StatelessWidget {
  final Map<String, String> data;
  const HealthRouteDetailPage({super.key, required this.data});

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
        title: Text(data['name'] ?? '', style: const TextStyle(color: Colors.white)),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              data['image'] ?? '',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, e, s) =>
                  Container(height: 250, color: Colors.grey),
            ),
            // แถบสีชมพูตามสไตล์ในรูป
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.purpleAccent, Colors.pinkAccent],
                ),
              ),
              child: Text(
                data['name'] ?? '',
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name'] ?? '',
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    data['description'] ?? '',
                    style: const TextStyle(fontSize: 16),
                  ),
                  if (data['description_en'] != null && data['description_en']!.isNotEmpty) ...[
                    const SizedBox(height: 15),
                    Text(
                      data['description_en'] ?? '',
                      style: const TextStyle(fontSize: 16, color: Colors.black87),
                    ),
                  ],

                  const SizedBox(height: 20),
                  // ส่วนตัวเล่นเสียง (จำลอง UI ตามภาพ)
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),

                  const SizedBox(height: 20),
                  // ปุ่ม Go Map ด้านล่าง
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4CAF50),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: _launchMap,
                      icon: const Icon(Icons.near_me, color: Colors.white),
                      label: const Text(
                        "Go Map",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
