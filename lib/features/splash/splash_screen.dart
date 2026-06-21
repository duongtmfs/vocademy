import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n/app_localizations.dart';
import '../language_picker/language_picker_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool _isOpeningLanguagePicker = false;

  void _openLanguagePicker() {
    if (_isOpeningLanguagePicker) {
      return;
    }

    _isOpeningLanguagePicker = true;
    debugPrint('Start button tapped');
    Navigator.of(context)
        .push(
          MaterialPageRoute<void>(builder: (_) => const LanguagePickerScreen()),
        )
        .whenComplete(() {
          if (mounted) {
            _isOpeningLanguagePicker = false;
          }
        });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      body: Stack(
        children: [
          // Full background image
          Positioned.fill(
            child: Image.asset(
              'assets/images/splash_bg.png',
              fit: BoxFit.fill,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF3D2DA5),
                        const Color(0xFF2A1F7D),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Content overlay on top
          SafeArea(
            child: Column(
              children: [
                // Top section - Logo + Title (horizontal)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/icons/logo.svg',
                      width: 50,
                      height: 54,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Vocademy',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        letterSpacing: -0.5,
                      ),
                    ),
                  ],
                ),
                // Spacing between header and subtitle
                const SizedBox(height: 11.7),
                // Subtitle + Button section (fixed, positioned high)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24.0),
                  child: Column(
                    children: [
                      Text(
                        l10n.learnVocabularyThroughShortVideos,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                          height: 1.3,
                        ),
                      ),
                      const SizedBox(height: 32),
                      Container(
                        width: 209,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(
                                0xFFFFCC40,
                              ).withValues(alpha: 0.3),
                              blurRadius: 12,
                              offset: const Offset(0, 8),
                            ),
                          ],
                        ),
                        child: Listener(
                          behavior: HitTestBehavior.opaque,
                          onPointerUp: (_) => _openLanguagePicker(),
                          child: DecoratedBox(
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFCC40),
                              borderRadius: BorderRadius.circular(28),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  l10n.start,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: const Color(0xFF101828),
                                  ),
                                ),
                                const SizedBox(width: 12),
                                SvgPicture.asset(
                                  'assets/icons/arrow_right.svg',
                                  width: 20,
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Expanded space at bottom to show background
                const Expanded(child: SizedBox()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
