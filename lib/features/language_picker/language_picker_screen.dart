import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../generated/l10n/app_localizations.dart';
import 'models/language.dart';

class LanguagePickerScreen extends StatefulWidget {
  const LanguagePickerScreen({super.key});

  @override
  State<LanguagePickerScreen> createState() => _LanguagePickerScreenState();
}

class _LanguagePickerScreenState extends State<LanguagePickerScreen> {
  static const _currentLanguage = Language(
    code: 'vi',
    name: 'Tiếng Việt',
    flagCode: 'vi',
  );

  final TextEditingController _searchController = TextEditingController();
  late List<Language> _filteredLanguages;
  String _selectedLanguage = _currentLanguage.code;

  @override
  void initState() {
    super.initState();
    _filteredLanguages = languages;
    _searchController.addListener(_filterLanguages);
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _filterLanguages() {
    final query = _searchController.text.trim().toLowerCase();

    setState(() {
      _filteredLanguages = query.isEmpty
          ? languages
          : languages
                .where(
                  (language) =>
                      language.name.toLowerCase().contains(query) ||
                      language.code.toLowerCase().contains(query),
                )
                .toList();
    });
  }

  void _continue() {
    Navigator.of(context).pushReplacementNamed('/learning');
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 22, 22, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _Header(onDone: _continue),
              const SizedBox(height: 18),
              _SearchField(controller: _searchController),
              const SizedBox(height: 5),
              _SectionLabel(l10n.currentLanguage.toUpperCase()),
              const SizedBox(height: 9),
              _CurrentLanguageCard(language: _currentLanguage),
              const SizedBox(height: 18),
              _SectionLabel(l10n.allLanguages.toUpperCase()),
              const SizedBox(height: 10),
              Expanded(
                child: _filteredLanguages.isEmpty
                    ? Center(
                        child: Text(
                          l10n.noLanguageFound,
                          style: const TextStyle(
                            color: Color(0xFF8F8F8F),
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      )
                    : ListView.separated(
                        padding: const EdgeInsets.only(bottom: 24),
                        itemCount: _filteredLanguages.length,
                        separatorBuilder: (_, index) =>
                            const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final language = _filteredLanguages[index];

                          return _LanguageTile(
                            language: language,
                            isSelected: language.code == _selectedLanguage,
                            onTap: () {
                              setState(() {
                                _selectedLanguage = language.code;
                              });
                            },
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header({required this.onDone});

  final VoidCallback onDone;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Text(
            l10n.chooseYourNativeLanguage,
            style: const TextStyle(
              color: Color(0xFF252525),
              fontSize: 22,
              fontWeight: FontWeight.w800,
              height: 1.25,
            ),
          ),
        ),
        SizedBox(
          width: 46,
          height: 46,
          child: IconButton(
            onPressed: onDone,
            icon: const Icon(Icons.check_rounded, size: 24),
            color: Colors.white,
            tooltip: l10n.continueAction,
            style: IconButton.styleFrom(
              backgroundColor: const Color(0xFF5143B1),
              shape: const CircleBorder(),
            ),
          ),
        ),
      ],
    );
  }
}

class _SearchField extends StatelessWidget {
  const _SearchField({required this.controller});

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return SizedBox(
      height: 39,
      child: TextField(
        controller: controller,
        cursorColor: const Color(0xFF5143B1),
        decoration: InputDecoration(
          hintText: l10n.searchLanguage,
          hintStyle: const TextStyle(
            color: Color(0xFF9E9E9E),
            fontSize: 14,
            fontWeight: FontWeight.w400,
          ),
          prefixIcon: const Icon(
            Icons.search_rounded,
            color: Color(0xFF8F8F8F),
            size: 22,
          ),
          filled: true,
          fillColor: const Color(0xFFF3F2EF),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
        ),
      ),
    );
  }
}

class _SectionLabel extends StatelessWidget {
  const _SectionLabel(this.text);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 2),
      child: Text(
        text,
        style: const TextStyle(
          color: Color(0xFF5143B1),
          fontSize: 10,
          fontWeight: FontWeight.w800,
          height: 1.2,
        ),
      ),
    );
  }
}

class _CurrentLanguageCard extends StatelessWidget {
  const _CurrentLanguageCard({required this.language});

  final Language language;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context);

    return Container(
      height: 51,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        gradient: const LinearGradient(
          colors: [Color(0xFF5746C7), Color(0xFF7D70DE)],
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          _FlagIcon(flagCode: language.flagCode, size: 25),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              language.name,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              l10n.current.toUpperCase(),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 9,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(width: 22),
          const CircleAvatar(
            radius: 10,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.check_rounded,
              color: Color(0xFF6D5FDB),
              size: 17,
            ),
          ),
          const SizedBox(width: 5),
        ],
      ),
    );
  }
}

class _LanguageTile extends StatelessWidget {
  const _LanguageTile({
    required this.language,
    required this.isSelected,
    required this.onTap,
  });

  final Language language;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      borderRadius: BorderRadius.circular(13),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(13),
        child: Container(
          height: 44,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(13),
            border: Border.all(
              color: isSelected
                  ? const Color(0xFF6C5ED9)
                  : const Color(0xFFE7E7E7),
              width: isSelected ? 1.6 : 1,
            ),
            boxShadow: const [
              BoxShadow(
                color: Color(0x0A000000),
                blurRadius: 8,
                offset: Offset(0, 2),
              ),
            ],
          ),
          padding: const EdgeInsets.symmetric(horizontal: 13),
          child: Row(
            children: [
              _FlagIcon(flagCode: language.flagCode, size: 24),
              const SizedBox(width: 13),
              Expanded(
                child: Text(
                  language.name,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    color: Color(0xFF252525),
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              if (isSelected)
                const Icon(
                  Icons.check_circle_rounded,
                  color: Color(0xFF6C5ED9),
                  size: 22,
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _FlagIcon extends StatelessWidget {
  const _FlagIcon({required this.flagCode, required this.size});

  final String flagCode;
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      dimension: size,
      child: ClipOval(
        child: FittedBox(
          fit: BoxFit.cover,
          child: SizedBox(
            width: size * 1.5,
            height: size,
            child: SvgPicture.asset(
              'assets/flags/$flagCode.svg',
              fit: BoxFit.fill,
              placeholderBuilder: (_) => _FallbackFlag(size: size),
            ),
          ),
        ),
      ),
    );
  }
}

class _FallbackFlag extends StatelessWidget {
  const _FallbackFlag({required this.size});

  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      decoration: const BoxDecoration(
        color: Color(0xFF24A77A),
        shape: BoxShape.circle,
      ),
    );
  }
}
