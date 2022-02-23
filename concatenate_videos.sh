#!/usr/bin/env bash

# concatenate two videos into one and set the output video resolution to 460x460px with black padding if necessary
.\ffmpeg.exe -i .\pokemon.mp4 -i .\pokemon2.mp4 -filter_complex "[0:v]scale=460x460:force_original_aspect_ratio=decrease,pad=460:460:-1:-1:color=black[v0];
  [1:v]scale=460x460:force_original_aspect_ratio=decrease,pad=460:460:-1:-1:color=black[v1];
  [v0][0:a][v1][1:a]concat=n=2:v=1:a=1[v][a]" -map "[v]" -map "[a]" -s 460x460 concatenated.mkv