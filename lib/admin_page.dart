import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({super.key});

  Future<void> _makeCall(String phone) async {
    final uri = Uri.parse('tel:$phone');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _sendSms(String phone) async {
    final uri = Uri.parse('sms:$phone');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  Future<void> _sendEmail(String email) async {
    final uri = Uri.parse('mailto:$email');
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // ส่วนหัว สีเขียว + โลโก้
          Container(
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xFF4CAF50),
              borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
            ),
            child: SafeArea(
              child: Column(
                children: [
                  // ปุ่มย้อนกลับ
                  Align(
                    alignment: Alignment.topLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),
                  // โลโก้
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                      border: Border.all(color: Colors.green.shade300, width: 3),
                      boxShadow: const [BoxShadow(color: Colors.black12, blurRadius: 8)],
                    ),
                    child: ClipOval(
                      child: Image.asset(
                        'assets/images/tor_pair_logo.jpg',
                        fit: BoxFit.cover,
                        errorBuilder: (context, e, s) => const Icon(Icons.eco, size: 50, color: Colors.green),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Admin',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),

          // รายการติดต่อ
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 16),
              children: [
                // เบอร์โทร
                _buildContactCard(
                  title: '096-078-3811',
                  subtitle: 'เบอร์',
                  actions: [
                    _buildActionButton(Icons.phone, Colors.green, () => _makeCall('0960783811')),
                    _buildActionButton(Icons.chat_bubble_outline, Colors.green, () => _sendSms('0960783811')),
                    _buildActionButton(Icons.email_outlined, Colors.green, () {}),
                  ],
                ),

                // อีเมล 1
                _buildContactCard(
                  title: 'Thanapongma11@gmail.com',
                  subtitle: '',
                  actions: [
                    _buildActionButton(Icons.email_outlined, Colors.green, () => _sendEmail('Thanapongma11@gmail.com')),
                  ],
                ),

                // อีเมล 2
                _buildContactCard(
                  title: 'chanathip.1151@gmail.com',
                  subtitle: '',
                  actions: [
                    _buildActionButton(Icons.email_outlined, Colors.green, () => _sendEmail('chanathip.1151@gmail.com')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContactCard({
    required String title,
    required String subtitle,
    required List<Widget> actions,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                ),
                if (subtitle.isNotEmpty)
                  Text(
                    subtitle,
                    style: const TextStyle(fontSize: 13, color: Colors.grey),
                  ),
              ],
            ),
          ),
          Row(children: actions),
        ],
      ),
    );
  }

  Widget _buildActionButton(IconData icon, Color color, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          width: 38,
          height: 38,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: color.withOpacity(0.3)),
          ),
          child: Icon(icon, color: color, size: 20),
        ),
      ),
    );
  }
}
