# FROM ubuntu:24.04

# WORKDIR /install

# RUN apt-get update && apt-get install -y \
#     perl wget xz-utils fontconfig 

# RUN wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
#     && tar xzf ./install-tl-unx.tar.gz  --strip-components 1 \
#     && ./install-tl -scheme base --no-interaction \
#     && ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive

# ENV PATH /usr/local/bin/texlive:$PATH

# RUN tlmgr install collection-fontsrecommended collection-langjapanese collection-latexextra latexmk bbding

# ↓ 上記の内容を含むイメージです
FROM ghcr.io/yamaoka-kitaguchi-lab/seminar-tex:latest

# カスタムパッケージをインストールしたい場合、ここに追加
# RUN tlmgr install <package-name>
