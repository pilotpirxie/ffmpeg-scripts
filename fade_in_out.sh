#!/usr/bin/env bash
# fade in audio and video for 2s and fade out for 2s since 18s
# remaining audio will be silent
# remaining video will be black
.\ffmpeg.exe -i .\pokemon.mp4 -filter_complex "[0:v]fade=type=in:start_time=0:duration=2,fade=type=out:start_time=18:duration=2[v0];
[0:a]afade=type=in:start_time=0:duration=2,afade=type=out:start_time=18:duration=2[a0]" -map "[v0]" -map "[a0]" fade_in_out.mkv