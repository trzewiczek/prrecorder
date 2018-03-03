#!/usr/bin/sh
if [ -z "$3" ]
  then
    echo "Correct syntax:"
    echo "  $ ./prrecorder.sh <output_file> <duration> <scheduled_time>"
    echo "where:"
    echo "  <output_file> is a name of the output file without extention"
    echo "  <duration> is a duration of recording in minutes"
    echo "  <scheduled_time> is a scheduled recording time"
    echo ""
    echo "Example:"
    echo "  ./prrecorder.sh Muzyka_Zrodel 30 12:00"
    echo ""
    echo "The script relies on at command so atd has to be running"
    exit 1
fi

URL='http://stream12.polskieradio.pl/pr2/pr2.sdp/playlist.m3u8'

OUT="--sout=file/ogg:$(date +'%Y-%m-%d')__$1.ogg"
TIME=$(($2 * 60))

VLC="cvlc $URL $OUT --run-time=$TIME --stop-time=$TIME vlc://quit"

echo $VLC | at $3
