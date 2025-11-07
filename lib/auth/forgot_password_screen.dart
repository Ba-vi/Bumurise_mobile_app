import 'package:flutter/material.dart';
import 'login_screen.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const Color brandBlue = Color.fromARGB(255, 58, 108, 183);

    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: brandBlue,
        title: const Text('Forgot Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),

            // Illustration
            Center(
              child: Image.asset(
                'assets/forgot_password.png', // Add your illustration in assets folder
                height: 250,
              ),
            ),
            const SizedBox(height: 30),

            const Text(
              'Reset Your Password',
              style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Enter your email address below to receive a password reset link.',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // Email input
            const Text('Email', style: TextStyle(fontWeight: FontWeight.w500)),
            const SizedBox(height: 8),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                hintText: 'Enter your email',
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 30),

            // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: brandBlue,
                  padding: const EdgeInsets.symmetric(vertical: 14),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {
                  //  Implement password reset functionality
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Password reset link sent!'),
                    ),
                  );
                },
                child: const Text(
                  'Send Reset Link',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),

            const SizedBox(height: 20),
            // Back to login
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Remembered your password? '),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(
                      color: brandBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
