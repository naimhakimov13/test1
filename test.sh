#!/bin/sh

TIME="10"
URL="https://api.telegram.org/bot$TELEGRAM_BOT_TOKEN/sendMessage"
TEXT="
*New MR*: 12313123123
*From*:+123123123
"

echo $TELEGRAM_BOT_TOKEN
echo $TELEGRAM_CHAT_ID

/bin/curl -s --max-time $TIME -d "chat_id=$TELEGRAM_CHAT_ID" -d "text=$TEXT" -d "parse_mode=markdown" -d "disable_web_page_preview=1" "$URL" > /dev/null
