import 'package:flutter/material.dart';

class CommunityExpertsDetailPage extends StatelessWidget {
  final Map<String, String> data;
  const CommunityExpertsDetailPage({super.key, required this.data});

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
              errorBuilder: (context, e, s) => Container(height: 250, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data['name'] ?? '', style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10),
                  
                  if (data.containsKey('phone') && data['phone'] != null && data['phone']!.isNotEmpty) ...[
                    const Text("เบอร์ติดต่อ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text(data['phone'] ?? ''),
                    const SizedBox(height: 20),
                  ],

                  if (data.containsKey('address') && data['address'] != null && data['address']!.isNotEmpty) ...[
                    const Text("ที่อยู่", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text(data['address'] ?? ''),
                    const SizedBox(height: 20),
                  ],

                  Text(data['description'] ?? '', style: const TextStyle(fontSize: 16)),
                  
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