FROM squidfunk/mkdocs-material:6.0.2
LABEL maintainer="Michael Hausenblas, hausenbl@amazon.com"

COPY action.sh /action.sh

RUN apk add --no-cache bash && chmod +x /action.sh

ENTRYPOINT ["/action.sh"]
