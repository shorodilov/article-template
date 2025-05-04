FROM pandoc/latex:3.6

LABEL org.opencontainers.image.source=https://github.com/shorodilov/article-template
LABEL org.opencontainers.image.description="Pandoc image with TeX Live and Google Fonts"

RUN \
    apk add --no-cache git \
    && git clone https://github.com/google/fonts /tmp/google-fonts \
    && mkdir -p /usr/share/fonts/google-fonts \
    && find /tmp/google-fonts -name "*.ttf" -exec cp {} /usr/share/fonts/google-fonts \; \
    && rm -rf /tmp/google-fonts \
    && fc-cache -fv
