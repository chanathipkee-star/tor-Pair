import 'package:flutter/material.dart';
import 'community_experts_detail_page.dart';

class CommunityExpertsListPage extends StatelessWidget {
  const CommunityExpertsListPage({super.key});

  final List<Map<String, String>> expertList = const [
    {
      "name": "นาย ไชยเดช ",
      "image": "assets/images/chaidet.jpg", // เปลี่ยนชื่อให้ตรงกับ assets ของคุณ
      "description":
          "เป็นผู้นำเที่ยว สามารถ ติดต่อ ห้องพักห้องนอน หรือร้านอาหาร มีการนำเที่ยว ติดต่อรถ atv ได้ช่วงเดือน พฤษจิกายน ช่วงหน้าหนาววันละ 600 บาท ขับเองได้หรือให้ไกด์ขับก็ได้ ต้องติดต่อก่อนเพื่อเช็คสภาพรถ รถมีจำนวน 13 คัน",
      "phone": "081 980 7743",
    },
    {
      "name": "ลุงคิด",
      "image": "assets/images/lung_kid.jpg",
      "description":
          "เป็นผู้สอนเกี่ยวกับการต้องลาย หน้าพิพิธภัณฑ์ และสามารถสอบถามความรู้ต่างๆทางหมู่บ้านและเรื่องราวทางประวัติศาสตร์",
      "phone": "ไม่ปรากฏ",
    },
    {
      "name": "นาย ละอ่อง เก็ดสราพร",
      "image": "assets/images/lung_laong.jpg",
      "description":
          "เป็นผูู้เชี่ยวชาญเกี่ยวกับการ จักสานหมวก เป็นผู้ที่เคยใช้ชีวิตร่วมกับคนญี่ปุ่นในสมัยก่อนเคยใช้ชีวิตร่วมกับทหารญี่ปุ่น",
      "phone": "ไม่ปรากฏ",
    },
    {
      "name": "ท่านพระครู อนุกูลกัลยาณพจน์",
      "image": "assets/images/phrakru.jpg",
      "description":
          "เป็นผู้ดูแลวัด และให้ความรู้เกี่ยวกับประวัติศาสตร์ของต่อแพ",
      "phone": "089 264 9270",
    },
    {
      "name": "นาย จรุณ จันทรตะกอง",
      "image": "assets/images/lung_charoon.jpg",
      "description":
          "ผู้ดูแลสวนเกษตรในหมู่บ้านต่อแพ เพราะปลูกและส่งขายทั้งในและนอกประเทศ",
      "phone": "081 746 0133",
    },
    {
      "name": "นาง สุพรรณี เขตสูงเนิน",
      "image": "assets/images/suphannee.jpg",
      "description": "เป็นร้าน คาเฟ่ มีสินค้าในชุมชนขาย",
      "phone": "082 998 3787",
    },
    {
      "name": "นายสุพรรณ ประภัยวทย์",
      "image": "assets/images/suphan.jpg",
      "description": "ผูู้ช่วยผู้ใหญ่บ้านเป็นผู้นำเที่ยว ทางสงครามโลกครั้งที่2",
      "phone": "082 998 3787",
    },
    // เพิ่มรายการอื่นๆ ตามรูปภาพ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        title: const Text(
          "ผู้เชี่ยวชาญ",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // รูปแผนที่ด้านบน
          Image.asset(
            "assets/images/experts_banner.jpg",
            fit: BoxFit.cover,
            errorBuilder: (context, e, s) => Container(
              height: 200,
              color: Colors.green[100],
              child: const Icon(Icons.map_outlined),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(15),
              itemCount: expertList.length,
              itemBuilder: (context, index) {
                final item = expertList[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item['image'] ?? '',
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                        errorBuilder: (context, e, s) =>
                            Container(width: 60, height: 60, color: Colors.grey[300]),
                      ),
                    ),
                    title: Text(
                      item['name'] ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              CommunityExpertsDetailPage(data: item),
                        ),
                      );
                    },
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
