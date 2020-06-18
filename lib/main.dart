import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:colorscreen/utils/GetRandomColor.dart';
import 'package:colorscreen/utils/InversionColor.dart';

import 'Strings.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      title: 'Flutter Screen Color',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Screen Color'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Color _colorBack = Colors.white;
  Color _colorText = Colors.black;
  static AudioCache player = new AudioCache();

  void _changeColors() {
    setState(() {
      // -GetRandomColor.allColors() - random color on r,g,b channels. alpha  = 255
      // -GetRandomColor.customColors(a, r, g, b) - if r,g,b true - the channel used in color.
      //                                - if alpha true - alpha = random / if false - alpha = 255
      _colorBack = GetRandomColor.allColors().getColor();
      //_colorBack = GetRandomColor.customColors(false, false, true, false).getColor();
      _colorText = InversionColor().getInversionColor(_colorBack);

      // SystemSound.play(SystemSoundType.click);
      // or
      player.play("sound/klac.mp3");
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _changeColors();
      },
      child: Scaffold(
        backgroundColor: _colorBack,
        appBar: PreferredSize(
          child: Container(),
          preferredSize: Size(0.0, 0.0),
        ),
        body: Center(
          child: Text(
            Strings.heyThere,
            style: TextStyle(
                color: _colorText, fontWeight: FontWeight.bold, fontSize: 40),
          ),
        ),
      ),
    );
  }
}
