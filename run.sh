mkdir converted_videos  # Create a directory to store converted videos


for file in path/to/raw/*.mp4; do
    filename=$(basename -- "$file")
    extension="${filename##*.}"
    filename="${filename%.*}"
    ffmpeg -i "$file" -c:v libx264 -crf 23 -c:a aac -b:a 192k converted_videos/"$filename"_converted.mp4
done


ffmpeg -i input.mov -c:v libx264 -crf 23 -preset medium -c:a aac -b:a 128k output.mp4
