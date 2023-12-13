import 'package:flutter/material.dart';
import 'package:trelloappclone_flutter/core/assets_manager.dart';
import 'package:trelloappclone_flutter/core/colors_manager.dart';
import 'package:trelloappclone_flutter/core/strings_manager.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Image.asset(
                    AssetsManager.logo,
                    height: 30,
                    width: 30,
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(height: 20),
                  Image.asset(
                    AssetsManager.landing,
                    height: MediaQuery.of(context).size.height * 0.4,
                    fit: BoxFit.contain,
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      StringsManager.slogan,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(StringsManager.signup),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            width: 1.0, color: ColorsManager.brandColor),
                      ),
                      child: const Text(StringsManager.login),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    StringsManager.terms,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    StringsManager.contactSupport,
                    textAlign: TextAlign.center,
                    style: TextStyle(decoration: TextDecoration.underline),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
