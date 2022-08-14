import 'samples.dart';
import 'package:flutter/material.dart';
import 'package:vdocipher_flutter/vdocipher_flutter.dart';

class VdoPlaybackView extends StatefulWidget {

  @override
  _VdoPlaybackViewState createState() => _VdoPlaybackViewState();
}

class _VdoPlaybackViewState extends State<VdoPlaybackView> {
  VdoPlayerController? _controller;
  final double aspectRatio = 16/9;
  ValueNotifier<bool> _isFullScreen = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Flexible(child: Container(
                child: VdoPlayer(
                  embedInfo: SAMPLE_1,
                  onPlayerCreated: (controller) => _onPlayerCreated(controller),
                  onFullscreenChange: _onFullscreenChange,
                  onError: _onVdoError,
                ),
                width: MediaQuery.of(context).size.width,
                height: _isFullScreen.value ? MediaQuery.of(context).size.height : _getHeightForWidth(MediaQuery.of(context).size.width),
              )),
              ValueListenableBuilder(
                  valueListenable: _isFullScreen,
                  builder: (context, dynamic value, child) {
                    return value ? SizedBox.shrink() : _nonFullScreenContent();
                  }),
            ])
    );
  }

  _onVdoError(VdoError vdoError)  {
    print("Oops, the system encountered a problem: " + vdoError.message);
  }

  _onPlayerCreated(VdoPlayerController? controller) {
    setState(() {
      _controller = controller;
      _onEventChange(_controller);
    });
  }

  _onEventChange(VdoPlayerController? controller) {
    controller!.addListener(() {
      VdoPlayerValue value = controller.value;

      print("VdoControllerListner"
          "\nloading: ${value.isLoading} "
          "\nplaying: ${value.isPlaying} "
          "\nbuffering: ${value.isBuffering} "
          /*"\nbuffering: ${controller.play()} "
          "\nbuffering: ${controller.pause()} "*/
          "\nended: ${value.isEnded}"
      );
    });
  }

  _onFullscreenChange(isFullscreen) {
    setState(() {
      _isFullScreen.value = isFullscreen;
    });
  }

  _nonFullScreenContent() {
    return Column(
        children: [
          Text('Sample Playback', style: TextStyle(fontSize: 20.0),)
        ]);
  }

  double _getHeightForWidth(double width) {
    return width / aspectRatio;
  }
}