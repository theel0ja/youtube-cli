SUB_LANG=en
CHANNEL_URL=$1

youtube-dl \
--write-sub \
--sub-lang $SUB_LANG \
-f "bestvideo[height<=?1200]+bestaudio" \
-o 'videos/%(uploader_id)s/%(upload_date)s - %(title)s [%(resolution)s].%(ext)s' \
--embed-subs \
--sub-format ttml \
--convert-subs srt \
--merge-output-format mkv \
--external-downloader aria2c \
--external-downloader-args "--file-allocation=prealloc --min-split-size=1M --split=16 --max-connection-per-server=10" \
--download-archive "_archive.txt" \
--no-check-certificate \
$CHANNEL_URL
