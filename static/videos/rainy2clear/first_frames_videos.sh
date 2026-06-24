for f in /data3/shenzhen/Relight_Projects/img2img-turbo/output/cyclegan_turbo_videos/rainy2clear/*.mp4; do
  ffmpeg -y -i "$f" -t 10 -c:v libx264 -crf 18 -preset fast "${f%.mp4}_first10.mp4"
done