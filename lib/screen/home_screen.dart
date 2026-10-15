import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  void _openLogin(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute<void>(builder: (_) => const LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 28),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    width: 44,
                    height: 44,
                    decoration: BoxDecoration(
                      color: const Color(0xFFE3F3FC),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: Icon(Icons.water_drop, color: colors.secondary),
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'galon',
                    style: TextStyle(
                      color: colors.primary,
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      letterSpacing: -0.7,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () => _openLogin(context),
                    tooltip: 'Sign in',
                    icon: Icon(
                      Icons.account_circle_outlined,
                      color: colors.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 44),
              Text(
                'Fresh water,\nmade simple.',
                style: TextStyle(
                  color: colors.primary,
                  fontSize: 38,
                  height: 1.12,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -1.1,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Your everyday hydration, delivered right to your door.',
                style: TextStyle(
                  color: Color(0xFF63798D),
                  fontSize: 16,
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 28),
              Container(
                width: double.infinity,
                height: 230,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [Color(0xFF1C6FA6), Color(0xFF45B8D5)],
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                  ),
                  borderRadius: BorderRadius.circular(28),
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      right: -28,
                      top: -48,
                      child: _bubble(150, Colors.white.withValues(alpha: 0.10)),
                    ),
                    Positioned(
                      left: -18,
                      bottom: -54,
                      child: _bubble(150, Colors.white.withValues(alpha: 0.10)),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 98,
                          height: 98,
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.18),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.water_drop,
                            size: 58,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 16),
                        const Text(
                          'A little refresh, on your schedule.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              AppButton(
                label: 'Get started',
                icon: Icons.arrow_forward,
                onPressed: () => _openLogin(context),
              ),
              const SizedBox(height: 20),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    const Text(
                      'Already have an account? ',
                      style: TextStyle(color: Color(0xFF63798D)),
                    ),
                    TextButton(
                      onPressed: () => _openLogin(context),
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bubble(double size, Color color) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
    );
  }
}
