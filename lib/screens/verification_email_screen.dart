import 'package:delivery_app/widgets/custom_text+button.dart';
import 'package:flutter/material.dart';

class VerificationEmailScreen extends StatefulWidget {
  const VerificationEmailScreen({super.key});

  @override
  State<VerificationEmailScreen> createState() =>
      _VerificationEmailScreenState();
}

class _VerificationEmailScreenState extends State<VerificationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFFF2D55),
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 20),
                    child: Image.asset(
                      "assets/email_icon.png",
                      width: 80,
                    ),
                  ),
                  Text(
                    "Verify your email address to get started",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "This helps us to mitigate fraud and keep your personal data safe",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              height: 40,
              color: Colors.grey[200],
            ),
            CustomTextButton(
              text: "Send verification email",
              onPressed: () {
                // Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) =>
                //           const LoginWithEmailScreen(),
                //     ));
              },
              isDisabled: false,
            ),
          ],
        ),
      ),
    );
  }
}
