FROM alpine:latest

LABEL maintainer="lex_admin <andrey@best-home.xyz>" \
  name="MiniDLNA" description="MiniDLNA Server."

COPY entrypoint.sh / 
RUN chmod +x ./entrypoint.sh && apk --no-cache add bash curl minidlna tini shadow su-exec alpine-conf inotify-tools

ENTRYPOINT ["/entrypoint.sh"]
