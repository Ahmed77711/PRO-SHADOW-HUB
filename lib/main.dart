import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const ShadowStoreApp());
}

class ShadowStoreApp extends StatelessWidget {
  const ShadowStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xFF0F0F0F),
        primaryColor: const Color(0xFFB5828D),
      ),
      home: const ShadowStoreScreen(),
    );
  }
}

class ShadowStoreScreen extends StatefulWidget {
  const ShadowStoreScreen({super.key});

  @override
  State<ShadowStoreScreen> createState() => _ShadowStoreScreenState();
}

class _ShadowStoreScreenState extends State<ShadowStoreScreen> {
  int _currentIndex = 0;

  final List<Map<String, dynamic>> _products = [
    {
      'title': 'متابعين تيك توك',
      'subtitle': '1000 متابع حقيقي',
      'price': '50 جنيه',
      'color': const Color(0xFFB5828D),
      'icon': Icons.music_note,
      'link': 'https://www.tiktok.com',
    },
    {
      'title': 'مشتركين يوتيوب',
      'subtitle': '1000 مشترك',
      'price': '120 جنيه',
      'color': const Color(0xFFFF0000),
      'icon': Icons.play_circle_fill,
      'link': 'https://www.youtube.com',
    },
    {
      'title': 'متابعين انستا',
      'subtitle': '1000 متابع',
      'price': '70 جنيه',
      'color': const Color(0xFFE1306C),
      'icon': Icons.camera_alt,
      'link': 'https://www.instagram.com',
    },
  ];

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('لا يمكن فتح الرابط $url')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1B27),
      appBar: AppBar(
        backgroundColor: const Color(0xFF1B1B27),
        elevation: 5,
        centerTitle: true,
        title: const Text(
          'SHADOW STORE',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
          ),
        ),
      ),
      body: _currentIndex == 0 ? _buildStore() : const TasksScreen(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: const Color(0xFF1B1B27),
        selectedItemColor: const Color(0xFFB5828D),
        unselectedItemColor: Colors.white60,
        onTap: (i) => setState(() => _currentIndex = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'المتجر'),
          BottomNavigationBarItem(icon: Icon(Icons.task_alt), label: 'المهام'),
        ],
      ),
    );
  }

  Widget _buildStore() {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.separated(
        itemCount: _products.length,
        separatorBuilder: (_, __) => const SizedBox(height: 14),
        itemBuilder: (context, index) {
          final item = _products[index];
          return Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.08),
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: Colors.white.withOpacity(0.08)),
           