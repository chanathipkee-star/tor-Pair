import 'package:flutter/material.dart';
import 'homestay_detail_page.dart'; // อย่าลืมสร้างไฟล์นี้ด้วยนะครับ

class HomestayListPage extends StatelessWidget {
  const HomestayListPage({super.key});

  // ข้อมูลจากรูปภาพที่คุณส่งมา
  final List<Map<String, String>> homestayList = const [
    {
      "name": "ขุนยวมรีสอร์ท (Khunyuam Resort)",
      "address": "139 หมู่ 1 บ.ต่อแพ ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/homestay1.png", // เปลี่ยนชื่อไฟล์ตามที่คุณมีในโปรเจกต์
      "time": "08.00 - 19.00 น.",
      "phone": "0819807743",
      "mapUrl": "https://www.google.com/maps/place/%E0%B8%82%E0%B8%B8%E0%B8%99%E0%B8%A2%E0%B8%A7%E0%B8%A1%E0%B8%A3%E0%B8%B5%E0%B8%AA%E0%B8%AD%E0%B8%A3%E0%B9%8C%E0%B8%97+(Khunyuam+Resort)/@18.8053396,97.9052052,16z/data=!4m13!1m2!2m1!1z4LmC4Lij4LiH4LmB4Lij4Lih!3m9!1s0x30dacff07f6679a9:0x2f148f83c8f77a27!5m2!4m1!1i2!8m2!3d18.8053398!4d97.9105635!15sChLguYLguKPguIfguYHguKPguKGSAQVob3RlbOABAA!16s%2Fg%2F1hc15fnyp?entry=ttu",
    },
    {
      "name": "Fong Camping",
      "address": "63, 2 ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/homestay2.png",
      "time": "เปิด 24 ชั่วโมง",
      "phone": "0843689201",
      "mapUrl": "https://www.google.com/maps/place/Fong+Camping/@18.8088206,97.9054974,20z/data=!4m9!1m2!2m1!1z4LmC4Lij4LiH4LmB4Lij4Lih!3m5!1s0x30dad1493f9151cb:0x37f4f552ab2f7a04!8m2!3d18.8088206!4d97.9059576!16s%2Fg%2F11vkq_m0tg?entry=ttu",
    },
    {
      "name": "Fong Homestay",
      "address": "143 Moo 1, Mae Ngao, Khun Yuam Ban Khun Yuam 58140",
      "image": "assets/homestay3.png",
      "time": "เปิด 24 ชั่วโมง",
      "phone": "0843689201",
      "mapUrl" :"https://www.google.com/maps/place/Fong+Homestay/@18.8070214,97.9024318,18z/data=!4m13!1m2!2m1!1z4LmC4Lij4LiH4LmB4Lij4Lih!3m9!1s0x30dad1c7f11ae159:0xb9c6ac268df7a3b!5m2!4m1!1i2!8m2!3d18.807023!4d97.9046745!15sChLguYLguKPguIfguYHguKPguKGSAQVob3RlbOABAA!16s%2Fg%2F11dfgszj5n?entry=ttu"
    },
    {
      "name": "หลิวโฮมสเตย์ (Leiw Homestay)",
      "address": "RW44+944 ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/homestay4.png",
      "time": "เปิด 24 ชั่วโมง",
      "phone": "0861876371",
      "mapUrl" : "https://www.google.com/maps/place/%E0%B8%AB%E0%B8%A5%E0%B8%B4%E0%B8%A7%E0%B9%82%E0%B8%AE%E0%B8%A1%E0%B8%AA%E0%B9%80%E0%B8%95%E0%B8%A2%E0%B9%8C+(Leiw+Homestay)/@18.8062241,97.9034779,18z/data=!4m9!1m2!2m1!1z4LmC4Lij4LiH4LmB4Lij4Lih!3m5!1s0x30dad12492deece3:0x54ec198228c75dd9!8m2!3d18.8058973!4d97.9053233!16s%2Fg%2F11p06yvgtk?entry=ttu"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        title: const Text("โฮมสเตย์", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ส่วนหัวที่เป็นรูปแผนที่
          Container(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/homestay_map.png", // รูปแผนที่โฮมสเตย์ของคุณ
                fit: BoxFit.cover,
                errorBuilder: (context, e, s) => Container(height: 150, color: Colors.green[100], child: const Icon(Icons.map)),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ตื่นนอน วิวงามแต๊ว่า", // หัวข้อตามรูป
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: homestayList.length,
              itemBuilder: (context, index) {
                final item = homestayList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomestayDetailPage(data: item),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                            child: Image.asset(
                              item['image']!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, e, s) => Container(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['name']!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}