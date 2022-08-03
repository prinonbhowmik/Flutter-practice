import 'package:better_player/better_player.dart';
import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late BetterPlayerController _betterPlayerController;

  var dataSource = BetterPlayerDataSource(
    BetterPlayerDataSourceType.network,
    "https://thepaciellogroup.github.io/AT-browser-tests/video/ElephantsDream.mp4",
    liveStream: false,
    useAsmsSubtitles: true,
    asmsTrackNames: ["Low quality", "Not so low quality", "Medium quality"],
    subtitles: [
      BetterPlayerSubtitlesSource(
        type: BetterPlayerSubtitlesSourceType.network,
        name: "EN",
        urls: [
          "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
        ],
      ),

      BetterPlayerSubtitlesSource(
        type: BetterPlayerSubtitlesSourceType.network,
        name: "DE",
        urls: [
          "https://dl.dropboxusercontent.com/s/71nzjo2ux3evxqk/example_subtitles.srt"
        ],
      ),
    ],
  );

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _betterPlayerController = BetterPlayerController(
      BetterPlayerConfiguration(
        startAt: Duration(hours: 0, minutes: 0, seconds: 0),
      ),
      betterPlayerDataSource: dataSource,
    );

  }

  @override
  Widget build(BuildContext context) {

    _betterPlayerController.addEventsListener((event){

      if (event.betterPlayerEventType == BetterPlayerEventType.pause){
        print( _betterPlayerController.videoPlayerController!.value.position);

      }

    });

    return Scaffold(
        appBar: AppBar(
          title: Text("Video Player"),
        ),
        body: Center(
          child: AspectRatio(
            aspectRatio: 16 / 9,
            child: BetterPlayer(
              controller: _betterPlayerController,
            ),
          ),
        ));
  }
}

