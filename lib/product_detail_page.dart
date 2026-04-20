import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  final Map<String, String> data;
  const ProductDetailPage({super.key, required this.data});

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
            // 1. รูปภาพสินค้า
            Image.asset(
              data['image']!,
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
            ),

            // 2. แถบชื่อสินค้า (Gradient สีฟ้า)
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 12),
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [Color(0xFF42A5F5), Color(0xFF1976D2)], // ฟ้าไปน้ำเงิน
                ),
              ),
              child: Text(
                data['name']!,
                textAlign: TextAlign.center,
                style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("ราคาโดยประมาณ", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                  Text(data['price']!, style: const TextStyle(fontSize: 20, color: Colors.green, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20),
                  
                  const Text("รายละเอียดสินค้า", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 5),
                  Text(
                    data['description']!, 
                    style: const TextStyle(fontSize: 16, height: 1.5),
                  ),
                  
                  const SizedBox(height: 40),

                  // 3. ปุ่มสั่งซื้อหรือติดต่อ (พร้อม Bottom Sheet แบบเลื่อนได้)
                  SizedBox(
                    width: double.infinity,
                    height: 55,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          backgroundColor: Colors.transparent,
                          builder: (context) {
                            return DraggableScrollableSheet(
                              initialChildSize: 0.5,
                              minChildSize: 0.25,
                              maxChildSize: 0.9,
                              builder: (context, scrollController) {
                                return Container(
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                                  ),
                                  child: Column(
                                    children: [
                                      // แถบจับลาก
                                      Container(
                                        margin: const EdgeInsets.only(top: 10, bottom: 10),
                                        width: 40,
                                        height: 5,
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                      ),
                                      // เนื้อหาที่เลื่อนได้
                                      Expanded(
                                        child: ListView(
                                          controller: scrollController,
                                          padding: const EdgeInsets.all(20),
                                          children: const [
                                            Text(
                                              "ช่องทางการสั่งซื้อ",
                                              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(height: 20),
                                            // สามารถเพิ่มข้อมูลร้านค้า หรือปุ่มโทรได้ที่นี่
                                            Center(child: Text("ข้อมูลการติดต่อร้านค้าจะแสดงที่นี่")),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                        );
                      },
                      icon: const Icon(Icons.shopping_cart_outlined, color: Colors.white),
                      label: const Text("สั่งซื้อ / ติดต่อร้านค้า", style: TextStyle(fontSize: 18, color: Colors.white)),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF4CAF50),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
}
