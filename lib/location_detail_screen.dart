import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationDetailScreen extends StatelessWidget {
  final String title;
  final String imagePath;
  final String description;
  final String? historyEng;
  final String? features;
  final String? role;
  final String? mystery;
  final String? mapUrl;

  const LocationDetailScreen({
    super.key, 
    required this.title, 
    required this.imagePath,
    required this.description,
    this.historyEng,
    this.features,
    this.role,
    this.mystery,
    this.mapUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: const Color(0xFFC00000),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // รูปใหญ่ด้านบน
            Image.asset(
              imagePath,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
              errorBuilder: (context, e, s) => Container(
                height: 250,
                width: double.infinity,
                color: Colors.grey[200],
                child: const Icon(Icons.image, size: 50, color: Colors.grey),
              ),
            ),
            
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(fontSize: 26, fontWeight: FontWeight.bold, color: Color(0xFFC00000)),
                  ),
                  const Divider(height: 30),

                  // ส่วนประวัติ (ไทย)
                  _buildSection("ประวัติและความเป็นมา (History)", description),
                  
                  // ส่วนประวัติ (English)
                  if (historyEng != null && historyEng!.isNotEmpty)
                    _buildSection("History (English)", historyEng!),

                  // ส่วนลักษณะเด่น
                  if (features != null && features!.isNotEmpty && features != "-")
                    _buildSection("ลักษณะเด่น (Features)", features!),

                  // ส่วนบทบาทในสงคราม
                  if (role != null && role!.isNotEmpty && role != "-")
                    _buildSection("บทบาทในสงครามโลกครั้งที่ 2 (Role in WWII)", role!),

                  // ส่วนเรื่องลี้ลับ
                  if (mystery != null && mystery!.isNotEmpty && mystery != "-")
                    _buildSection("เรื่องลี้ลับ (Mystery/Legends)", mystery!),

                  const SizedBox(height: 30),
                  
                  // ปุ่มแผนที่
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFC00000),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: () async {
                        if (mapUrl != null && mapUrl!.isNotEmpty) {
                          final uri = Uri.parse(mapUrl!);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri, mode: LaunchMode.externalApplication);
                          }
                        }
                      },
                      icon: const Icon(Icons.map, color: Colors.white),
                      label: const Text("เปิดแผนที่การเดินทาง", style: TextStyle(color: Colors.white, fontSize: 18)),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String content) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        const SizedBox(height: 8),
        Text(
          content,
          style: const TextStyle(fontSize: 16, height: 1.6, color: Colors.black54),
        ),
        const SizedBox(height: 25),
      ],
    );
  }
}