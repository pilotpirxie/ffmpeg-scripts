#!/usr/bin/env pwsh
# generate for the first 10s of the music with the resolution of 4000x700px
.\ffmpeg.exe -i '.\audio.webm' -filter_complex "[0:a]atrim=0:10[trimmed];[trimmed]showwavespic=s=4000x700:colors=#9cf42f" -frames:v 1 waveform.png

# generate for the entire audio with the resolution of 4000x700px
.\ffmpeg.exe -i '.\audio.webm' -filter_complex "[0:a]showwavespic=s=4000x700:colors=#9cf42f" -frames:v 1 waveform.png