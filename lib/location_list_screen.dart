import 'package:flutter/material.dart';
import 'location_detail_screen.dart'; // import ไฟล์หน้าละเอียด

class RouteListScreen extends StatelessWidget {
  const RouteListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('เส้นทางวัฒนธรรม', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
        backgroundColor: const Color(0xFFC00000),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ส่วนแผนที่ด้านบน
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/culture_route_map.jpg', // อย่าลืมเช็ค path รูปนะ
                  fit: BoxFit.cover,
                  errorBuilder: (context, e, s) => Container(height: 200, color: Colors.grey[200], child: const Icon(Icons.map)),
                ),
              ),
            ),
            
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("สถานที่ในเส้นทาง (Locations)", 
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              ),
            ),

            // รายการสถานที่ 1
            _buildLocationItem(
              context,
              "1. วัดต่อแพ",
              "จุดพักผู้แพ้ยามถอย (Wat Tor Pae)",
              'assets/images/wat_tor_pae.jpg',
              "เดิมทีเป็นวัดร้าง สันนิษฐานว่าเป็นวัดของชาวละว้าที่สร้างขึ้นมาเป็นเวลานานแล้ว โดยวัดเหลือเพียงแค่ซากเจดีย์เก่าที่มีต้นไม้ขึ้นอยู่ตรงกลาง ต่อมาพระธุดงค์ไทใหญ่เดินทางมาตั้งเป็นสำนักสงฆ์และทำการบูรณะวัดสร้างศาลาการเปรียญขึ้นมาเมื่อราวปี พ.ศ. 2461",
              historyEng: "Originally an abandoned temple, it is presumed to have been constructed by the Lawa people long ago. The site only had the remains of an old stupa with a tree growing in the middle. Later, a Thai Yai monk established a monastic residence and renovated the temple, constructing a sermon hall around 1918.",
              features: "ศาลาการเปรียญ อาคารสถาปัตยกรรมพม่าผสมไทใหญ่ที่สวยงามที่สุดในอำเภอขุนยวมและยังมีสภาพสมบูรณ์ ตัวอาคารหันหน้าไปทางทิศตะวันออก ก่อสร้างด้วยไม้สักทั้งหลัง หลังคาซึ่งมีหลายชั้นแยกออกจากกันเป็นหลังๆ มุงด้วยสังกะสีที่สลักลวดลายสวยงาม",
              role: "ที่ตั้งของวัดเป็นยุทธศาสตร์ที่เหมาะสมสำหรับการตั้งค่ายเพราะตั้งอยู่ริมฝั่งแม่น้ำซึ่งมีอีกด้านเป็นที่ราบ พื้นที่ของวัดจึงถูกใช้เป็นที่ตั้งค่ายของกองทหารญี่ปุ่นทั้งตอนที่เคลื่อนพลเข้าสู่ประเทศพม่าและตอนที่ถอยทัพกลับมาหลังจากเกิดการสู้รบอย่างดุเดือดในพม่าไปจนถึงช่วงที่ญี่ปุ่นแพ้สงคราม โดยพื้นที่ใต้ถุนศาลาวัดถูกใช้เป็นสถานพยาบาล บริเวณวิหารเล็กที่ตั้งอยู่ด้านหน้าเจดีย์ ใช้เป็นสถานที่พิมพ์ธนบัตร ด้านตะวันออกและด้านใต้ของวัดรวมทั้งบริเวณที่ราบ เชิงดอยด้านทิศใต้ของวัดต่อแพถูกใช้เป็นที่ฝังศพทหารผู้เสียชีวิต",
              mystery: "เมื่อมีการซ่อมแซมกำแพงวัดประมาณในปีพ.ศ. 2518 ก็พบโครงกระดูกของทหารที่ถูกฝังอยู่ในบริเวณวัด จึงได้มีการสร้างสุสานให้แก่ทหารเหล่านี้ผู้ซึ่งมาเสียชีวิตในที่ซึ่งไกลแสนไกลจากบ้านเกิดและปรากฎเป็นเรื่องเล่าเหนือธรรมชาติที่มีผู้คนพบเห็นของชายหญิงในชุดขาวที่ออกมากวาดบริเวณสุสานทหารญี่ปุ่นทุกๆวันพระ",
              mapUrl: "https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%95%E0%B9%88%E0%B8%AD%E0%B9%81%E0%B8%9E/@18.8003959,97.8991776,612m/data=!3m1!1e3!4m9!1m2!2m1!1z4Lij4LmJ4Liy4LiZ4LiE4LmJ4Liy!3m5!1s0x30dad1b773abd4e1:0xc3895334dfe45f4a!8m2!3d18.8006875!4d97.9035625!16s%2Fg%2F1vfvczm1?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
            ),
            
            // รายการสถานที่ 2
            _buildLocationItem(
              context,
              "2. วัดโพธิ์",
              "ลานพบ(รัก) (Wat Phue)",
              'assets/images/wat_pho.jpg',
              "สร้างเมื่อ พ.ศ. ๒๔๗๔ โดยมีครูวงค์ นักขัตตา นายอึ่ง โสภา และ นายดวงแก้ว ไชยนา ได้นำศรัทธาประชาชนร่วมกันก่อตั้งวัดขึ้น เดิมชื่อวัดม่วง เพราะมีต้นมะม่วงขนาดใหญ่อยู่ในบริเวณวัด ประมาณ พ.ศ. ๒๕๐๐ จึงได้เปลี่ยนชื่อเป็นวัด “โพธาราม” ชาวบ้านเรียก “วัดโพธิ์”",
              historyEng: "Founded in 1931 by teachers Krung, Nakatta, Mr. Ueng Sopa, and Mr. Duang Kaew Chai Na, who gathered local support to establish the temple. Initially named Wat Muang due to a large mango tree on the premises, it was renamed Wat Photharam around 1957, and is now commonly known as Wat Phue.",
              role: "ลานวัดโพธิ์ถูกใช้เป็นที่ตั้งค่ายของญี่ปุ่นที่มีความสำคัญอีกแห่งหนึ่งลานของวัดปรากฎการถูกใช้หน้าวัดโพธาราม เป็นที่ตั้งหน่วยเสบียงอาหารและยังเป็นศูนญ์กลางในการค้าขาย ชาวบ้านนำสินค้ามาขายให้กับทหารญี่ปุ่นที่นี่ยังเป็นจุดที่นางสาวแก้ว หว่าละ (จันทสีมา) *ซึ่งได้นำสินค้ามาขายและได้พบกับทหารญี่ปุ่นที่ชื่อ สิบเอกฟูคูดะ ฮิเตียว จนได้กลายเป็นตำนานรักของหญิงสาวชาวขุนยวมและนายทหารจากแดนอาทิตย์อุทัย",
              mapUrl: "https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B9%82%E0%B8%9E%E0%B8%98%E0%B8%B2%E0%B8%A3%E0%B8%B2%E0%B8%A1/@18.8252261,97.8954662,8229m/data=!3m1!1e3!4m10!1m2!2m1!1z4Lin4Lix4LiU4LmC4Lie4LiY4Li04LmM!3m6!1s0x30dad03d4c513901:0x4801ce00d857bfec!8m2!3d18.8167758!4d97.936477!15sChjguKfguLHguJTguYLguJ7guJjguLTguYySAQ9idWRkaGlzdF90ZW1wbGXgAQA!16s%2Fg%2F1thzr6mn?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
            ),

            // รายการสถานที่ 3
            _buildLocationItem(
              context,
              "3. วัดคำใน - วัดขุ่ม",
              "สองฐานยุทธศาสตร์ (Wat Kam Nai - Wat Khum)",
              'assets/images/wat_kam_nai.jpg',
              "วัดคำในหรือวัดจองคำสร้างเมื่อพ.ศ. 2367โดยพระธุดงค์ที่เดินทางมาจากประเทศเมียร์มาร์และถูกบูรณะในปีพ.ศ.2500 โดยคหบดีชื่อพ่อลุงเจ้ามา มณีวงศ์และวัดขุ่มสร้างเมื่อพ.ศ. 2334 โดยมีแม่เฒ่านางจองยอดและศรัทธาจากชาวบ้านช่วยกันสร้างเรียกว่าวัดจองขุ่ม",
              historyEng: "Wat Kam Nai or Wat Chong Kam was established in 1824 by a monk who traveled from Myanmar and was renovated in 1957 by a wealthy patron named Pholung Chao Ma Manee Wong. Wat Khum was built in 1791 with contributions from an elderly woman named Chong Yod and local villagers, and was originally called Wat Chong Khum.",
              features: "ทั้งสองวัดสร้างด้วยศิลปะไทยใหญ่ - พม่ามีพระพุทธรูปไม้ไผ่สานลงรักปิดทองอายุกว่า 100 ปี แกะสลักเป็นรูปเทวดาที่แสดงออกที่หน้าตาท่าทางเหมือนมีชีวิต รวมทั้งศาลาการเปรียญทรงไทยใหญ่ที่สวยสดงดงาม เจดีย์สีทองอร่ามทรงไตใหญ่ - พม่า",
              role: "วัดคำในเป็นที่ตั้งหน่วยพยาบาลและศาลาวัดขุ่ม เป็นที่ตั้งหน่วยสื่อสารกลาง นอกจากนี้วัดขุ่มยังปรากฎเป็นสถานที่ที่ใช้ปลงศพของนายทหารญี่ปุ่นที่มีกรณีความขัดแย้งกับชาวบ้านจนได้ถูกลงโทษตามข้อปฏิบัติทางทหารจนได้รับความอับอายและได้จบชีวิตตนเองหลังจากที่ถูกลงโทษ",
              mapUrl: "https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%84%E0%B8%B3%E0%B9%83%E0%B8%99/@18.8255691,97.9216446,4115m/data=!3m1!1e3!4m10!1m2!2m1!1z4Lin4Lix4LiU!3m6!1s0x30dad021f067723d:0x37c32c93dc8fe9a3!8m2!3d18.8235625!4d97.9356875!15sCgnguKfguLHguJRaCyIJ4Lin4Lix4LiUkgEPYnVkZGhpc3RfdGVtcGxlmgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU14YlY5VFoyUlJFQUXgAQD6AQQIABAW!16s%2Fg%2F11r9r2tnt?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
            ),

            // รายการสถานที่ 4
            _buildLocationItem(
              context,
              "4. วัดม่วยต่อ",
              "แหล่งต่อลมหายใจ? (Wat Muay Tor)",
              'assets/images/wat_muay_tor.jpg',
              "สร้างเมื่อปี พ.ศ.2432 ด้วยสถาปัตยกรรมไทใหญ่ โดยเจ้านางเมียะ เจ้าเมืองแม่ฮ่องสอนสมัย ซึ่งเป็นเจ้าเมืองแม่ฮ่องสอนในสมัยนั้น ชื่อวัดนี้ได้มาจากเจ้าอาวาสรูปแรกย้ายมาจากวัดม่วยต่อ อำเภอหมอกใหม่ รัฐฉาน ในประเทศเมียนมา และท่านได้นำชื่อวัดม่วยต่อมาใช้ด้วย ชาวบ้านจึงเรียกกันว่า \"จองหม่วยต่อ\"",
              historyEng: "Established in 1889 with Thai Yai architecture by Princess Mia, the ruler of Mae Hong Son at that time. The name was derived from the first abbot who moved from Wat Muay Tor in Mok Mai District, Shan State, Myanmar. The locals refer to it as \"Chong Muay Tor.\"",
              features: "นี้มีสิ่งที่น่าสนใจคือ เจดีย์ทรงเครื่องแบบมอญ ล้อมรอบด้วยพระเจดีย์บริวาร ยอดประดับด้วยฉัตรโลหะ แขวนกระดิ่งโดยรอบพระประธานในอุโบสถ เป็นพระพุทธรูปทองเหลือง นำมาจากประเทศพม่าในปี พ.ศ. 2466 พระประธานในศาลาการเปรียญ เป็นพระพุทธรูปเนื้อสัมฤทธิ์ ศิลปะแบบพม่า",
              role: "ในครั้งนั้นพื้นที่ภายในวัดหัวเวียง (ปัจจุบันรวมกับวัดม่วยต่อ) ถูกใช้เป็นที่ตั้งของโรงพยาบาลใหญ่ของค่ายขุนยวมในชื่อโรงพยาบาลทหารหมายเลข 105 โดยเป็นที่รับผู้ป่วยอาการหนักที่ส่งต่อมาจากหน่วยพยาบาลอื่นๆเนื่องจากที่นี่เป็นโรงพยาบาลสนามที่ดีที่สุด วัดม่วยต่อถือโรงพยาบาลใหญ่แห่งสุดท้ายทำให้ทหารญี่ปุ่นที่ได้รับบาดเจ็บจากการสู้รบในพม่าได้มาเสียชีวิตที่นี่เป็นจำนวนมากที่สุด",
              mapUrl: "https://www.google.com/maps/place/%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%A1%E0%B9%88%E0%B8%A7%E0%B8%A2%E0%B8%95%E0%B9%88%E0%B8%AD/@18.8255691,97.9216446,4115m/data=!3m1!1e3!4m10!1m2!2m1!1z4Lin4Lix4LiU!3m6!1s0x30dacfdf58dee00f:0x531a4654d74708b7!8m2!3d18.8289125!4d97.9333078!15sCgnguKfguLHguJRaCyIJ4Lin4Lix4LiUkgEPYnVkZGhpc3RfdGVtcGxlmgEkQ2hkRFNVaE5NRzluUzBWSlEwRm5TVVJDTlhBeWVHaDNSUkFC4AEA-gEECBwQLQ!16s%2Fg%2F1tcwz0xx?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
            ),

            // รายการสถานที่ 5
            _buildLocationItem(
              context,
              "5. พิพิธภัณฑ์",
              "แหล่งรักษาความทรงจำ (Museum)",
              'assets/images/museum_khunyuam.jpg',
              "ตั้งอยู่ตรงข้ามถนนเยื้องกับวัดม่วยต่อก่อตั้งขึ้นโดยพันตำรวจโทเชิดชาย ชมธวัช หลังจากที่ได้เข้ามารับราชการและเห็นถึงความสำคัญของเหตุการณ์สงครามโลกครั้งที่ 2 ที่มีความเกี่ยวข้องกับคนขุนยวมที่หลงเหลือหลักฐานคือข้าวของของทหารญี่ปุ่นที่ผู้คนเก็บไว้จำนวนมากจึงได้ทำการรวบรวมและก่อตั้งเป็นพิพิธภัณฑ์ในปี 2539 ก่อนจะได้รับการปรับปรุงอีกเรื่อยมาภายในมีข้าวของและภาพถ่ายเก่าที่หาชมได้ยาก เศษซากรถยนต์ หีบใส่ของ ที่สื่อถึงการคมนาคมและการลำเลียงสิ่งของของทหารญี่ปุ่น",
              historyEng: "Located across the street from Wat Muay Tor, the museum was established by Lieutenant Colonel Cherdchai Chomthawach. After recognizing the significance of World War II events related to Khun Yuam and the numerous Japanese military artifacts collected by locals, he founded the museum in 1996. The museum has been updated over time, showcasing rare old photographs, vehicle remnants, and storage boxes representing Japanese military logistics.",
              mapUrl: "https://www.google.com/maps/place/%E0%B8%AD%E0%B8%99%E0%B8%B8%E0%B8%AA%E0%B8%A3%E0%B8%93%E0%B9%8C%E0%B8%AA%E0%B8%96%E0%B8%B2%E0%B8%99%E0%B8%A1%E0%B8%B4%E0%B8%95%E0%B8%A3%E0%B8%A0%E0%B8%B2%E0%B8%9E%E0%B9%84%E0%B8%97%E0%B8%A2+%E0%B8%8D%E0%B8%B5%E0%B9%88%E0%B8%9B%E0%B8%B8%E0%B9%88%E0%B8%99/@18.8255691,97.9216446,4115m/data=!3m1!1e3!4m10!1m2!2m1!1z4Lin4Lix4LiU!3m6!1s0x30dacfdfb4879263:0x44515b27d4cf8986!8m2!3d18.8302747!4d97.9331745!15sCgnguKfguLHguJRaCyIJ4Lin4Lix4LiUkgEGbXVzZXVtmgEjQ2haRFNVaE5NRzluUzBWSlEwRm5TVU0xZW5aZlVXUlJFQUXgAQD6AQQIJxBH!16s%2Fg%2F1hm44g99c?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
            ),

            // รายการสถานที่ 6
            _buildLocationItem(
              context,
              "6. ช่องเขาเอวขาด",
              "ทางเก่าที่ไม่เก่า (Khao Ev Khaad Pass)",
              'assets/images/khao_ev_khaad.jpg',
              "เส้นทางเดินเท้ากลับเข้าสู่เชียงใหม่ เส้นทางขุนยวม - แม่แจ่มเป็นอีกหนึ่งเส้นทางที่ถูกใช้ในการเดินทางปรากฎเป็นเรื่องเล่าในความทรงจำของชาวบ้านชาติพันธุ์ม้งในหมู่บ้านปางเกี๊ยะถึงการเดินทางผ่านของทหารยื่อเป็ง (ทหารญี่ปุ่นที่เรียกพ้องมาจากภาษาจีน日本) ผ่านเส้นวัวต่างซึ่งเป็นทางเดินเท้าโบราณที่ผู้คนทั้งคนไทใหญ่ คนเมือง จีนฮ่อ ม้ง กะเหรี่ยงใช้เป็นเส้นทางสัญจรหลักทางสายนี้จะอยู่คู่ขนานกับถนนสายหลักในปัจจุบัน ไม่มีเส้นทางขึ้นดอยหรือผ่านภูมิประเทศที่ยากลำบากแต่จะเลียบไปตามลำห้วยที่เรียกว่า ห้วยเจ็บตีนก่อนเข้าสู่ช่องเขาเอวขาด",
              historyEng: "The walking path returning to Chiang Mai, the Khun Yuam - Mae Chaem route, is another significant travel route. It is remembered by the Hmong community in Pang Kia village for the passage of Japanese soldiers. The route, known as \"Wua Tang,\" is an ancient footpath used by Tai Yai, city dwellers, Chinese Hmong, and Karen people. It runs parallel to the modern main road, without steep climbs or difficult terrain, following a stream called \"Huay Jeb Teen\" before reaching the Khao Ev Khaad Pass.",
              features: "ระหว่างเดินทางถอยทัพมีชาวบ้านบางคนได้ขโมยข้าวของจากทหารญี่ปุ่นเพราะสิ่งของเหล่านี้ประโยชน์และจำเป็นต่อการดำเนินชีวิตแต่หาได้ยากมาในสมัยนั้น ได้แก่ ปืน กระสุน หม้อ สำหรับการเดินทางไกลครั้งนี้ รองเท้าคือสมบัติชิ้นที่สำคัญที่สุดสำหรับการเดินเท้า",
              mapUrl: "https://www.google.com/maps/place/18%C2%B049'23.5%22N+98%C2%B006'09.3%22E/@18.8229494,98.1017938,672m/data=!3m1!1e3!4m4!3m3!8m2!3d18.8231999!4d98.1025925?entry=ttu&g_ep=EgoyMDI2MDQxNS4wIKXMDSoASAFQAw%3D%3D",
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationItem(
    BuildContext context, 
    String title, 
    String subtitle, 
    String imagePath, 
    String description, {
    String? historyEng,
    String? features,
    String? role,
    String? mystery,
    String? mapUrl,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LocationDetailScreen(
              title: title,
              imagePath: imagePath,
              description: description,
              historyEng: historyEng,
              features: features,
              role: role,
              mystery: mystery,
              mapUrl: mapUrl,
            ),
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        elevation: 3,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.asset(imagePath, height: 180, width: double.infinity, fit: BoxFit.cover),
            ),
            ListTile(
              title: Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
              subtitle: Text(subtitle),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFFC00000)),
            ),
          ],
        ),
      ),
    );
  }
}