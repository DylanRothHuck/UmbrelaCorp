import 'package:flutter/material.dart';
import '../widgets/menu_button.dart';

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
                MenuButton(
                  label: 'PLAY',
                  icon: Icons.play_arrow_rounded,
                  onTap: () {},
                ),
                const SizedBox(height: 16),
                MenuButton(
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
