FROM paperist/alpine-texlive-ja

RUN apk add --update ghostscript git
RUN tlmgr update --self --all
