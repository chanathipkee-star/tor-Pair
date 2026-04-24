import 'package:flutter/material.dart';

class PreparationPage extends StatelessWidget {
  const PreparationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('การเตรียมตัว', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
        backgroundColor: Colors.green,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // รูปแบนเนอร์ กฎระเบียบการท่องเที่ยว
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/regulations.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, e, s) => Container(
                    height: 200,
                    color: Colors.green[50],
                    child: const Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.rule, size: 50, color: Colors.green),
                          SizedBox(height: 8),
                          Text('กฎระเบียบการท่องเที่ยว', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          Text('Tourism regulations', style: TextStyle(fontSize: 14, color: Colors.grey)),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            // หัวข้อ: ระเบียบทำเนียมการท่องเที่ยว
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'ระเบียบทำเนียมการท่องเที่ยว',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // รายการกฎ
            _buildRuleItem('1. ห้ามเผาป่า ห้ามตัดไม้ และนำไม้แปรรูปออกจากหมู่บ้าน'),
            _buildRuleItem('2. ห้ามทิ้งขยะลงในที่สาธารณะ'),
            _buildRuleItem('3. ห้ามทะเลาะวิวาทต่อยตีกัน และห้ามเล่นการพนันทุกชนิด'),
            _buildRuleItem('4. ห้ามยุ่งเกี่ยวกับยาเสพติด'),

            const SizedBox(height: 10),
            const Divider(indent: 20, endIndent: 20),

            // หัวข้อ: กฎระเบียบบ้านพักโฮมสเตย์
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'กฎระเบียบบ้านพักโฮมสเตย์',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            _buildRuleItem('1. ห้ามนำสัตว์เลี้ยงเข้ามาในบ้านพักโฮมสเตร์ ห้ามมั่วสุม เล่นการพนัน และทะเลาะวิวาท'),
            _buildRuleItem('2. ห้ามนำสิ่งผิดกฏหมายและยาเสพติดเข้ามา'),
            _buildRuleItem('3. ต้องพักอาศัย ณ ห้องพักตามที่จัดให้เท่านั้นการพักอาศัยในห้องพักอาศัยในห้องพักเป็นสิทธิเฉพาะตัวจะโอนสิทธิเฉพาะตัวจะโอนสิทธิหรือให้ผู้อื่นเข้าพักอาศัยด้วยไม่ได้'),
            _buildRuleItem('4. ห้ามครอบครองวัตถุอันตราย'),
            _buildRuleItem('5. ห้ามกระทำการอันผิดกฎหมายระบุว่าเป็นความผิดในบ้านพักอย่างเด็ดขาด'),
            _buildRuleItem('6. ห้ามเสพสุราของมึนเมาหรือสิ่งเสพติดภายในห้องและบริเวณบ้านพัก'),
            _buildRuleItem('7. ห้ามทำลายทรัพย์สินบ้านพัก เช่น รื้อถอน ดัดแปลง ต่อเติม เคลื่อนย้ายอุปกรณ์ และหากทรัพย์สินเสียหายจะต้องชำระค่าปรับตามราคาของทรัพย์สินนั้น'),
            _buildRuleItem('8. ห้ามส่งเสียงดังสร้างความรบกวน ก่อความรำคาญให้กับผู้พักอาศัยในบ้านพัก'),
            _buildRuleItem('9. ห้ามลักขโมยทรัพย์สิน หรือสิ่งของใดๆ ภายในบ้านพักหรือของผู้ที่พักอาศัยในบ้านพัก'),

            const SizedBox(height: 10),
            const Divider(indent: 20, endIndent: 20),

            // หัวข้อ: สิ่งที่ควรเตรียม
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'สิ่งที่ควรเตรียม',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            _buildCheckItem(Icons.checkroom, 'เสื้อผ้าที่เหมาะสม สุภาพ ใส่สบาย'),
            _buildCheckItem(Icons.wb_sunny, 'ครีมกันแดด หมวก แว่นตากันแดด'),
            _buildCheckItem(Icons.water_drop, 'น้ำดื่มส่วนตัว'),
            _buildCheckItem(Icons.medical_services, 'ยาประจำตัว'),
            _buildCheckItem(Icons.camera_alt, 'กล้องถ่ายรูป'),
            _buildCheckItem(Icons.hiking, 'รองเท้าที่เหมาะสำหรับเดินทาง'),
            _buildCheckItem(Icons.bug_report, 'ยาทากันยุง'),

            const SizedBox(height: 10),
            const Divider(indent: 20, endIndent: 20),

            // หัวข้อ: เอี่ยวต่อแพ แอ่วได้ตลอดปี้
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'เอี่ยวต่อแพ แอ่วได้ตลอดปี้',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            // รูปปฏิทินชุมชน
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 6)],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/calendar.jpg',
                  width: double.infinity,
                  fit: BoxFit.cover,
                  errorBuilder: (context, e, s) => Container(
                    height: 200,
                    color: Colors.green[50],
                    child: const Center(child: Icon(Icons.calendar_month, size: 50, color: Colors.green)),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 10),
            const Divider(indent: 20, endIndent: 20),

            // หัวข้อ: ต่อแพไปจะได่
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'ต่อแพไปจะได่',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 4),
              child: Text(
                'ใช้เส้นทาง 108 จากจังหวัดเชียงใหม่ไปยังอำเภอขุนยวม จังหวัดแม่ฮ่องสอนซึ่งมีทางแยกเข้าหมู่บ้านเข้าหมู่บ้านต่อแพ การเดินทาง สามารถเดินทางได้สะดวกโดยรถยนต์ รถจักรยานยนต์ อยู่ห่างจากตัวอำเภอขุนยวม ประมาณ 5 กิโลเมตร เป็นทางลาดยาง',
                style: TextStyle(fontSize: 16, height: 1.6, color: Colors.black87),
              ),
            ),

            const SizedBox(height: 10),
            const Divider(indent: 20, endIndent: 20),

            // หัวข้อ: ถามหยังแหมก่อ ถามได้ตี้
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: Text(
                'ถามหยังแหมก่อ ถามได้ตี้',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

            _buildContactItem('พระครูอนุกูลกัลยาณพจน์', '089265927'),
            _buildContactItem('นายชัยเดช สุทินกรณ์', '0839807743'),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // Widget สร้างรายการกฎ
  static Widget _buildRuleItem(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Text(
        text,
        style: const TextStyle(fontSize: 16, height: 1.5, color: Colors.black87),
      ),
    );
  }

  // Widget สร้างรายการสิ่งที่ต้องเตรียม
  static Widget _buildCheckItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Row(
        children: [
          Icon(icon, color: Colors.green, size: 22),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 16, height: 1.4),
            ),
          ),
        ],
      ),
    );
  }

  // Widget สร้างรายการติดต่อ
  static Widget _buildContactItem(String name, String phone) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
          ),
          const SizedBox(height: 2),
          Row(
            children: [
              const Icon(Icons.phone, color: Colors.green, size: 18),
              const SizedBox(width: 8),
              Text(
                phone,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
