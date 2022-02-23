#!/usr/bin/env bash
# start trimming at 3.3 second from the start and last until 8.41 second from the start
# ----------++++++++++++++++++++-----
# ^         ^                  ^
# 0s       3.3s              8.41s
# ----------++++++++++++++++++++-----
.\ffmpeg.exe -i .\pokemon.mp4 -filter_complex "[0:v]trim=start=3.3:duration=5.11,setpts=PTS-STARTPTS[v0];
[0:a]atrim=start=3.3:duration=5.11,asetpts=PTS-STARTPTS[a0]" -map [v0] -map [a0] trimmed.mp4