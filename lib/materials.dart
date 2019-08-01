import 'package:flutter/material.dart';

int questionIndex = 0;
int score = 0;
final Color color1 = Colors.black87;
final Color color2 = Colors.purple;
final Color color3 = Colors.white;
final Color color4 = Colors.black;
final source = const [
  {
    'question': 'Android Is Developed By?',
    'answers': ['Apple', 'Microsoft', 'Google', 'Android Inc'],
    'correct': 'Android Inc',
  },
  {
    'question': 'Android Web Browser Is Based On?',
    'answers': ['Chrome', 'Open-source Webkit', 'Safari', 'Firefox'],
    'correct': 'Open-source Webkit',
  },
  {
    'question': 'Android Is Based On Which Kernal?',
    'answers': ['Linux', 'Windows', 'Mac', 'Redhat'],
    'correct': 'Linux'
  },
  {
    'question': 'What Are The Functionalities In AsyncTask In Android?',
    'answers': ['OnPreExecution()', 'OnPostExecution()', 'DoInBackground()', 'OnProgressUpdate()'],
    'correct': 'OnPostExecution()',
  },
  {
    'question': 'Which Media Format Is Not Supported By Android?',
    'answers': ['MP4', 'AVI', 'MIDI', 'MPEG'],
    'correct': 'AVI',
  },
  {
    'question': 'In Which Directory XML Layout Files Are Stored?',
    'answers': ['/assets', '/src', '/res/values', '/res/layout'],
    'correct': '/res/layout'
  },
  {
    'question': 'Which Code Used By Android Is Not A Open Source?',
    'answers': ['Video Driver', 'WiFi Driver', 'Device Driver', 'Bluetooth Driver'],
    'correct': 'WiFi Driver',
  },
  {
    'question': 'How Many Levels Of Securities Are In Android?',
    'answers': [
      'Android Level Security',
      'App And Kernel Level Security',
      'Java Level Security',
      'None Of The Above'
    ],
    'correct': 'App And Kernel Level Security',
  },
  {
    'question': 'Which Of The Following Does Not Belong To Transitions?',
    'answers': ['ViewFlipper', 'ViewAnimator', 'ViewSwitcher', 'ViewSlider'],
    'correct': 'ViewSlider'
  },
  {
    'question': 'What Does AAPT Stands For?',
    'answers': [
      'Android Asset Processing Tool',
      'Android Asset Providing Tool',
      'Android Asset Packaging Tool',
      'Android Asset Packaging Technique'
    ],
    'correct': 'Android Asset Packaging Tool'
  },
  {
    'question': 'Which Broadcast In Android Includes Information About Battery State Level?',
    'answers': [
      'Android.intent.action.BATTERY_CHANGED',
      'Android.intent.action.BATTERY_LOW',
      'Android.intent.action.BATTERY_OKAY',
      'Android.intent.action.CALL_BUTTON'
    ],
    'correct': 'Android.intent.action.BATTERY_CHANGED'
  },
  {
    'question': ' What Is JNI In Android?',
    'answers': [
      'Java Interface',
      'Java Native Interface',
      'Java Network Interface',
      'Image Editable Tool'
    ],
    'correct': 'Java Native Interface'
  },
  {
    'question': 'Adb Stands For?',
    'answers': [
      'Android Debug Bridge',
      'Android Drive Bridge',
      'Android Delete Bridge',
      'Android Destroy Bridge'
    ],
    'correct': 'Android Debug Bridge'
  },
  {
    'question': 'Which Programming Language Is Used For Android Application Development?',
    'answers': ['NodeJs', 'PHP', 'JSX', 'Java'],
    'correct': 'Java'
  },
  {
    'question': 'Action Bar Can Be Associated To?',
    'answers': [
      'Only Fragments',
      'Only Activities',
      'Both Activities And Fragments',
      'None Of The Above'
    ],
    'correct': 'Only Activities'
  },
];
