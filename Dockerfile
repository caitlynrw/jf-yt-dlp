FROM alpine as BUILD

RUN \
	wget https://github.com/yt-dlp/yt-dlp/releases/latest/download/yt-dlp && \
	chmod a+rx yt-dlp

FROM scratch

COPY --from=BUILD /yt-dlp /
