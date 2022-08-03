import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthy/button_widget.dart';
import 'package:custom_timer/custom_timer.dart';
import 'package:healthy/rounded.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:healthy/video.dart';

class RunExample extends StatefulWidget {
  const RunExample({Key? key}) : super(key: key);

  @override
  State<RunExample> createState() => _RunExampleState();
}

class _RunExampleState extends State<RunExample> {
  final CustomTimerController _controller = CustomTimerController();

  get key => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Жүгіру'),
      ),
      body: ListView(
        children: <Widget>[
          Container(
              height: 200,
              margin: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20.0)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTimer(
                      controller: _controller,
                      begin: Duration(minutes: 20),
                      end: Duration(),
                      builder: (time) {
                        return Text(
                            "${time.hours}:${time.minutes}:${time.seconds}.${time.milliseconds}",
                            style: TextStyle(fontSize: 24.0)
                        );
                      }
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        RoundedButton(
                          text: 'Start',
                          color: Colors.blue,
                          onPressed: () => _controller.start(),
                        ),
                        RoundedButton(
                          text: 'Pause',
                          color: Colors.red,
                          onPressed: () => _controller.pause(),
                        ),
                        RoundedButton(
                          text: 'Reset',
                          color: Colors.green,
                          onPressed: () => _controller.reset(),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),
          ChewieListItem(
            videoPlayerController: VideoPlayerController.asset(
                'videos/videoplayback.mp4'
            ),
            looping: true,
            key: key,
          ),
        ],
      ),
    );
  }
}
