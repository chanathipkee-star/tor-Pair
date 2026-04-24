import 'package:flutter/material.dart';
import 'checkin_page.dart';
import 'store_list_page.dart';
import 'homestay_list_page.dart';
import 'health_route_list_page.dart';
import 'community_experts_list_page.dart';
import 'product_list_page.dart';
import 'location_list_screen.dart';
import 'preparation_page.dart';
import 'admin_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Community App',
      theme: ThemeData(primarySwatch: Colors.green, fontFamily: 'Kanit'),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _goToCheckIn() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CheckInPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: const Text(
          "HOME",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),

      // ✅ Drawer ด้านข้าง (ครึ่งหน้าจอ)
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.55,
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.horizontal(right: Radius.circular(20)),
          ),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header: โลโก้ + ชื่อ + ปุ่มปิด
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 20, 8, 12),
                  child: Row(
                    children: [
                      ClipOval(
                        child: Image.asset(
                          'assets/images/community_store_1.jpg',
                          width: 45,
                          height: 45,
                          fit: BoxFit.cover,
                          errorBuilder: (context, e, s) => Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.green[100],
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(Icons.eco, color: Colors.green),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      const Expanded(
                        child: Text(
                          'ต่อ PAIR',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: const Icon(Icons.close, size: 24),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ],
                  ),
                ),
                const Divider(height: 1),
                // เมนูรายการ
                _buildMenuItem(
                  icon: Icons.person_outline,
                  title: 'การเตรียมตัว',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const PreparationPage()));
                  },
                ),
                _buildMenuItem(
                  icon: Icons.chat_bubble_outline,
                  title: 'Chat',
                  onTap: () {
                    Navigator.pop(context);
                    // TODO: ไปหน้า Chat
                  },
                ),
                _buildMenuItem(
                  icon: Icons.settings_outlined,
                  title: 'Admin',
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const AdminPage()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),

      // ✅ BODY
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 10),

            // 1. จุดเช็คอิน
            buildHomeCard(
              context,
              "assets/images/howto.jpg",
              "เส้นทางนิเวศวัฒนธรรมสิ่งแวดล้อม\n(Ecological and environmental)",
              "Check-in",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CheckInPage()),
                );
              },
            ),

            // 2. ของกิน
            buildHomeCard(
              context,
              "assets/images/food_dark.jpg",
              "ร้านค้า(store)",
              "store",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const StoreListPage(),
                  ),
                );
              },
            ),

            // 3. โฮมสเตย์
            buildHomeCard(
              context,
              "assets/images/homestay_dark.jpg",
              "โฮมสเตย์ (Homestay)",
              "Homestay",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomestayListPage(),
                  ),
                );
              },
            ),

            // 4. นิเวศสุขภาพ
            buildHomeCard(
              context,
              "assets/images/health.jpg",
              "เส้นทางนิเวศสุขภาพ (Ecological Health)",
              "Ecological Health",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HealthRouteListPage(),
                  ),
                );
              },
            ),

            // 5. ผู้เชี่ยวชาญ
            buildHomeCard(
              context,
              "assets/images/experts_banner.jpg",
              " ผู้เชี่ยวชาญนักปราชญ์ชุมชน(Community experts and scholars)",
              "Community experts and scholars",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CommunityExpertsListPage(),
                  ),
                );
              },
            ),

            // 5. สินค้า otop
            buildHomeCard(
              context,
              "assets/images/otop_banner.jpg",
              "สินค้า otop",
              "สินค้า otop",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductListPage(),
                  ),
                );
              },
            ),

            // 6.วัฒนธรรม
            buildHomeCard(
              context,
              "assets/images/ww2_map.jpg",
              "world war route",
              "Go world war route",
              icon: Icons.person,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const RouteListScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      // ✅ BOTTOM NAV (แก้ถูกแล้ว)
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() => _selectedIndex = index);
          if (index == 1) _goToCheckIn();
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on),
            label: "จุดเช็คอิน",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.restaurant),
            label: "ร้านค้า",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.home_work),
            label: "โฮมสเตย์",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.explore),
            label: "เส้นทางสีแดง",
          ),
        ],
      ),
    );
  }

  // ✅ Menu Item Widget
  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: Colors.black87, size: 24),
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      onTap: onTap,
      contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
    );
  }

  // ✅ Card Widget
  Widget buildHomeCard(
    BuildContext context,
    String? imagePath,
    String title,
    String buttonText, {
    IconData? icon,
    required VoidCallback onTap,
  }) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      child: Column(
        children: [
          if (imagePath != null)
            ClipRRect(
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(15),
              ),
              child: Image.asset(
                imagePath,
                height: 180,
                width: double.infinity,
                fit: BoxFit.fill,
                errorBuilder: (context, error, stackTrace) => Container(
                  height: 150,
                  color: Colors.grey[200],
                  child: const Icon(Icons.image, size: 50, color: Colors.grey),
                ),
              ),
            ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 45),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: onTap,
              icon: Icon(icon ?? Icons.ads_click),
              label: Text(buttonText, style: const TextStyle(fontSize: 16)),
            ),
          ),
        ],
      ),
    );
  }
}

class EcoHealthPage extends StatelessWidget {
  const EcoHealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("หน้านิเวศสุขภาพ")));
  }
}

class CulturalPage extends StatelessWidget {
  const CulturalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("หน้าวัฒนธรรม")));
  }
}

class ExpertPage extends StatelessWidget {
  const ExpertPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("หน้าผู้เชี่ยวชาญ")));
  }
}

class WorldWarRoutePage extends StatelessWidget {
  const WorldWarRoutePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("หน้า World War Route")));
  }
}

class OtopListPage extends StatelessWidget {
  const OtopListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("สินค้า OTOP", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text("หน้ารายการสินค้า OTOP (กำลังรอการสร้างไฟล์เต็ม)"),
      ),
    );
  }
}
