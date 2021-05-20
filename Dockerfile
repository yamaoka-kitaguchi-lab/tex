FROM archlinux:base-20210516.0.23009

ARG tlmgr="/usr/share/texmf-dist/scripts/texlive/tlmgr.pl --usermode"

RUN pacman -Syy --noconfirm \
 && pacman -S --noconfirm \
        texlive-bin \
        texlive-core \
        texlive-science \
        texlive-langjapanese \
        ghostscript \
        imagemagick \
        git \
        make \
        vim \
        fish \
 && pacman -Qtdq | xargs -r pacman --noconfirm -Rcns \
 && sed -i -e 's!$Master = "$Master/../.."!$Master = "${Master}/../../.."!g' \
        /usr/share/texmf-dist/scripts/texlive/tlmgr.pl

WORKDIR /workdir
COPY .latexmkrc .latexmkrc

RUN ${tlmgr} init-usertree \
 # && ${tlmgr} option repository https://ftp.jaist.ac.jp/pub/CTAN/systems/texlive/tlnet \
 && ${tlmgr} option repository http://ftp.math.utah.edu/pub/tex/historic/systems/texlive/2020/tlnet-final \
 && ${tlmgr} update --no-persistent-downloads --self --all \
 && ${tlmgr} install --no-persistent-downloads \
        algorithms \
        comment \
        multirow \
        nidanfloat \
        paralist

CMD ["/usr/bin/fish"]
