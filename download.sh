SUB_LANG=en

youtube-dl \
--write-sub \
--sub-lang $SUB_LANG \
-f "bestvideo[height<=?1200]+bestaudio" \
-o 'videos/%(upload_date)s - %(title)s [%(resolution)s].%(ext)s' \
--embed-subs \
--sub-format ttml \
--convert-subs srt \
--merge-output-format mkv \
--external-downloader aria2c \
--external-downloader-args "--file-allocation=prealloc --min-split-size=1M --split=16 --max-connection-per-server=10" \
--download-archive "_archive.txt" \
--no-check-certificate \
"https://www.youtube.com/channel/UC7_gcs09iThXybpVgjHZ_7g"
