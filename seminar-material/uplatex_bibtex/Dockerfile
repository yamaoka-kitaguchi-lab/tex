# FROM debian:12-slim

# WORKDIR /install

# RUN apt-get update && apt-get install -y --no-install-recommends \
#     perl wget xz-utils fontconfig ca-certificates \
#     && apt-get clean \
#     && rm -rf /var/lib/apt/lists/*

# RUN wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz \
#     && tar xzf ./install-tl-unx.tar.gz  --strip-components 1 \
#     && ./install-tl -scheme basic --no-interaction \
#     && ln -sf /usr/local/texlive/*/bin/* /usr/local/bin/texlive

# RUN rm -r ./**/*

# ENV PATH=/usr/local/bin/texlive:$PATH

# RUN tlmgr install collection-fontsrecommended collection-langjapanese collection-latexextra latexmk bbding collection-latexrecommended collection-mathscience

# 上記の内容を含むイメージです ↓ 
FROM ghcr.io/yamaoka-kitaguchi-lab/seminar-tex:latest

# カスタムパッケージをインストールしたい場合、ここに追加
# RUN tlmgr install <package-name> 
