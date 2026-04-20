import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HomestayDetailPage extends StatelessWidget {
  final Map<String, String> data;
  const HomestayDetailPage({super.key, required this.data});

  Future<void> _launchMap() async {
    final String urlString = data['mapUrl'] ?? '';
    if (urlString.isEmpty) return;

    final Uri url = Uri.parse(urlString);
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('ไม่สามารถเปิดลิงก์ $urlString ได้');
    }
  }

  Future<void> _launchPhone() async {
    final String phone = data['phone'] ?? '';
    if (phone.isEmpty) return;

    final Uri url = Uri.parse('tel:$phone');
    if (!await launchUrl(url)) {
      throw Exception('ไม่สามารถโทรไปที่เบอร์ $phone ได้');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              data['image']!,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, e, s) => Container(height: 250, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['name']!,
                    style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(data['address']!, style: const TextStyle(color: Colors.grey)),
                  const Divider(height: 30),
                  
                  // แสดงเวลาเปิด-ปิด ตามภาพ
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("จันทร์ - ศุกร์", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                      Row(
                        children: [
                          IconButton(onPressed: _launchPhone, icon: const Icon(Icons.phone_outlined, color: Colors.green)),
                          IconButton(onPressed: () {}, icon: const Icon(Icons.chat_bubble_outline, color: Colors.green)),
                        ],
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.green[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(data['time'] ?? 'เปิด 24 ชั่วโมง', style: const TextStyle(fontSize: 18)),
                  ),
                  const SizedBox(height: 20),
                  
                  // ปุ่มแผนที่
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF5CC496),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _launchMap, 
                      icon: const Icon(Icons.near_me, color: Colors.white),
                      label: const Text("MAP Click Here", style: TextStyle(color: Colors.white, fontSize: 18)),
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
}