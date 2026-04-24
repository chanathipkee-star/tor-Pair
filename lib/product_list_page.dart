import 'package:flutter/material.dart';
import 'product_detail_page.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  final List<Map<String, String>> productList = const [
    {
      "name": "สบู่สมุนไพรบ้านต่อแพ",
      "image": "assets/images/soap.jpg",
      "price": "35 บาท(Baht)",
      "description": "สบู่สมุนไพรสูตรธรรมชาติจากชุมชนบ้านต่อแพ ช่วยบำรุงผิวพรรณให้สะอาดสดชื่น"
    },
    {
      "name": "หมวกสานใหญ่",
      "image": "assets/images/hat_large.jpg",
      "price": "400 บาท(Baht)",
      "description": "หมวกสานขนาดใหญ่ งานฝีมือประณีตจากไม้ไผ่และวัสดุธรรมชาติ ทนทาน กันแดดได้ดี"
    },
    {
      "name": "ยาดมสมุนไพร",
      "image": "assets/images/herbal.jpg",
      "price": "70 บาท(Baht)",
      "description": "ยาดมสมุนไพรกลิ่นหอมชื่นใจ ช่วยบรรเทาอาการวิงเวียนศีรษะ"
    },
    {
      "name": "ไม้กวาดทางมะพร้าว",
      "image": "assets/images/broom.jpg",
      "price": "120 บาท(Baht)",
      "description": "ไม้กวาดทำมือ แข็งแรงทนทาน ใช้งานได้นาน"
    },
    {
      "name": "โคมไฟต้องลาย",
      "image": "assets/images/lantern.jpg",
      "price": "1000 บาท(Baht)",
      "description": "โคมไฟศิลปะการต้องลายแบบดั้งเดิมของไทใหญ่ เหมาะสำหรับตกแต่งบ้านให้สวยงาม"
    },
    {
      "name": "ตะกร้าสาน",
      "image": "assets/images/basket_woven.jpg",
      "price": "350 บาท(Baht)",
      "description": "ตะกร้าสานจากไม้ไผ่ ทรงสวยงาม เหมาะสำหรับใส่ของอเนกประสงค์"
    },
    {
      "name": "ตะกร้าใส่ของ",
      "image": "assets/images/basket_tall.jpg",
      "price": "250 บาท(Baht)",
      "description": "ตะกร้าสานขนาดกลาง น้ำหนักเบา ใช้งานสะดวก"
    },
    {
      "name": "กระเป๋าผ้าพื้นเมือง",
      "image": "assets/images/bag.jpg",
      "price": "200 บาท(Baht)",
      "description": "กระเป๋าผ้าลวดลายพื้นเมืองไทใหญ่ ตัดเย็บสวยงาม"
    },
    {
      "name": "หมวกสานกลาง",
      "image": "assets/images/hat_medium.jpg",
      "price": "300 บาท(Baht)",
      "description": "หมวกสานขนาดกลาง สวมใส่สบาย ระบายอากาศได้ดี"
    },
    {
      "name": "หมวกสานเล็ก",
      "image": "assets/images/hat_small.jpg",
      "price": "200 บาท(Baht)",
      "description": "หมวกสานขนาดเล็ก เหมาะสำหรับเด็กหรือใส่ประดับ"
    },
    {
      "name": "ตะกร้าสานใส่ของ",
      "image": "assets/images/basket_small.jpg",
      "price": "100 บาท(Baht)",
      "description": "ตะกร้าสานขนาดเล็กสำหรับใส่ของจุกจิก"
    },
    {
      "name": "ชุดไตชาย",
      "image": "assets/images/costume.jpg",
      "price": "1800 บาท(Baht)",
      "description": "ชุดประจำชาติไทใหญ่สำหรับผู้ชาย ตัดเย็บด้วยผ้าเนื้อดี ประณีตทุกจุด"
    },
    {
      "name": "กระด้ง",
      "image": "assets/images/sieve.jpg",
      "price": "120 บาท(Baht)",
      "description": "กระด้งสานจากไม้ไผ่ สำหรับตากแห้งหรือฝัดข้าว"
    },
    {
      "name": "ต้นกล้าอโวคาโด สายพันธุ์อเมริกาหลีด",
      "image": "assets/images/avocado_sapling.jpg",
      "price": "100 บาท(Baht)",
      "description": "ต้นกล้าอโวคาโดสายพันธุ์ดี เจริญเติบโตง่าย ให้ผลผลิตคุณภาพ"
    },
    {
      "name": "ถาดใส่ผลไม้",
      "image": "assets/images/tray.jpg",
      "price": "250 บาท(Baht)",
      "description": "ถาดสานสำหรับใส่ผลไม้หรือของไหว้ สวยงามตามสไตล์พื้นเมือง"
    },
    {
      "name": "หมวกไตใหญ่ฝั่งพม่า",
      "image": "assets/images/hats.jpg",
      "price": "169 บาท(Baht)",
      "description": "หมวกไตใหญ่ทรงดั้งเดิมแบบฝั่งพม่า เป็นเอกลักษณ์เฉพาะตัว"
    },
    {
      "name": "กระติ๊บใส่ของ",
      "image": "assets/images/basket_small_pouch.jpg",
      "price": "169 บาท(Baht)",
      "description": "กระติ๊บสานสำหรับใส่ของขนาดกะทัดรัด"
    },
    {
      "name": "ก๋วย ใส่ผัก",
      "image": "assets/images/basket_khuay.jpg",
      "price": "200 บาท(Baht)",
      "description": "ภาชนะจักสานสำหรับใส่ผักหรือผลไม้เวลาไปไร่ไปนา"
    },
    {
      "name": "ไก่ พันธุ์แม่ฮ่องสอน",
      "image": "assets/images/chickens.jpg",
      "price": "กิโลละ 130 บาท(Baht)",
      "description": "ไก่พันธุ์พื้นเมืองแม่ฮ่องสอน เนื้อแน่น รสชาติดี เลี้ยงแบบธรรมชาติ"
    },
    {
      "name": "เม็ดดอกอัญชัน",
      "image": "assets/images/seeds.jpg",
      "price": "กรัมละ 10 บาท(Baht)",
      "description": "เม็ดดอกอัญชันแห้ง สำหรับทำเครื่องดื่มหรือสกัดสีผสมอาหารธรรมชาติ"
    },
    {
      "name": "อโวคาโด สายพันธุ์อเมริกาหลีด",
      "image": "assets/images/avocado_fruit.jpg",
      "price": "กิโลละ 50 บาท(Baht)",
      "description": "ผลอโวคาโดสดจากสวน เนื้อเข้มข้น มัน อร่อย มีประโยชน์ต่อสุขภาพ"
    },
    {
      "name": "Bricks Toy Legends of khunyuam",
      "image": "assets/images/toy_bricks.jpg",
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
                "assets/images/otop_banner.jpg",
                fit: BoxFit.fill,
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

          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: productList.length,
              itemBuilder: (context, index) {
                final item = productList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductDetailPage(data: item),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                    elevation: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                            child: Image.asset(
                              item['image'] ?? '',
                              width: double.infinity,
                              fit: BoxFit.fill,
                              errorBuilder: (context, e, s) => Container(
                                color: Colors.grey[200],
                                child: const Icon(Icons.image_not_supported),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                item['name'] ?? '',
                                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                item['price'] ?? '',
                                style: const TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
                              ),
                            ],
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
