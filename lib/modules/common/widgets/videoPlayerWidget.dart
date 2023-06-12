import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final bool enableAutoPlay;
  final bool isLooping;
  final String videoUrl;

  const VideoPlayerWidget({
    super.key,
    required this.enableAutoPlay,
    required this.isLooping,
    required this.videoUrl,
  });

  @override
  _VideoPlayerWidgetState createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _controller;
  bool _isInitialized = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl);
    _controller.addListener(_videoPlayerListener);
    _controller.setLooping(widget.isLooping);

    _controller.initialize().then((_) {
      setState(() {
        _isInitialized = true;
      });
      if (widget.enableAutoPlay) {
        _controller.play();
      }
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _videoPlayerListener() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        if (_isInitialized)
          AspectRatio(
              aspectRatio: 4.0/3.0,
              child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  )
              )
          ),
        if (!_isInitialized)
          const CircularProgressIndicator(),
      ],
    );
  }
}