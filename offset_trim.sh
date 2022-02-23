#!/usr/bin/env bash
# it's basically the same as trim_output but it's trimming the previously cutted out clip
# for example to generate short preview of the video
.\ffmpeg.exe -i .\pokemon.mp4 -filter_complex "[0:v]trim=start=3.3:duration=5.11,setpts=PTS-STARTPTS[v0];
[0:a]atrim=start=3.3:duration=5.11,asetpts=PTS-STARTPTS[a0];[v0]trim=start=0:duration=1,setpts=PTS-STARTPTS[v00];
[a0]atrim=start=2:duration=1,asetpts=PTS-STARTPTS[a00]" -map [v00] -map [a00] -preset ultrafast preview.mkv