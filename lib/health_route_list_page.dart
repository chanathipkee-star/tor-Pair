import 'package:flutter/material.dart';
import 'health_route_detail_page.dart';


class HealthRouteListPage extends StatelessWidget {
  const HealthRouteListPage({super.key});

  final List<Map<String, String>> healthRoutes = const [
    {
      "name": "โรงพยาบาลส่วนตำบล",
      "image": "assets/health1.png", // เปลี่ยนชื่อให้ตรงกับ assets ของคุณ
      "description": "เป็นสถานที่ให้คนในชุมชนเข้ามารักษาอาการเจ็บป่วยไข้เลือดออก มาเลเลียที่เกิดขึ้นกับชุมชนต่อแพในฤดูฝน และมีการรักษาอาการเจ็บปวดจากสมุนไพรลูกประคบโดยกรมสาธารณะสุขร่วมมือกับปราชญ์ชุมชนที่มีความเชี่ยวชาญด้านการนวดแพทย์แผนโบราณและการทำลูกประคบจากสมุนไพรในท้องถิ่น",
      "description_en": "It is a place for people in the community to come to the treatment of Malelia hemorrhagic disease that occurs in the community per raft during the rainy season. And there is a treatment for pain from herbal medicine by the Department of Public Health in cooperation with community sages specializing in traditional medicine and making herbal medicine.",
      "mapUrl": "https://www.google.com/maps/place/%E0%B9%82%E0%B8%A3%E0%B8%87%E0%B8%9E%E0%B8%A2%E0%B8%B2%E0%B8%9A%E0%B8%B2%E0%B8%A5%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B9%80%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1%E0%B8%AA%E0%B8%B8%E0%B8%82%E0%B8%A0%E0%B8%B2%E0%B8%9E%E0%B8%95%E0%B8%B3%E0%B8%9A%E0%B8%A5%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%9E/@18.805813,97.9042955,392m/data=!3m2!1e3!4b1!4m6!3m5!1s0x30dad12bdb35b719:0x9ddaa80bdb282cb5!8m2!3d18.8058113!4d97.9051548!16s%2Fg%2F11h0bb8_rj?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "บ้านป้านิลผ่อง",
      "image": "assets/health2.png",
      "description": "ป้านิลผ่อง ปราชญ์ชุมชนผู้มีความรู้และความเชี่ยวชาญด้าน ยาสมุนไพรและการทำลูกประคบปัจจุบันมีการปลูกสมุนไพรจำนวนมากไว้ในบ้านของตน และยังคงสื่บทอดการนวดแพทย์แผนโบราณจากรุ่นสู่รุ่นเพื่อเป็นการอนุรักษ์ภูมิปัญญาแพทย์แผนท้องถิ่นไว้ทั้งนี้ยังมีการสาธิตการทำลูกประคบขึ้นในทุกๆวันเสาร์",
      "description_en": "Mrs.Nilpong, a community philosopher who has knowledge and expertise in herbal medicine and making beads, currently grows a lot of herbs in her home and continues to inherit traditional medicine massage from generation to generation to conserve local medicine wisdom. There is also a demonstration of making beads every Saturday.",
      "mapUrl": "https://www.google.com/maps/place/%E0%B9%82%E0%B8%A3%E0%B8%87%E0%B8%9E%E0%B8%A2%E0%B8%B2%E0%B8%9A%E0%B8%B2%E0%B8%A5%E0%B8%AA%E0%B9%88%E0%B8%87%E0%B9%80%E0%B8%AA%E0%B8%A3%E0%B8%B4%E0%B8%A1%E0%B8%AA%E0%B8%B8%E0%B8%82%E0%B8%A0%E0%B8%B2%E0%B8%9E%E0%B8%95%E0%B8%B3%E0%B8%9A%E0%B8%A5%E0%B8%9A%E0%B9%89%E0%B8%B2%E0%B8%99%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%9E/@18.8076436,97.9041637,165m/data=!3m1!1e3!4m6!3m5!1s0x30dad12bdb35b719:0x9ddaa80bdb282cb5!8m2!3d18.8058113!4d97.9051548!16s%2Fg%2F11h0bb8_rj?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "บ้านลุงคิด",
      "image": "assets/health3.png",
      "description": "ลุงคิดทำยาสมุนไพรจากพืชสมุนไพรธรรมชาติ และนำไปขายให้กับผู้ที่สนใจ สมุนไพรช่วยลดอาการปวดหลัง",
      "description_en": "Mr.kit thinking of making herbal medicine from natural herbs and selling it to those who are interested in herbal medicine to help reduce back pain.",
      "mapUrl": "https://www.google.com/maps/place/%E0%B8%AD%E0%B8%B2%E0%B8%AB%E0%B8%B2%E0%B8%A3%E0%B8%95%E0%B8%B2%E0%B8%A1%E0%B8%AA%E0%B8%B1%E0%B9%88%E0%B8%87-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%8B%E0%B8%AD%E0%B8%A2-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%A1%E0%B8%B1%E0%B8%99%E0%B9%84%E0%B8%81%E0%B9%88-%E0%B8%82%E0%B9%89%E0%B8%B2%E0%B8%A7%E0%B8%82%E0%B8%B2%E0%B8%AB%E0%B8%A1%E0%B8%B9/@18.8042218,97.9031142,98m/data=!3m1!1e3!4m6!3m5!1s0x30dad100120e8e7f:0x43352db756aa6b02!8m2!3d18.8043523!4d97.9032791!16s%2Fg%2F11vjx4cbvq?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "คลินิก",
      "image": "assets/health4.png",
      "description": "ต่อแพคลินิกเป็นที่รวบรวมยารักษาโรคแผนปัจจุบันเปิดให้บริการณ์ทุกวันเพื่อให้บริการณ์ทุกคนในชุมชนต่อแพ",
      "description_en": "Tor Phae raft clinic is a collection of medicines. The current plan is open to service every day to serve everyone in the community per raft.",
      "mapUrl": "https://www.google.com/maps/@18.8025113,97.8992978,233m/data=!3m1!1e3?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "สำนักงานคณะกรรมการ(ต่อแพ)",
      "image": "assets/health3.png",
      "description": "สำนักงานคณะกรรมการเป็นสถานที่ที่รวบรวมเอาปราชญ์ชุมชนผู้ใหญ่บ้านมาประชุมร่วมกันหาแนวทางในการบริหารชุมชนการดูแลสุขภาวะที่ดีของชุมชนเพื่อหาแนวทางในการสร้างความแข่มแข็งให้กับชุมชน",
      "description_en": "Tor Phae of the Commission is a place where community scholars gather together to find ways to manage the community and to strengthen the community.",
      "mapUrl": "https://www.google.com/maps/place/%E0%B8%A8%E0%B8%B9%E0%B8%99%E0%B8%A2%E0%B9%8C%E0%B8%96%E0%B9%88%E0%B8%B2%E0%B8%A2%E0%B8%97%E0%B8%AD%E0%B8%94%E0%B9%80%E0%B8%97%E0%B8%84%E0%B9%82%E0%B8%99%E0%B9%82%E0%B8%A5%E0%B8%A2%E0%B8%B5%E0%B8%81%E0%B8%B2%E0%B8%A3%E0%B9%80%E0%B8%81%E0%B8%A9%E0%B8%95%E0%B8%A3%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%95%E0%B8%B3%E0%B8%9A%E0%B8%A5%E0%B9%81%E0%B8%A1%E0%B9%88%E0%B9%80%E0%B8%87%E0%B8%B2/@18.800921,97.8982893,286m/data=!3m1!1e3!4m6!3m5!1s0x30dad1bea9a47d77:0x5dd9bd06674314de!8m2!3d18.800953!4d97.898994!16s%2Fg%2F1hm585hf0?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "วัดต่อแพ",
      "image": "assets/health3.png",
      "description": "เป็นที่พักผ่อนจิตใจให้ทุกคนได้ทำกิจกรรมร่วมกัน เหมาะสำหรับผู้สูงอายุ เด็กและเยาวชนที่จะได้อยู่ร่วมกันผ่านการทำกิจกรรมทางวัฒนธรรมเพื่อลดความเครียดและสร้างความสัมพันธ์ที่ดีระหว่างผู้สูงอายุและเด็กให้เกิดความเข้าใจและดูแลซึ้งกันและกันได้",
      "description_en": "Wat Tor Phae is a place for everyone to enjoy activities together. It is suitable for the elderly, children and young people to live together through cultural activities to reduce stress and build good relationships between the elderly and children to understand and care for each other.",
      "mapUrl": "https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%9E/@18.8014657,97.9034079,278m/data=!3m1!1e3!4m6!3m5!1s0x30dad1b773abd4e1:0xc3895334dfe45f4a!8m2!3d18.8006875!4d97.9035625!16s%2Fg%2F1vfvczm1?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "สวนสมุนไพรชุมชนต่อแพ",
      "image": "assets/health3.png",
      "description": "สวนสมุนไพรเป็นพื้นที่ส่วนกลางที่ให้ชาวบ้านร่วมกันปลูกยาสมุนไพรท้องถิ่น เช่น ฟ้าทะลายโจร มิ้นจรั้ง เข้าขมิ้น ตะไคร้ คั่วไม้ค้ำ หญ้าหนวดแมว กระชายดำ ดีปรี เป็นต้น ชาวบ้านสามารถมาเก็บสมุนไพรเพื่อนำไปประกอบอาหารหรือนำไปผลิตเป็นยารักษาโรคก็ได้",
      "description_en": "Herbal Garden is a central area where local herbal medicines such as Fa Talai Yor, Minjaroong, can be grown in turmeric, moss, grass, cat's whiskers, black chai, Deepri, etc. Villagers can come to collect herbs for cooking or manufacturing as medicine.",
      "mapUrl": "https://www.google.com/maps/@18.8040098,97.9101155,404m/data=!3m1!1e3?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "น้ำสมุนไพร",
      "image": "assets/health3.png",
      "description": "ต่อแพคาเฟ่ เป็นร้านกาแฟภายในชุมชนที่มีการผลิตสบู่จากอะโวคาโด มีใบรับรองความปลอดภัย และ มีการนำอโวคาโดมาแปลรูปเป็นเครื่องดื่มเพื่อสุขภาพเหมาะสำหรับ ทุกคนเพราะมีสรรพคุณที่ดี เช่น บำรุงหัวใจ บำรุงผิวพรรณ และอาหารย่อยที่ช่วยควบคุมน้ำหนัก บำรุงสายตา ไขมันดีและสารต้านอนุมูลอิสระในอะโวคาโด",
      "description_en": "Tor Phae cafe is a community cafe where avocado soap is produced. It has a safety certificate and avocado is translated into a healthy drink for everyone because it has good qualities such as cardiovascular care, skin care, weight control, vision care, fatness, and antioxidants in avocado, causing inflammation and various chronic diseases.",
      "mapUrl": "https://www.google.com/maps/place/Tor+Pae+Cafe+@%E0%B8%82%E0%B8%B8%E0%B8%99%E0%B8%A2%E0%B8%A7%E0%B8%A1/@18.8076759,97.9116585,480m/data=!3m1!1e3!4m6!3m5!1s0x30dad1c814533433:0xa62b96fbe5562527!8m2!3d18.8082263!4d97.9122472!16s%2Fg%2F11l36h79v0?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    {
      "name": "บ้านป้าคินเอ",
      "image": "assets/health3.png",
      "description": "ป้าคินเอ อดีตปราชญ์ชุมชนผู้เคยทำสมุนไพรพื้นบ้านโดยนำวัตถุดิบท้องถิ่นมาปรุงเป็นสมุนไพรสูตรโบราณ เพื่อลดอาการปวด เหน็บชา ทั้งนี้มีการนำไปแจกจ่ายให้กับผู้ที่มีอาการเจ็บป่วยได้ไปรับประทาน",
      "description_en": "Mrs.Kin Ae, a former community philosopher who used to make folk herbs by cooking local ingredients as an ancient herbal formula to reduce pain and numbness. This was distributed to those with symptoms to eat.",
      "mapUrl": "https://www.google.com/maps/@18.8004041,97.8980172,202m/data=!3m1!1e3?entry=ttu&g_ep=EgoyMDI0MTEyNC4xIKXMDSoASAFQAw%3D%3D"
    },
    // เพิ่มรายการอื่นๆ ตามรูปภาพ
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF4CAF50),
        title: const Text("เส้นทางนิเวศสุขภาพ", style: TextStyle(color: Colors.white)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // รูปแผนที่ด้านบน
          Image.asset(
            "assets/health_map.png", 
            fit: BoxFit.cover,
            errorBuilder: (context, e, s) => Container(height: 200, color: Colors.green[100], child: const Icon(Icons.map_outlined)),
          ),
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.all(10),
              itemCount: healthRoutes.length,
              separatorBuilder: (context, index) => const Divider(),
              itemBuilder: (context, index) {
                final item = healthRoutes[index];
                return ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      item['image']!,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, e, s) => Container(width: 60, color: Colors.grey),
                    ),
                  ),
                  title: Text(item['name']!, style: const TextStyle(fontWeight: FontWeight.bold)),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HealthRouteDetailPage(data: item),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}