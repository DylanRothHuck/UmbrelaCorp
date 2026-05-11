import 'package:flutter/material.dart';
void main() {
  runApp(const ReinoApp());
}

class ReinoApp extends StatelessWidget {
  const ReinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reino',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.amber,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          color: Colors.black.withAlpha(120),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'REINO',
                  style: TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 12,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 20,
                        color: Colors.black87,
                        offset: Offset(4, 4),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 60),
                _MenuButton(
                  label: 'PLAY',
                  icon: Icons.play_arrow_rounded,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                _MenuButton(
                  label: 'SETTINGS',
                  icon: Icons.settings_rounded,
                  onTap: () {},
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _MenuButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final VoidCallback onTap;

  const _MenuButton({
    required this.label,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 260,
      height: 56,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white.withAlpha(30),
          foregroundColor: Colors.white,
          side: const BorderSide(color: Colors.white54, width: 1.5),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          elevation: 4,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                letterSpacing: 4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
