# PR Recorder
CLI scheduled recorder for Polish Radio II


## How to use
To operate prrecorder needs an `atd` running in the background.

To run a script type:

```bash
$ ./prrecorder <output_file> <recording_time> <scheduled_date>
```

PRRecorder records to OGG format adding ogg extension to the file name
provided as long as the date prefix for easier recording identification.

# Dependencies

 - VLC
 - at
 - at deamon

# More info
The script is based on Micz Flor
[blog post](https://blog.sourcefabric.org/en/news/blog/2077/)


## PR II URLs
| Type                  | URL                                                       |
| --------------------- | --------------------------------------------------------- |
| rtmp                  | rtmp://stream12.polskieradio.pl/pr2/pr2.sdp               |
| application/x-mpegURL | http://stream12.polskieradio.pl/pr2/pr2.sdp/playlist.m3u8 |
| audio/aac             | http://stream3.polskieradio.pl:8952/;.mp3                 |
| audio/mpeg            | http://mp3.polskieradio.pl:8902/;.mp3                     |


