#!/bin/bash

# Create a new folder called 'wavs' if it doesn't already exist
mkdir -p wavs

# Loop through all .aifc files in the folder
for file in *.aifc; do
  # Extract the base filename (without extension)
  base_name="${file%.aifc}"

  # Convert .aifc to .wav and save in the 'wavs' folder
  ffmpeg -i "$file" -ar 44100 -acodec pcm_s16le "wavs/${base_name}.wav"
done

echo "Conversion complete! WAV files are in the 'wavs' folder."
