import 'package:flutter/material.dart';
import 'store_detail_page.dart';

class StoreListPage extends StatelessWidget {
  const StoreListPage({super.key});

  // ข้อมูลจำลองของร้านอาหาร
  final List<Map<String, String>> restaurantList = const [
    {
      "name": "Tor Pae Cafe @ขุนยวม",
      "address": "บ้านต่อแพ ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "0829983787",
      "image": "assets/images/torpair_counter.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/Tor+Pae+Cafe+@%E0%B8%82%E0%B8%B8%E0%B8%99%E0%B8%A2%E0%B8%A7%E0%B8%A1/@18.8072818,97.9084945,1029m/data=!3m1!1e3!4m9!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4Lit4Liy4Lir4Liy4Lij!3m5!1s0x30dad1c814533433:0xa62b96fbe5562527!8m2!3d18.8082263!4d97.9122472!16s%2Fg%2F11l36h79v0?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
    },
    {
      "name": "ร้านอาหารลานระเบียง",
      "address": "บ้านต่อแพ 223 ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "0943654924",
      "image": "assets/images/torpair_dining.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%A5%E0%B8%B2%E0%B8%99%E0%B8%A3%E0%B8%B0%E0%B9%80%E0%B8%9A%E0%B8%B5%E0%B8%A2%E0%B8%87/@18.8022394,97.8991544,257m/data=!3m1!1e3!4m10!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4Lit4Liy4Lir4Liy4Lij!3m6!1s0x30dad1f01453dcff:0xeda41f78ff2987c!8m2!3d18.8022394!4d97.9001017!15sChvguKPguYnguLLguJnguK3guLLguKvguLLguKNaHiIc4Lij4LmJ4Liy4LiZIOC4reC4suC4q-C4suC4o5IBCnJlc3RhdXJhbnTgAQA!16s%2Fg%2F11rvk09k4q?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
    },
    {
      "name": "อาหารตามสั่ง-ข้าวซอย-ข้าวมันไก่-ข้าวขาหมู",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/torpair_front.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B1%E0%B9%88%E0%B8%87-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%8B%E0%B8%AD%E0%B8%A2-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%A1%E0%B8%B1%E0%B8%99%E0%B9%84%E0%B8%81%E0%B9%88-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%82%E0%B8%B2%E0%B8%AB%E0%B8%A1%E0%B8%B9/@18.8043525,97.9024825,257m/data=!3m1!1e3!4m10!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4Lit4Liy4Lir4Liy4Lij!3m6!1s0x30dad100120e8e7f:0x43352db756aa6b02!8m2!3d18.8043523!4d97.9032791!15sChvguKPguYnguLLguJnguK3guLLguKvguLLguKNaHiIc4Lij4LmJ4Liy4LiZIOC4reC4suC4q-C4suC4o5IBCnJlc3RhdXJhbnTgAQA!16s%2Fg%2F11vjx4cbvq?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
    },
    {
      "name": "Local restaurant",
      "address": "ถนน ชุมชนวัดต่อแพ ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/torpair_food.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/Local+restaurant/@18.8040282,97.901888,257m/data=!3m1!1e3!4m9!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4Lit4Liy4Lir4Liy4Lij!3m5!1s0x30dad1bd4070bda1:0x298ea956daa1f600!8m2!3d18.8040634!4d97.903044!16s%2Fg%2F11lkcy2ysr?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
    },
    {
      "name": "P&N Cafe",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "0988546310",
      "image": "assets/images/torpair_drink.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/P%26N+Cafe/@18.7999768,97.8978295,19z/data=!4m9!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4Lit4Liy4Lir4Liy4Lij!3m5!1s0x30dad1e8c4c9b30b:0xf8e8bed7e40a5167!8m2!3d18.7999714!4d97.89853!16s%2Fg%2F11rh23z9w7?entry=ttu",
    },
    {
      "name": "ร้านอาหารตามสั่งร้านอาหารตามสั่ง",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/noodle_shop_interior.jpg",
      "mapUrl":
          "https://www.google.co.th/maps/place/%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%9E+%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B8%82%E0%B8%B8%E0%B8%99%E0%B8%A2%E0%B8%A7%E0%B8%A1+%E0%B9%81%E0%B8%A1%E0%B9%88%E0%B8%AE%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%AD%E0%B8%99+58140/@18.8039415,97.9031122,19.5z/data=!4m6!3m5!1s0x30dad1b3e031265f:0x550e4b645493e990!8m2!3d18.8003007!4d97.9102647!16s%2Fg%2F11kpg89jb3?hl=th&entry=ttu",
    },
    {
      "name": "ร้านอาหารตามสั่ง",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/roadside_stall.jpg",
      "mapUrl":
          "google.co.th/maps/@18.8053147,97.9036791,17.25z?hl=th&entry=ttu",
    },
    {
      "name": "ร้านขนม",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/images/grocery_interior.jpg",
      "mapUrl":
          "https://www.google.co.th/maps/@18.8016631,97.9039097,18.25z?hl=th&entry=ttu",
    },
    {
      "name": "ร้านเจณจีรา",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/images/animal_feed_store.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B9%80%E0%B8%88%E0%B8%93%E0%B8%88%E0%B8%B5%E0%B8%A3%E0%B8%B2/@18.8024203,97.8986597,19z/data=!4m10!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4LiE4LmJ4Liy!3m6!1s0x30dad1df94c2c1ef:0xfd49b37db615dee5!8m2!3d18.8024194!4d97.8993295!15sChXguKPguYnguLLguJnguITguYnguLJaGCIW4Lij4LmJ4Liy4LiZIOC4hOC5ieC4spIBDWdyb2Nlcnlfc3RvcmXgAQA!16s%2Fg%2F11l7synb9j?entry=ttu",
    },
    {
      "name": "ร้านมาดามทิพ",
      "address": "บ้านหลวงต่อแพ 164 ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/images/community_store_1.jpg",
      "mapUrl":
          "https://www.google.com/maps/place/%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%A1%E0%B8%B2%E0%B8%94%E0%B8%B2%E0%B8%A1%E0%B8%97%E0%B8%B4%E0%B8%9E/@18.8015297,97.8976788,19z/data=!4m10!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4LiE4LmJ4Liy!3m6!1s0x30dad1003ce33fb5:0x28cc2f0271d2ba48!8m2!3d18.8015328!4d97.8983696!15sChXguKPguYnguLLguJnguITguYnguLKSAQ5kaXNjb3VudF9zdG9yZeABAA!16s%2Fg%2F11vzrn050y?entry=ttu",
    },
    {
      "name": "ร้านขายของชำ Grocery store",
      "address": "ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "image": "assets/images/store_external_2.png",
      "mapUrl":
          "https://www.google.com/maps/place/%E0%B8%A3%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%82%E0%B8%B2%E0%B8%A2%E0%B8%82%E0%B8%AD%E0%B8%87%E0%B8%8A%E0%B8%B3+Grocery+store/@18.8046798,97.9033267,20z/data=!4m10!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4LiE4LmJ4Liy!3m6!1s0x30dad1a259d2ec8b:0xf2ab532291754a50!8m2!3d18.8046798!4d97.9038899!15sChXguKPguYnguLLguJnguITguYnguLJaGCIW4Lij4LmJ4Liy4LiZIOC4hOC5ieC4spIBDWdyb2Nlcnlfc3RvcmXgAQA!16s%2Fg%2F11k5rc3wmp?entry=ttu",
    },
    {
      "name": "ร้านเสื้อผ้า",
      "address": "มส.3007 ตำบล แม่เงา อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/soap_store.jpg",
      "mapUrl":
          "https://www.google.co.th/maps/@18.8043846,97.9039726,18.25z?hl=th&entry=ttu",
    },
    {
      "name": "ร้านเสื้อผ้า",
      "address": "ต่อแพ อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/clothing_store.jpg",
      "mapUrl":
          "https://www.google.co.th/maps/@18.8040699,97.9027881,17.5z?hl=th&entry=ttu",
    },
    {
      "name": "ร้านขนม",
      "address": "ต่อแพ อำเภอขุนยวม แม่ฮ่องสอน 58140",
      "phone": "",
      "image": "assets/images/grocery_external.jpg",
      "mapUrl":
          "https://www.google.co.th/maps/@18.8028789,97.9044544,17z?hl=th&entry=ttu",
    },
    // เพิ่มร้านอื่นๆ ตามต้องการ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50), // สีเขียวตามธีม
        title: const Text("แหล่งของกิน", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // ส่วนหัวที่เป็นรูปแผนที่รวม (ถ้ามี)
          Container(
            padding: const EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset("assets/images/food_map.jpg", fit: BoxFit.fill),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "ของกินของใช้ในชุมชนต่อแพ",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          // ส่วนแสดงรายการร้านอาหารแบบ Grid
          Expanded(
            child: GridView.builder(
              padding: const EdgeInsets.all(10),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, // แสดง 2 คอลัมน์
                childAspectRatio: 0.85,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemCount: restaurantList.length,
              itemBuilder: (context, index) {
                final item = restaurantList[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => StoreDetailPage(data: item),
                      ),
                    );
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(10),
                            ),
                            child: Image.asset(
                              item['image'] ?? '',
                              width: double.infinity,
                              fit: BoxFit.fill,
                              errorBuilder: (context, e, s) =>
                                  Container(color: Colors.grey[300]),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            item['name'] ?? '',
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            maxLines: 1,
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
