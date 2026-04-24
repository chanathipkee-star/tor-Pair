import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'detail_pagecheckin.dart';

class CheckInPage extends StatelessWidget {
  const CheckInPage({super.key});

  // ฟังก์ชันสำหรับเปิด Google Maps
  Future<void> _launchMap(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: const Text("จุดเช็คอิน", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          // รูปแผนที่ด้านบน
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/1.jpg',
              fit: BoxFit.fitWidth,
              width: double.infinity,
            ),
          ),
          const SizedBox(height: 16),
          const Text(
            "แวะแอ่วตามสถานที่นี่เน่อ",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),

          

          // --- รายการสถานที่ ---
          buildListCard(
            context,
            "วัดต่อแพ (ต่อลมหายใจ)",
            "assets/images/checkin_map.jpg",
            "วัดมีมาตั้งแต่ก่อนสงครามโลกครั้งที่ 2 พ.ศ.2463 เป็นศิลปะพม่าผสมไทใหญ่ ยอดประดับด้วยฉัตรโลหะ 7 ชั้นบนฉัตรมีระฆังแขวนห้อยอยู่เป็นจำนวนมาก ในใต้ถุนวัดเมื่อก่อนเป็นที่พิมพ์ธนบัตร สมัย 1 เยน ไม่ต้องผ่านธนาคารกลางและเป็นที่พักเป็นหน่วยพยาบาล ทหารญี่ปุ่นได้เข้าพักเป็นระยะเวลาอยู่ 2 ปี และกลับไปโดยทิ้งอาวุธไว้อย่างมากมาย",
            "Wat To Phae was built in 1920, before WWII. It showcases Burmese-Shan art styles. During the war, it served as a medical unit and currency printing site for Japanese soldiers.",
            "https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%9E/@18.8011809,97.9038551,182m/data=!3m1!1e3!4m6!3m5!1s0x30dad1b773abd4e1:0xc3895334dfe45f4a!8m2!3d18.8006875!4d97.9035625!16s%2Fg%2F1vfvczm1?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["แข่งแพ", "ไหว้พระทำบุญ", "ตะเคียนทองบอกเลข", "ให้อาหารปลา"],
          ),
          buildListCard(
            context,
            "พิพิธภัณฑ์ (คลังปัญญา)",
            "assets/images/2.jpg",
            "เป็นงานฝีมือของชาวบ้านที่ทำขึ้นมาตั้งแต่อดีต จนถึงปัจจุบัน สามารถเข้าไปรับชมหรือลองทำได้อยู่ข้างกับพิพิธภัฑ์ ต้องลายหรือการฉลุสังกะสีแบบไทยใหญ่ นิยมใช้เป็นของตกแต่งประดับวัด ซุ้มเจ้าฟ้าเจ้าแผ่นดิน",
            "A local museum preserving Shan handicrafts and stencil art. It serves as a learning center for cultural history, local wisdom, and traditional ways of life.",
            "https://www.google.com/maps/@18.8010474,97.9036801,19.25z?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["ฝึกต้องลายกับลุงคิด", "เยี่ยมชมพิพิธภัณฑ์"],
          ),
          buildListCard(
            context,
            "วัดพระธาตุดอยเวียง",
            "assets/images/doi_wiang.jpg",
            "เป็นที่ตั้งถิ่นฐานของชาวชนเผ่าละว้าสมัยก่อนแต่มีการเกิดโรคระบาดเลยถูกทิ้งร้างไว้จนถึงทุกวันนี้สมัยล้านนาในช่วงเวลาพุทธศตวรรษที่ 19-24 เป็นแหล่งโบราณที่มีที่มาก่อนการก่อตั้งหมู่บ้านต่อแพ",
            "An ancient settlement site of the Lawa people. Legend states that the pagoda on Doi Wiang was built over 1,900 years ago.",
            "https://www.google.com/maps/place/%E0%B8%AA%E0%B8%B3%E0%B8%99%E0%B8%B1%E0%B8%81%E0%B8%AA%E0%B8%87%E0%B8%86%E0%B9%8C%E0%B8%94%E0%B8%AD%E0%B8%A2%E0%B9%80%E0%B8%A7%E0%B8%B5%E0%B8%A2%E0%B8%87/@18.8016967,97.9095907,16z/data=!4m6!3m5!1s0x30dad10014c352ef:0x3287616957cf9bb8!8m2!3d18.7995313!4d97.9085191!16s%2Fg%2F11nbtmn1bz?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            [
              "เดินทางเข้าป่าชุมชนเพื่อเยี่ยมชมธรรมชาติหมู่บ้านโบราณชาวละว้า (ต้องทำการติดต่อกับทางผู้ใหญ่บ้านก่อน)",
            ],
          ),
          buildListCard(
            context,
            "ศูนย์เศรษฐกิจพอเพียง (หล่อเลี้ยงชุมชน)",
            "assets/images/sufficiency.jpg",
            "เป็นศูนย์เศรษฐกิจพอเพียงเป็นแหล่งความรู้เกี่ยวกันพืชผักต่าง เลี้ยงสัตว์ตามหลักของเศรษฐกิจพอเพียง มีของขาย อย่างเช่น เมล็ดของต้นอโวคาโด้ อโวคาโด้ตามฤดูกาล และไข่ไก่",
            "A sufficiency economy center providing knowledge on sustainable farming, animal husbandry, and local organic products like avocados and eggs.",
            "https://www.google.com/maps/@18.8050468,97.9107378,612m/data=!3m1!1e3?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            [
              "เข้าชมศูนย์เศรษฐกิจพอเพียง โคกหนองนาโมเดล ,  มีการสาธิตผลิตน้ำส้มควันไม้ ,  กิจกรรมอื่นๆอีกมากมาย",
            ],
          ),
          buildListCard(
            context,
            "ฮ้านกาแฟ (แชร์ความรู้)",
            "assets/images/coffee.jpg",
            "ก้ากิ่งกะหร่า คือการฟ้อนนกกิ่งหร่ามักจะคู่กับตัวโตเป็นศิลปะชั้นสูงอันสะท้อนเอกลักลัษณ์ความเชื่อตามวัฒนธรรมประเพณีท้องถิ่นของชาวไทใหญ่ ชุดนกกิ่งกะหร่านั้นประกอบสําคัญคือลําตัวปีกและหางมีโครงสร้างที่ทําจากไม้ไผ่",
            "The Gin Gala dance (Bird dance) is a high art form reflecting Shan beliefs. It is performed during major festivals using intricate bamboo and cloth costumes.",
            "https://www.google.com/maps/place/Tor+Pae+Cafe+@%E0%B8%82%E0%B8%B8%E0%B8%99%E0%B8%A2%E0%B8%A7%E0%B8%A1/@18.8070336,97.9112226,612m/data=!3m1!1e3!4m6!3m5!1s0x30dad1c814533433:0xa62b96fbe5562527!8m2!3d18.8082263!4d97.9122472!16s%2Fg%2F11l36h79v0?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["สาธิตการทำสบู่จากอโวคาโด้จากศูนย์เศรษฐกิจพอเพียง ลุงจรูญ"],
          ),
          buildListCard(
            context,
            "เส้นทางเดินเท้าประวัติศาสตร์",
            "assets/images/history_path.jpg",
            "เส้นทางเดินเท้าที่บอกเล่าเรื่องราวในอดีตของหมู่บ้านต่อแพ ผ่านร่องรอยทางประวัติศาสตร์และธรรมชาติที่สวยงาม",
            "A historical walking path telling the stories of To Phae village through historical traces and beautiful nature.",
            "https://www.google.com/maps/@18.8010474,97.9036801,19.25z?entry=ttu", // Placeholder link
            ["เดินชมเส้นทางประวัติศาสตร์", "ถ่ายรูปเช็คอิน"],
          ),
          buildListCard(
            context,
            "ก้ากิงกะหร่า (ยลความเชื่อ)",
            "assets/images/gala_dance.jpg",
            "ในชุมชนบ้านต่อแพใช้วัสดุที่อยู่ในท้องถิ่นคือ ไม้ไผ่ นํามาเป็นผลิตภัณฑ์จักสานเช่น สุ่มไก่ ตุ้มใส่ปลา กระด้ง แปมใส่ของ เครื่องมือพื้นบ้าน เพื่อใช้เอามาดํารงชีวิตของตนเอง และยังเป็นแหล่งเรียนรู้ ให้กับคนในชุมชน",
            "To Phae community uses local bamboo to create woven products like chicken coops, fish traps, and baskets, preserving traditional craftsmanship.",
            "https://www.google.com/maps/@18.8060995,97.9058811,153m/data=!3m1!1e3?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["สอนฟ้อนกิงกะหร่า , สอนทำชุดกิงกะหร่า"],
          ),
          buildListCard(
            context,
            "จักสาน (สานต่อวัฒนธรรม)",
            "assets/images/weaving.jpg",
            "คือภาษาท้องถิ่นของชาวไทใหญ่ซึ่งหมายถึงหมวกที่ทําจากไม้ไผ่โดยเราจะนํา ไม้ไผ่มาสานเป็นรูปทรงหมวกไว้ใช้สําหรับเพื่อกันแดดหรือกันฝนและสวมในการประกอบกิจกรรมพิธีกรรมต่างๆ",
            "'Goob Tai' is the local name for Shan bamboo hats. They are used for protection against sun and rain and worn during traditional ceremonies to show local identity.",
            "https://www.google.co.th/maps/@18.8019112,97.9023032,91m/data=!3m1!1e3?hl=th&entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["ฝึกทำตะกร้าสาน จากคุณป้าผู้เชี่ยวชาญ"],
          ),
          buildListCard(
            context,
            "กุ๊บไต (สารเรื่องราวแห่งวัฒนธรรม)",
            "assets/images/hats_group.jpg",
            "กุ๊บไตเป็นสินค้า OTOP อีกอย่างหนึ่งของชุมชนบ้านต่อแพและยังเป็นศูนย์เรียนรู้การทํา กุ๊บไตให้กับคนในชุมชน นักเรียน นักท่องเที่ยว เพื่อสืบทอดศิลปะวัฒธรรมอันงดงามให้กับรุ่นลูกรุ่นหลาน",
            "A center for learning Goob Tai hat making. It promotes Shan arts and culture to the younger generation and tourists while supporting the local economy.",
            "https://www.google.co.th/maps/place/RW23%2BMGX+%E0%B8%95%E0%B8%B3%E0%B8%9A%E0%B8%A5+%E0%B9%81%E0%B8%A1%E0%B9%88%E0%B9%80%E0%B8%87%E0%B8%B2+%E0%B8%AD%E0%B8%B3%E0%B9%80%E0%B8%A0%E0%B8%AD%E0%B8%82%E0%B8%B8%E0%B8%99%E0%B8%A2%E0%B8%A7%E0%B8%A1+%E0%B9%81%E0%B8%A1%E0%B9%88%E0%B8%AE%E0%B9%88%E0%B8%AD%E0%B8%87%E0%B8%AA%E0%B8%AD%E0%B8%99+58140/@18.8015107,97.9038154,129m/data=!3m1!1e3!4m6!3m5!1s0x30dad1b9e96bee75:0x6271c69f0d29ec16!8m2!3d18.8017812!4d97.9038736!16s%2Fg%2F11jylkczj7?hl=th&entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["ฝึกทำหมวก กุ๊บไต จากคุณลุงผู้มากประสบการณ์"],
          ),
          buildListCard(
            context,
            "สกรีนเสื้อ (เลื่องลืออาราม)",
            "assets/images/shirt.jpg",
            "บ้านต่อแพนั้นมีสินสินค้าOTOPมากมาย เสื้อสกรีนก็ป็นสินค้าOTOPอีกอย่างหนึ่งของบ้านต่อแพโดยจะมีรูปสกรีนเป็นรูปวัดต่อแพรวมถึงเอกลักษณ์ต่างๆ ช่วยสร้างรายได้เสริมให้กับชาวบ้าน",
            "Screen-printed t-shirts featuring Wat To Phae and local icons are popular OTOP products, helping to spread awareness of the community's identity.",
            "https://www.google.co.th/maps/@18.8024041,97.9029676,433m/data=!3m1!1e3?hl=th&entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["สกรีนเสื้อสุดเก๋ลายวัดต่อแพเป็นของฝาก"],

          ),

          buildListCard(
            context,
            "สินค้า OTOP (พบไต)",
            "assets/images/otop_sign.jpg",
            "เป็นศูนย์รวมผลิตภัณฑ์สินค้า OTop ซึ่งคนในชุมชนเอาผลผลิตและวัสดุท้องถิ่นมาแปรรูปเป็นผลิตภัณฑ์ต่างๆ เช่น ยาดมสมุนไพร สบู่อโวคาโด ชุดไทใหญ่(ไต) เครื่องจักสาน และอาหารพื้นเมือง",
            "A hub for OTOP products including herbal inhalers, avocado soap, Tai Yai costumes, and local snacks like dried bananas and avocado milk.",
            "https://www.google.com/maps/@18.8011809,97.9038551,182m/data=!3m1!1e3?entry=ttu&g_ep=EgoyMDI2MDQxMy4wIKXMDSoASAFQAw%3D%3D",
            ["แวะซื้อสินค้าอัตลักษณ์ชุมชน"],
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // ฟังก์ชันสร้าง Card แสดงรายการ
  Widget buildListCard(
    BuildContext context,
    String title,
    String imagePath,
    String thDescription,
    String enDescription, [
    String? mapUrl, // รับค่าลิงก์ Map เป็น optional
    List<String> activities = const [], // รับค่า list กิจกรรม
  ]) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // ส่วนรูปภาพ (กดเพื่อไปหน้า Detail)
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailPage(
                    title: title,
                    imagePath: imagePath,
                    thDescription: thDescription,
                    enDescription: enDescription,
                    activities: activities,
                  ),
                ),
              );
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(12),
              ),
              child: Image.asset(
                imagePath,
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                // แสดงปุ่มก็ต่อเมื่อมีลิงก์ mapUrl ถูกส่งเข้ามา
                if (mapUrl != null && mapUrl.isNotEmpty) ...[
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () => _launchMap(mapUrl),
                      icon: const Icon(Icons.map, color: Colors.white),
                      label: const Text(
                        "ดูแผนที่ Google Maps",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[700],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
