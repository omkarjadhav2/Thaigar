import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class ExerciseVideosScreen extends StatelessWidget {
  final List<String> exerciseCategories = [
    'Biceps',
    'Triceps',
    'Arms',
    'Shoulder',
    'Chest',
    'Back',
    'Legs',
    'Abs'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exercise Videos'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Choose an Exercise Category:',
              style: TextStyle(fontSize: 20.0),
            ),
            SizedBox(height: 20.0),
            Wrap(
              spacing: 20.0,
              runSpacing: 10.0,
              children: exerciseCategories
                  .map((category) => ExerciseCategoryButton(
                category: category,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExerciseVideosListScreen(
                        category: category,
                      ),
                    ),
                  );
                },
              ))
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class ExerciseCategoryButton extends StatelessWidget {
  final String category;
  final VoidCallback onPressed;

  ExerciseCategoryButton({required this.category, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(category),
    );
  }
}

class ExerciseVideosListScreen extends StatelessWidget {
  final String category;

  ExerciseVideosListScreen({required this.category});

  final List<String> videosForCategory = [
    // Add paths or URLs for your videos here
    'https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4',
    // Add more videos...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Videos for $category'),
      ),
      body: ListView.builder(
        itemCount: videosForCategory.length,
        itemBuilder: (context, index) {
          return ExerciseVideoPlayer(videoUrl: videosForCategory[index]);
        },
      ),
    );
  }
}

class ExerciseVideoPlayer extends StatefulWidget {
  final String videoUrl;

  ExerciseVideoPlayer({required this.videoUrl});

  @override
  _ExerciseVideoPlayerState createState() => _ExerciseVideoPlayerState();
}

class _ExerciseVideoPlayerState extends State<ExerciseVideoPlayer> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    _controller = VideoPlayerController.network(widget.videoUrl);
    _initializeVideoPlayerFuture = _controller.initialize();
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FutureBuilder(
          future: _initializeVideoPlayerFuture,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: VideoPlayer(_controller),
              );
            } else {
              return CircularProgressIndicator();
            }
          },
        ),
        SizedBox(height: 20.0),
        Text('Exercise Video'),
        SizedBox(height: 20.0),
        ElevatedButton(
          onPressed: () {
            setState(() {
              if (_controller.value.isPlaying) {
                _controller.pause();
              } else {
                _controller.play();
              }
            });
          },
          child: Icon(
            _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
          ),
        ),
      ],
    );
  }
}
