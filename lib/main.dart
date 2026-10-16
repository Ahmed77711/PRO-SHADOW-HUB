import 'package:flutter/material.dart';

void main() {
  runApp(const ProShadowHubApp());
}

class ProShadowHubApp extends StatelessWidget {
  const ProShadowHubApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PRO SHADOW HUB',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF030712),
        colorScheme: const ColorScheme.dark(
          primary: Color(0xFF3B82F6),
          secondary: Color(0xFF10B981),
          surface: Color(0xFF0F172A),
        ),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final String telegramUrl = 'https://t.me/+ADCq_-JXiuE3NGU0';

  final List<Map<String, dynamic>> itemsList = [
    {
      'title': '💳 طريقة إضافة فيزا وهمية مفعلة',
      'subtitle': 'شرح مباشر لطريقة إنشاء وتفعيل الفيزا الوهمية',
      'url': 'https://www.youtube.com/results?search_query=طريقة+عمل+فيزا+وهمية+تفعيل+سوق+بلاي',
      'icon': Icons.credit_card_rounded,
      'color': const Color(0xFF10B981),
    },
    {
      'title': '🇺🇸 طريقة صنع حساب أمريكي احترافي',
      'subtitle': 'دليل خطوة بخطوة لإنشاء متجر وحساب أمريكي بالكامل',
      'url': 'https://www.youtube.com/results?search_query=طريقة+انشاء+حساب+أمريكي+سوق+بلاي',
      'icon': Icons.flag_rounded,
      'color': const Color(0xFF3B82F6),
    },
    {
      'title': '🇯🇵 طريقة صنع حساب ياباني مميز',
      'subtitle': 'شرح كيفية فتح حساب ياباني للحصول على الألعاب الحصرية',
      'url': 'https://www.youtube.com/results?search_query=طريقة+انشاء+حساب+ياباني+سوق+بلاي',
      'icon': Icons.language_rounded,
      'color': const Color(0xFFEF4444),
    },
    {
      'title': '📦 طريقة اظهار صندوق 400',
      'subtitle': 'شرح مفصل لطريقة إظهار صندوق 400 وحل المشاكل التقنية',
      'url': 'https://www.youtube.com/results?search_query=طريقة+اظهار+صندوق+400',
      'icon': Icons.inventory_2_rounded,
      'color': const Color(0xFFF59E0B),
    },
    {
      'title': '🎬 أفلام متنوعة وحصرية',
      'subtitle': 'مجموعة واسعة من أقوى الأفلام والإنتاجات العالمية',
      'url': 'https://www.youtube.com/results?search_query=فيلم+كامل+HD',
      'icon': Icons.movie_filter_rounded,
      'color': const Color(0xFF8B5CF6),
    },
    {
      'title': '😂 أفلام كوميدية مضحكة',
      'subtitle': 'اضحك من قلبك مع أفضل الأفلام الكوميدية العربية',
      'url': 'https://www.youtube.com/results?search_query=فيلم+كوميدي+عربي+كامل',
      'icon': Icons.emoji_emotions_rounded,
      'color': const Color(0xFFFF7043),
    
    
 

  @override
  Widget build(BuildContext context)

      appBar: AppBar(
        title: const Text(
          'PRO SHADOW HUB',
          style: TextStyle(fontWeight: FontWeight.w900, letterSpacing: 2.0, color: Colors.amberAccent),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF090D16),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.send_rounded, color: Color(0xFF3B82F6)),
            onPressed: () => openExternalUrl(context, telegramUrl),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Color(0xFF1E1B4B), Color(0xFF0F172A)],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(color: Colors.amberAccent.withOpacity(0.2)),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 26,
                    backgroundColor: Color(0xFF3B82F6),
                    child: Icon(Icons.star_rounded, color: Colors.amberAccent, size: 30),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text('منصة الشروحات والترفيه', style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold, color: Colors.white)),
                        SizedBox(height: 4),
                        Text('تجربة استثنائية وشروحات حصرية', style: TextStyle(fontSize: 12, color: Colors.white70)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              onPressed: () => openExternalUrl(context, telegramUrl),
              icon: const Icon(Icons.telegram, color: Colors.white),
              label: const Text('انضم إلى مجموعة التيليجرام', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0088cc),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton.icon(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TasksScreen()));
              },
              icon: const Icon(Icons.military_tech_rounded, color: Colors.amberAccent),
              label: const Text('مركز المهام والربح (Bybit)', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1E293B),
                side: const BorderSide(color: Colors.amberAccent),
                padding: const EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              ),
            ),
            const SizedBox(height: 24),
            const Text(
              '🔥 الأقسام والشروحات',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            const SizedBox(height: 12),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: itemsList.length,
              itemBuilder: (context, index) {
                final item = itemsList[index];
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  decoration: BoxDecoration(
                    color: const Color(0xFF0F172A),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.white.withOpacity(0.06)),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    leading: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: (item['color'] as Color).withOpacity(0.15),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(item['icon'], color: item['color'], size: 26),
                    ),
                    title: Text(item['title'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white)),
                    subtitle: Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: Text(item['subtitle'], style: const TextStyle(color: Colors.white60, fontSize: 11)),
                    ),
                    trailing: const Icon(Icons.play_circle_fill_rounded, color: Colors.redAccent, size: 36),
                    onTap: () => openExternalUrl(context, item['url']),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }


class TasksScreen extends StatefulWidget 
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() =>
