import 'package:flutter/material.dart';

import '../widgets/app_button.dart';
import '../widgets/app_text_field.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(
          onPressed: () => Navigator.of(context).maybePop(),
          tooltip: 'Back',
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        top: false,
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(24, 20, 24, 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 56,
                height: 56,
                decoration: BoxDecoration(
                  color: const Color(0xFFE3F3FC),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  Icons.water_drop,
                  color: colors.secondary,
                  size: 30,
                ),
              ),
              const SizedBox(height: 28),
              Text(
                'Welcome back',
                style: TextStyle(
                  color: colors.primary,
                  fontSize: 32,
                  fontWeight: FontWeight.w800,
                  letterSpacing: -0.8,
                ),
              ),
              const SizedBox(height: 8),
              const Text(
                'Sign in to continue to galon.',
                style: TextStyle(color: Color(0xFF63798D), fontSize: 16),
              ),
              const SizedBox(height: 32),
              const AppTextField(
                label: 'Email address',
                hint: 'you@example.com',
                prefixIcon: Icons.email_outlined,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: 18),
              const AppTextField(
                label: 'Password',
                hint: 'Enter your password',
                prefixIcon: Icons.lock_outline,
                obscureText: true,
                textInputAction: TextInputAction.done,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Password recovery is not set up yet.'),
                      ),
                    );
                  },
                  child: const Text('Forgot password?'),
                ),
              ),
              const SizedBox(height: 14),
              AppButton(
                label: 'Sign in',
                onPressed: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        'Connect an authentication service to sign in.',
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 26),
              const Center(
                child: Text(
                  'Your next refill is just around the corner.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF8293A3), fontSize: 13),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
