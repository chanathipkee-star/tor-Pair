import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String title;
  final String imagePath;
  final String thDescription;
  final String enDescription;
  final List<String> activities; // เพิ่มบรรทัดนี้

  const DetailPage({
    super.key,
    required this.title,
    required this.imagePath,
    required this.thDescription,
    required this.enDescription,
    required this.activities, // เพิ่มบรรทัดนี้
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: const TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        // ใช้ SingleChildScrollView แทน ListView เพื่อการจัดวางที่คุมง่ายกว่า
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 76, 175, 80),
                    ),
                  ),
                  const Divider(height: 30),
                  const Text(
                    "รายละเอียดสถานที่:",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    thDescription,
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    enDescription,
                    style: const TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.blueGrey,
                    ),
                  ),
                  const SizedBox(height: 20),

                  // แสดงรายการกิจกรรมถ้ามี
                  if (activities.isNotEmpty) ...[
                    const Text(
                      "กิจกรรมที่น่าสนใจ:",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(
                          255,
                          76,
                          175,
                          80,
                        ), // เปลี่ยนสีให้สะดุดตา
                      ),
                    ),
                    const SizedBox(height: 10),
                    ...activities.map(
                      (activity) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("✨ ", style: TextStyle(fontSize: 16)),
                            Expanded(
                              child: Text(
                                activity,
                                style: const TextStyle(fontSize: 16),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                  ],

                  const Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.red),
                      SizedBox(width: 8),
                      Text("📍 พิกัด: หมู่บ้านต่อแพ จ.แม่ฮ่องสอน"),
                    ],
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
