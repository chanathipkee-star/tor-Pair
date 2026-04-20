import 'package:flutter/material.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  final List<Map<String, String>> productList = const [
    {
      "name": "สบู่สมุนไพรบ้านต่อแพ",
      "image": "assets/product1.png",
      "price": "35 บาท(Baht)",
      "description": "สบู่สมุนไพรสูตรธรรมชาติจากชุมชนบ้านต่อแพ ช่วยบำรุงผิวพรรณให้สะอาดสดชื่น"
    },
    {
      "name": "หมวกสานใหญ่",
      "image": "assets/product2.png",
      "price": "400 บาท(Baht)",
      "description": "หมวกสานขนาดใหญ่ งานฝีมือประณีตจากไม้ไผ่และวัสดุธรรมชาติ ทนทาน กันแดดได้ดี"
    },
    {
      "name": "ยาดมสมุนไพร",
      "image": "assets/product3.png",
      "price": "70 บาท(Baht)",
      "description": "ยาดมสมุนไพรกลิ่นหอมชื่นใจ ช่วยบรรเทาอาการวิงเวียนศีรษะ"
    },
    {
      "name": "ไม้กวาดทางมะพร้าว",
      "image": "assets/product4.png",
      "price": "120 บาท(Baht)",
      "description": "ไม้กวาดทำมือ แข็งแรงทนทาน ใช้งานได้นาน"
    },
    {
      "name": "โคมไฟต้องลาย",
      "image": "assets/product5.png",
      "price": "1000 บาท(Baht)",
      "description": "โคมไฟศิลปะการต้องลายแบบดั้งเดิมของไทใหญ่ เหมาะสำหรับตกแต่งบ้านให้สวยงาม"
    },
    {
      "name": "ตะกร้าสาน",
      "image": "assets/product6.png",
      "price": "350 บาท(Baht)",
      "description": "ตะกร้าสานจากไม้ไผ่ ทรงสวยงาม เหมาะสำหรับใส่ของอเนกประสงค์"
    },
    {
      "name": "ตะกร้าใส่ของ",
      "image": "assets/product7.png",
      "price": "250 บาท(Baht)",
      "description": "ตะกร้าสานขนาดกลาง น้ำหนักเบา ใช้งานสะดวก"
    },
    {
      "name": "กระเป๋าผ้าพื้นเมือง",
      "image": "assets/product8.png",
      "price": "200 บาท(Baht)",
      "description": "กระเป๋าผ้าลวดลายพื้นเมืองไทใหญ่ ตัดเย็บสวยงาม"
    },
    {
      "name": "หมวกสานกลาง",
      "image": "assets/product9.png",
      "price": "300 บาท(Baht)",
      "description": "หมวกสานขนาดกลาง สวมใส่สบาย ระบายอากาศได้ดี"
    },
    {
      "name": "หมวกสานเล็ก",
      "image": "assets/product10.png",
      "price": "200 บาท(Baht)",
      "description": "หมวกสานขนาดเล็ก เหมาะสำหรับเด็กหรือใส่ประดับ"
    },
    {
      "name": "ตะกร้าสานใส่ของ",
      "image": "assets/product11.png",
      "price": "100 บาท(Baht)",
      "description": "ตะกร้าสานขนาดเล็กสำหรับใส่ของจุกจิก"
    },
    {
      "name": "ชุดไตชาย",
      "image": "assets/product12.png",
      "price": "1800 บาท(Baht)",
      "description": "ชุดประจำชาติไทใหญ่สำหรับผู้ชาย ตัดเย็บด้วยผ้าเนื้อดี ประณีตทุกจุด"
    },
    {
      "name": "กระด้ง",
      "image": "assets/product13.png",
      "price": "120 บาท(Baht)",
      "description": "กระด้งสานจากไม้ไผ่ สำหรับตากแห้งหรือฝัดข้าว"
    },
    {
      "name": "ต้นกล้าอโวคาโด สายพันธุ์อเมริกาหลีด",
      "image": "assets/product14.png",
      "price": "100 บาท(Baht)",
      "description": "ต้นกล้าอโวคาโดสายพันธุ์ดี เจริญเติบโตง่าย ให้ผลผลิตคุณภาพ"
    },
    {
      "name": "ถาดใส่ผลไม้",
      "image": "assets/product15.png",
      "price": "250 บาท(Baht)",
      "description": "ถาดสานสำหรับใส่ผลไม้หรือของไหว้ สวยงามตามสไตล์พื้นเมือง"
    },
    {
      "name": "หมวกไตใหญ่ฝั่งพม่า",
      "image": "assets/product16.png",
      "price": "169 บาท(Baht)",
      "description": "หมวกไตใหญ่ทรงดั้งเดิมแบบฝั่งพม่า เป็นเอกลักษณ์เฉพาะตัว"
    },
    {
      "name": "กระติ๊บใส่ของ",
      "image": "assets/product17.png",
      "price": "169 บาท(Baht)",
      "description": "กระติ๊บสานสำหรับใส่ของขนาดกะทัดรัด"
    },
    {
      "name": "ก๋วย ใส่ผัก",
      "image": "assets/product18.png",
      "price": "200 บาท(Baht)",
      "description": "ภาชนะจักสานสำหรับใส่ผักหรือผลไม้เวลาไปไร่ไปนา"
    },
    {
      "name": "ไก่ พันธุ์แม่ฮ่องสอน",
      "image": "assets/product19.png",
      "price": "กิโลละ 130 บาท(Baht)",
      "description": "ไก่พันธุ์พื้นเมืองแม่ฮ่องสอน เนื้อแน่น รสชาติดี เลี้ยงแบบธรรมชาติ"
    },
    {
      "name": "เม็ดดอกอัญชัน",
      "image": "assets/product20.png",
      "price": "กรัมละ 10 บาท(Baht)",
      "description": "เม็ดดอกอัญชันแห้ง สำหรับทำเครื่องดื่มหรือสกัดสีผสมอาหารธรรมชาติ"
    },
    {
      "name": "อโวคาโด สายพันธุ์อเมริกาหลีด",
      "image": "assets/product21.png",
      "price": "กิโลละ 50 บาท(Baht)",
      "description": "ผลอโวคาโดสดจากสวน เนื้อเข้มข้น มัน อร่อย มีประโยชน์ต่อสุขภาพ"
    },
    {
      "name": "Bricks Toy Legends of khunyuam",
      "image": "assets/product22.png",
      "price": "199 บาท(Baht)",
      "description": "ของเล่นตัวต่อเรื่องเล่าตำนานเมืองขุนยวม เสริมสร้างจินตนาการและเรียนรู้ประวัติศาสตร์"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        title: const Text("สินค้าชุมชน", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 1. ส่วน Banner ด้านบน
          Container(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                "assets/product_banner.png",
                fit: BoxFit.cover,
                errorBuilder: (context, e, s) => Container(
                  height: 180, 
                  color: Colors.blue[50], 
                  child: const Icon(Icons.shopping_bag_outlined, size: 50, color: Colors.blue)
                ),
              ),
            ),
          ),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "สินค้าแนะนำ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          // 2. ส่วนรายการสินค้า
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(10),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final item = productList[index];
                return Card(
                  margin: const EdgeInsets.only(bottom: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                  elevation: 2,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        item['image']!, 
                        width: 70, 
                        height: 70, 
                        fit: BoxFit.cover,
                        errorBuilder: (context, e, s) => Container(width: 70, color: Colors.grey[200]),
                      ),
                    ),
                    title: Text(
                      item['name']!, 
                      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)
                    ),
                    subtitle: Text(item['price'] ?? "ติดต่อสอบถามราคา"),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.green),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailPage(data: item)
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
