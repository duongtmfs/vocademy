import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fa.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_my.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_so.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_tw.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_ur.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fa'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('my'),
    Locale('pt'),
    Locale('ru'),
    Locale('so'),
    Locale('tr'),
    Locale('tw'),
    Locale('uk'),
    Locale('ur'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// Choose your Native Language
  ///
  /// In en, this message translates to:
  /// **'Choose your Native Language'**
  String get chooseYourNativeLanguage;

  /// Search language
  ///
  /// In en, this message translates to:
  /// **'Search language'**
  String get searchLanguage;

  /// No language found
  ///
  /// In en, this message translates to:
  /// **'No language found'**
  String get noLanguageFound;

  /// All languages
  ///
  /// In en, this message translates to:
  /// **'All languages'**
  String get allLanguages;

  /// Current language
  ///
  /// In en, this message translates to:
  /// **'Current language'**
  String get currentLanguage;

  /// Current
  ///
  /// In en, this message translates to:
  /// **'Current'**
  String get current;

  /// Answer:
  ///
  /// In en, this message translates to:
  /// **'Answer:'**
  String get answer;

  /// Meaning:
  ///
  /// In en, this message translates to:
  /// **'Meaning:'**
  String get meaning;

  /// Check
  ///
  /// In en, this message translates to:
  /// **'Check'**
  String get check;

  /// Correct
  ///
  /// In en, this message translates to:
  /// **'Correct'**
  String get correct;

  /// Incorrect
  ///
  /// In en, this message translates to:
  /// **'Incorrect'**
  String get incorrect;

  /// Understand
  ///
  /// In en, this message translates to:
  /// **'Understand'**
  String get understand;

  /// You're doing amazing!
  ///
  /// In en, this message translates to:
  /// **'You\'re doing amazing!'**
  String get youReDoingAmazing;

  /// Keep going to learn more words!
  ///
  /// In en, this message translates to:
  /// **'Keep going to learn more words!'**
  String get keepGoingToLearnMoreWords;

  /// Well done!
  ///
  /// In en, this message translates to:
  /// **'Well done!'**
  String get wellDone;

  /// You just learned
  ///
  /// In en, this message translates to:
  /// **'You just learned'**
  String get youJustLearned;

  /// 5 new words
  ///
  /// In en, this message translates to:
  /// **'5 new words'**
  String get text5NewWords;

  /// Now let’s see if they stick. Time for a quick practice round!
  ///
  /// In en, this message translates to:
  /// **'Now let’s see if they stick. Time for a quick practice round!'**
  String get nowLetSSeeIfTheyStickTime;

  /// Let's go!
  ///
  /// In en, this message translates to:
  /// **'Let\'s go!'**
  String get letSGo;

  /// Next lesson
  ///
  /// In en, this message translates to:
  /// **'Next lesson'**
  String get nextLesson;

  /// Choose your answer
  ///
  /// In en, this message translates to:
  /// **'Choose your answer'**
  String get chooseYourAnswer;

  /// ✅ Correct (Praise)
  ///
  /// In en, this message translates to:
  /// **'✅ Correct (Praise)'**
  String get correctPraise;

  /// Awesome!
  ///
  /// In en, this message translates to:
  /// **'Awesome!'**
  String get awesome;

  /// Nicely done!
  ///
  /// In en, this message translates to:
  /// **'Nicely done!'**
  String get nicelyDone;

  /// You got it!
  ///
  /// In en, this message translates to:
  /// **'You got it!'**
  String get youGotIt;

  /// Excellent!
  ///
  /// In en, this message translates to:
  /// **'Excellent!'**
  String get excellent;

  /// Perfect!
  ///
  /// In en, this message translates to:
  /// **'Perfect!'**
  String get perfect;

  /// ❌ Incorrect (Encouragement)
  ///
  /// In en, this message translates to:
  /// **'❌ Incorrect (Encouragement)'**
  String get incorrectEncouragement;

  /// Not quite!
  ///
  /// In en, this message translates to:
  /// **'Not quite!'**
  String get notQuite;

  /// Keep trying!
  ///
  /// In en, this message translates to:
  /// **'Keep trying!'**
  String get keepTrying;

  /// Almost there!
  ///
  /// In en, this message translates to:
  /// **'Almost there!'**
  String get almostThere;

  /// Don't give up!
  ///
  /// In en, this message translates to:
  /// **'Don\'t give up!'**
  String get donTGiveUp;

  /// So close!
  ///
  /// In en, this message translates to:
  /// **'So close!'**
  String get soClose;

  /// Tap to start recording
  ///
  /// In en, this message translates to:
  /// **'Tap to start recording'**
  String get tapToStartRecording;

  /// Sending...
  ///
  /// In en, this message translates to:
  /// **'Sending...'**
  String get sending;

  /// Tap to stop
  ///
  /// In en, this message translates to:
  /// **'Tap to stop'**
  String get tapToStop;

  /// Recording...Tap to stop
  ///
  /// In en, this message translates to:
  /// **'Recording...Tap to stop'**
  String get recordingTapToStop;

  /// Resume your session?
  ///
  /// In en, this message translates to:
  /// **'Resume your session?'**
  String get resumeYourSession;

  /// Cancel
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Continue
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue2;

  /// Choose a topic to learn
  ///
  /// In en, this message translates to:
  /// **'Choose a topic to learn'**
  String get chooseATopicToLearn;

  /// Learn Words Easy
  ///
  /// In en, this message translates to:
  /// **'Learn Words Easy'**
  String get learnWordsEasy;

  /// Learn vocabulary with fun short videos and interactive practice.
  ///
  /// In en, this message translates to:
  /// **'Learn vocabulary with fun short videos and interactive practice.'**
  String get learnVocabularyWithFunShortVideosAndInteractive;

  /// Start
  ///
  /// In en, this message translates to:
  /// **'Start'**
  String get start;

  /// Would you like to practice more?
  ///
  /// In en, this message translates to:
  /// **'Would you like to practice more?'**
  String get wouldYouLikeToPracticeMore;

  /// Yes, let’s practice more
  ///
  /// In en, this message translates to:
  /// **'Yes, let’s practice more'**
  String get yesLetSPracticeMore;

  /// No, maybe later
  ///
  /// In en, this message translates to:
  /// **'No, maybe later'**
  String get noMaybeLater;

  /// Correct answers
  ///
  /// In en, this message translates to:
  /// **'Correct answers'**
  String get correctAnswers;

  /// Wrong answers
  ///
  /// In en, this message translates to:
  /// **'Wrong answers'**
  String get wrongAnswers;

  /// Words to practice
  ///
  /// In en, this message translates to:
  /// **'Words to practice'**
  String get wordsToPractice;

  /// Practice more
  ///
  /// In en, this message translates to:
  /// **'Practice more'**
  String get practiceMore;

  /// Back to home
  ///
  /// In en, this message translates to:
  /// **'Back to home'**
  String get backToHome;

  /// Great job!
  ///
  /// In en, this message translates to:
  /// **'Great job!'**
  String get greatJob;

  /// You did better than yesterday.
  ///
  /// In en, this message translates to:
  /// **'You did better than yesterday.'**
  String get youDidBetterThanYesterday;

  /// Well done!
  ///
  /// In en, this message translates to:
  /// **'Well done!'**
  String get wellDone2;

  /// You are making progress every day.
  ///
  /// In en, this message translates to:
  /// **'You are making progress every day.'**
  String get youAreMakingProgressEveryDay;

  /// Nice work!
  ///
  /// In en, this message translates to:
  /// **'Nice work!'**
  String get niceWork;

  /// You are getting better with every lesson.
  ///
  /// In en, this message translates to:
  /// **'You are getting better with every lesson.'**
  String get youAreGettingBetterWithEveryLesson;

  /// Keep it up!
  ///
  /// In en, this message translates to:
  /// **'Keep it up!'**
  String get keepItUp;

  /// Your hard work is paying off.
  ///
  /// In en, this message translates to:
  /// **'Your hard work is paying off.'**
  String get yourHardWorkIsPayingOff;

  /// Amazing effort!
  ///
  /// In en, this message translates to:
  /// **'Amazing effort!'**
  String get amazingEffort;

  /// You are one step ahead of yesterday.
  ///
  /// In en, this message translates to:
  /// **'You are one step ahead of yesterday.'**
  String get youAreOneStepAheadOfYesterday;

  /// Ooof, so close! Give it another shot!
  ///
  /// In en, this message translates to:
  /// **'Ooof, so close! Give it another shot!'**
  String get ooofSoCloseGiveItAnotherShot;

  /// Wrong, but hey, I've been there too! 😅
  ///
  /// In en, this message translates to:
  /// **'Wrong, but hey, I\'ve been there too! 😅'**
  String get wrongButHeyIVeBeenThereToo;

  /// Oops! Your brain's just warming up, try again!
  ///
  /// In en, this message translates to:
  /// **'Oops! Your brain\'s just warming up, try again!'**
  String get oopsYourBrainSJustWarmingUpTry;

  /// Not quite, but I respect the effort! ❤️
  ///
  /// In en, this message translates to:
  /// **'Not quite, but I respect the effort! ❤️'**
  String get notQuiteButIRespectTheEffort;

  /// Missed it, but champions keep swinging!
  ///
  /// In en, this message translates to:
  /// **'Missed it, but champions keep swinging!'**
  String get missedItButChampionsKeepSwinging;

  /// Wrong answer, but you're still awesome 😘
  ///
  /// In en, this message translates to:
  /// **'Wrong answer, but you\'re still awesome 😘'**
  String get wrongAnswerButYouReStillAwesome;

  /// Not right, but you're learning — that's the win!
  ///
  /// In en, this message translates to:
  /// **'Not right, but you\'re learning — that\'s the win!'**
  String get notRightButYouReLearningThatS;

  /// Not this time, but the next one is yours!
  ///
  /// In en, this message translates to:
  /// **'Not this time, but the next one is yours!'**
  String get notThisTimeButTheNextOneIs;

  /// Awww so close! Don't give up now!
  ///
  /// In en, this message translates to:
  /// **'Awww so close! Don\'t give up now!'**
  String get awwwSoCloseDonTGiveUpNow;

  /// Wrong, but now you'll never forget it 😏
  ///
  /// In en, this message translates to:
  /// **'Wrong, but now you\'ll never forget it 😏'**
  String get wrongButNowYouLlNeverForgetIt;

  /// No stress! Take a breath and keep going!
  ///
  /// In en, this message translates to:
  /// **'No stress! Take a breath and keep going!'**
  String get noStressTakeABreathAndKeepGoing;

  /// Missed! But I can tell you're really trying!
  ///
  /// In en, this message translates to:
  /// **'Missed! But I can tell you\'re really trying!'**
  String get missedButICanTellYouReReally;

  /// One wrong answer doesn't define you, okay?
  ///
  /// In en, this message translates to:
  /// **'One wrong answer doesn\'t define you, okay?'**
  String get oneWrongAnswerDoesnTDefineYouOkay;

  /// Totally off, but you're still cool with me 😎
  ///
  /// In en, this message translates to:
  /// **'Totally off, but you\'re still cool with me 😎'**
  String get totallyOffButYouReStillCoolWith;

  /// You're still here trying — that's what matters!
  ///
  /// In en, this message translates to:
  /// **'You\'re still here trying — that\'s what matters!'**
  String get youReStillHereTryingThatSWhat;

  /// Not yet! And "yet" is a powerful word!
  ///
  /// In en, this message translates to:
  /// **'Not yet! And \"yet\" is a powerful word!'**
  String get notYetAndYetIsAPowerfulWord;

  /// Mistakes today turn into wins tomorrow! 🤝
  ///
  /// In en, this message translates to:
  /// **'Mistakes today turn into wins tomorrow! 🤝'**
  String get mistakesTodayTurnIntoWinsTomorrow;

  /// Shake it off, the next one's calling your name!
  ///
  /// In en, this message translates to:
  /// **'Shake it off, the next one\'s calling your name!'**
  String get shakeItOffTheNextOneSCalling;

  /// Missed it, but I've got a feeling about the next one!
  ///
  /// In en, this message translates to:
  /// **'Missed it, but I\'ve got a feeling about the next one!'**
  String get missedItButIVeGotAFeeling;

  /// Wrong, but never wrong for trying — I've got you! 💛
  ///
  /// In en, this message translates to:
  /// **'Wrong, but never wrong for trying — I\'ve got you! 💛'**
  String get wrongButNeverWrongForTryingIVe;

  /// Not quite, but you're closer than you think!
  ///
  /// In en, this message translates to:
  /// **'Not quite, but you\'re closer than you think!'**
  String get notQuiteButYouReCloserThanYou;

  /// Missed it! But that's how the magic happens!
  ///
  /// In en, this message translates to:
  /// **'Missed it! But that\'s how the magic happens!'**
  String get missedItButThatSHowTheMagic;

  /// Wrong, but don't worry — I still got snacks for ya! 🍪
  ///
  /// In en, this message translates to:
  /// **'Wrong, but don\'t worry — I still got snacks for ya! 🍪'**
  String get wrongButDonTWorryIStillGot;

  /// Oops! Even pros mess up, you're in good company!
  ///
  /// In en, this message translates to:
  /// **'Oops! Even pros mess up, you\'re in good company!'**
  String get oopsEvenProsMessUpYouReIn;

  /// Not this one, but you're growing with every try!
  ///
  /// In en, this message translates to:
  /// **'Not this one, but you\'re growing with every try!'**
  String get notThisOneButYouReGrowingWith;

  /// Aww, missed! Your brain's just stretching, that's all!
  ///
  /// In en, this message translates to:
  /// **'Aww, missed! Your brain\'s just stretching, that\'s all!'**
  String get awwMissedYourBrainSJustStretchingThat;

  /// Wrong, but trying beats giving up every single time!
  ///
  /// In en, this message translates to:
  /// **'Wrong, but trying beats giving up every single time!'**
  String get wrongButTryingBeatsGivingUpEverySingle;

  /// Not right, but hey — at least you're not boring! 😎
  ///
  /// In en, this message translates to:
  /// **'Not right, but hey — at least you\'re not boring! 😎'**
  String get notRightButHeyAtLeastYouRe;

  /// Missed it! But mistakes are just future wins in disguise!
  ///
  /// In en, this message translates to:
  /// **'Missed it! But mistakes are just future wins in disguise!'**
  String get missedItButMistakesAreJustFutureWins;

  /// Not correct, but I'm still cheering loud over here! 📣
  ///
  /// In en, this message translates to:
  /// **'Not correct, but I\'m still cheering loud over here! 📣'**
  String get notCorrectButIMStillCheeringLoud;

  /// Today's goal
  ///
  /// In en, this message translates to:
  /// **'Today\'s goal'**
  String get todaySGoal;

  /// %s words
  ///
  /// In en, this message translates to:
  /// **'%s words'**
  String get sWords;

  /// Word %s
  ///
  /// In en, this message translates to:
  /// **'Word %s'**
  String get wordS;

  /// %s lessons completed
  ///
  /// In en, this message translates to:
  /// **'%s lessons completed'**
  String get sLessonsCompleted;

  /// LESSON %s
  ///
  /// In en, this message translates to:
  /// **'LESSON %s'**
  String get lessonS;

  /// UNIT %s
  ///
  /// In en, this message translates to:
  /// **'UNIT %s'**
  String get unitS;

  /// ~%s minutes
  ///
  /// In en, this message translates to:
  /// **'~%s minutes'**
  String get sMinutes;

  /// %s new words
  ///
  /// In en, this message translates to:
  /// **'%s new words'**
  String get sNewWords;

  /// Start lesson %s
  ///
  /// In en, this message translates to:
  /// **'Start lesson %s'**
  String get startLessonS;

  /// Tap to listen again
  ///
  /// In en, this message translates to:
  /// **'Tap to listen again'**
  String get tapToListenAgain;

  /// Tap to answer
  ///
  /// In en, this message translates to:
  /// **'Tap to answer'**
  String get tapToAnswer;

  /// EXAMPLE
  ///
  /// In en, this message translates to:
  /// **'EXAMPLE'**
  String get example;

  /// PRACTICE IN CONTEXT
  ///
  /// In en, this message translates to:
  /// **'PRACTICE IN CONTEXT'**
  String get practiceInContext;

  /// Let's revisit the %s words you just learned!
  ///
  /// In en, this message translates to:
  /// **'Let\'s revisit the %s words you just learned!'**
  String get letSRevisitTheSWordsYouJust;

  /// Fun activities are waiting. No hints this time. You've got this!
  ///
  /// In en, this message translates to:
  /// **'Fun activities are waiting. No hints this time. You\'ve got this!'**
  String get funActivitiesAreWaitingNoHintsThisTime;

  /// Fill in the blank
  ///
  /// In en, this message translates to:
  /// **'Fill in the blank'**
  String get fillInTheBlank;

  /// Listen and repeat
  ///
  /// In en, this message translates to:
  /// **'Listen and repeat'**
  String get listenAndRepeat;

  /// Rearrange
  ///
  /// In en, this message translates to:
  /// **'Rearrange'**
  String get rearrange;

  /// Match pictures
  ///
  /// In en, this message translates to:
  /// **'Match pictures'**
  String get matchPictures;

  /// Translate
  ///
  /// In en, this message translates to:
  /// **'Translate'**
  String get translate;

  /// Let's practice
  ///
  /// In en, this message translates to:
  /// **'Let\'s practice'**
  String get letSPractice;

  /// COMBO
  ///
  /// In en, this message translates to:
  /// **'COMBO'**
  String get combo;

  /// %s consecutive correct answers
  ///
  /// In en, this message translates to:
  /// **'%s consecutive correct answers'**
  String get sConsecutiveCorrectAnswers;

  /// Bonus +%s XP
  ///
  /// In en, this message translates to:
  /// **'Bonus +%s XP'**
  String get bonusSXp;

  /// Continue automatically ...
  ///
  /// In en, this message translates to:
  /// **'Continue automatically ...'**
  String get continueAutomatically;

  /// YOU SHOULD SAY
  ///
  /// In en, this message translates to:
  /// **'YOU SHOULD SAY'**
  String get youShouldSay;

  /// XP earned
  ///
  /// In en, this message translates to:
  /// **'XP earned'**
  String get xpEarned;

  /// Duration
  ///
  /// In en, this message translates to:
  /// **'Duration'**
  String get duration;

  /// %s words learned
  ///
  /// In en, this message translates to:
  /// **'%s words learned'**
  String get sWordsLearned;

  /// Do you want to retry wrong answers?
  ///
  /// In en, this message translates to:
  /// **'Do you want to retry wrong answers?'**
  String get doYouWantToRetryWrongAnswers;

  /// Yes, let's practice more
  ///
  /// In en, this message translates to:
  /// **'Yes, let\'s practice more'**
  String get yesLetSPracticeMore2;

  /// Current lesson
  ///
  /// In en, this message translates to:
  /// **'Current lesson'**
  String get currentLesson;

  /// This is your current lesson. Complete it to unlock the next lesson.
  ///
  /// In en, this message translates to:
  /// **'This is your current lesson. Complete it to unlock the next lesson.'**
  String get thisIsYourCurrentLessonCompleteItTo;

  /// Got it
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get gotIt;

  /// Start learning now
  ///
  /// In en, this message translates to:
  /// **'Start learning now'**
  String get startLearningNow;

  /// Tap this button to watch the first vocabulary video
  ///
  /// In en, this message translates to:
  /// **'Tap this button to watch the first vocabulary video'**
  String get tapThisButtonToWatchTheFirstVocabulary;

  /// Let's start
  ///
  /// In en, this message translates to:
  /// **'Let\'s start'**
  String get letSStart;

  /// Learn vocabulary through 5-second AI videos
  ///
  /// In en, this message translates to:
  /// **'Learn vocabulary through 5-second AI videos'**
  String get learnVocabularyThrough5SecondAiVideos;

  /// Watch the illustrated video. Guess the meaning. Lock it in with spaced repetition.
  ///
  /// In en, this message translates to:
  /// **'Watch the illustrated video. Guess the meaning. Lock it in with spaced repetition.'**
  String get watchTheIllustratedVideoGuessTheMeaningLock;

  /// Learn vocabulary through short videos
  ///
  /// In en, this message translates to:
  /// **'Learn vocabulary through short videos'**
  String get learnVocabularyThroughShortVideos;

  /// Exit lesson?
  ///
  /// In en, this message translates to:
  /// **'Exit lesson?'**
  String get exitLesson;

  /// Your progress won't be saved.
  ///
  /// In en, this message translates to:
  /// **'Your progress won\'t be saved.'**
  String get yourProgressWonTBeSaved;

  /// Continue learning
  ///
  /// In en, this message translates to:
  /// **'Continue learning'**
  String get continueLearning;

  /// Exit
  ///
  /// In en, this message translates to:
  /// **'Exit'**
  String get exit;

  /// Why are you leaving?
  ///
  /// In en, this message translates to:
  /// **'Why are you leaving?'**
  String get whyAreYouLeaving;

  /// Your feedback helps Vocademy improve
  ///
  /// In en, this message translates to:
  /// **'Your feedback helps Vocademy improve'**
  String get yourFeedbackHelpsVocademyImprove;

  /// Technical Issues
  ///
  /// In en, this message translates to:
  /// **'Technical Issues'**
  String get technicalIssues;

  /// App crashes, videos won't play, display issues, etc.
  ///
  /// In en, this message translates to:
  /// **'App crashes, videos won\'t play, display issues, etc.'**
  String get appCrashesVideosWonTPlayDisplayIssues;

  /// Content issues
  ///
  /// In en, this message translates to:
  /// **'Content issues'**
  String get contentIssues;

  /// Too hard/easy, not engaging, etc.
  ///
  /// In en, this message translates to:
  /// **'Too hard/easy, not engaging, etc.'**
  String get tooHardEasyNotEngagingEtc;

  /// Other reason
  ///
  /// In en, this message translates to:
  /// **'Other reason'**
  String get otherReason;

  /// Need a break, busy right now, etc.
  ///
  /// In en, this message translates to:
  /// **'Need a break, busy right now, etc.'**
  String get needABreakBusyRightNowEtc;

  /// Skip
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// Do you like Vocademy?
  ///
  /// In en, this message translates to:
  /// **'Do you like Vocademy?'**
  String get doYouLikeVocademy;

  /// Yes, I love it
  ///
  /// In en, this message translates to:
  /// **'Yes, I love it'**
  String get yesILoveIt;

  /// It's just okay
  ///
  /// In en, this message translates to:
  /// **'It\'s just okay'**
  String get itSJustOkay;

  /// No, I don't like it at all
  ///
  /// In en, this message translates to:
  /// **'No, I don\'t like it at all'**
  String get noIDonTLikeItAtAll;

  /// Is the vocabulary suitable for your level?
  ///
  /// In en, this message translates to:
  /// **'Is the vocabulary suitable for your level?'**
  String get isTheVocabularySuitableForYourLevel;

  /// No, it's too easy
  ///
  /// In en, this message translates to:
  /// **'No, it\'s too easy'**
  String get noItSTooEasy;

  /// Yes, it's just right
  ///
  /// In en, this message translates to:
  /// **'Yes, it\'s just right'**
  String get yesItSJustRight;

  /// No, it's too difficult
  ///
  /// In en, this message translates to:
  /// **'No, it\'s too difficult'**
  String get noItSTooDifficult;

  /// Thank you for your feedback!
  ///
  /// In en, this message translates to:
  /// **'Thank you for your feedback!'**
  String get thankYouForYourFeedback;

  /// We'll use it to make Vocademy better.
  ///
  /// In en, this message translates to:
  /// **'We\'ll use it to make Vocademy better.'**
  String get weLlUseItToMakeVocademyBetter;

  /// Your feedback helps us improve.
  ///
  /// In en, this message translates to:
  /// **'Your feedback helps us improve.'**
  String get yourFeedbackHelpsUsImprove;

  /// Tell us in a few words — every detail helps.
  ///
  /// In en, this message translates to:
  /// **'Tell us in a few words — every detail helps.'**
  String get tellUsInAFewWordsEveryDetail;

  /// Submit
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get submit;

  /// What do you like most?
  ///
  /// In en, this message translates to:
  /// **'What do you like most?'**
  String get whatDoYouLikeMost;

  /// What's one thing that would make this better?
  ///
  /// In en, this message translates to:
  /// **'What\'s one thing that would make this better?'**
  String get whatSOneThingThatWouldMakeThis;

  /// What don't you like?
  ///
  /// In en, this message translates to:
  /// **'What don\'t you like?'**
  String get whatDonTYouLike;

  /// Continue
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continueAction;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'bn',
    'de',
    'en',
    'es',
    'fa',
    'fr',
    'hi',
    'id',
    'it',
    'ja',
    'ko',
    'my',
    'pt',
    'ru',
    'so',
    'tr',
    'tw',
    'uk',
    'ur',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'bn':
      return AppLocalizationsBn();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fa':
      return AppLocalizationsFa();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'my':
      return AppLocalizationsMy();
    case 'pt':
      return AppLocalizationsPt();
    case 'ru':
      return AppLocalizationsRu();
    case 'so':
      return AppLocalizationsSo();
    case 'tr':
      return AppLocalizationsTr();
    case 'tw':
      return AppLocalizationsTw();
    case 'uk':
      return AppLocalizationsUk();
    case 'ur':
      return AppLocalizationsUr();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
