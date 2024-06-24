# upLaTeX版のテンプレート（BibTeX対応版）

## 事前準備 

1. [Docker](https://docs.docker.com/engine/install/) をインストールしてください。
2. [ieicej3.3N.zip](https://www.ieice.org/ftp/tex/ieicej/LaTeX2e/) をダウンロードし、`ieicej3.3/UTF/sieicej.bst`を`uplatex_bibtex/`にコピーしてください。
3. `uplatex_bibtex/`内で`docker compose build`を実行してください。

## ビルド方法

以下のコマンドを実行すると、`rinkou.tex`、`references.bib`をもとにPDFファイルが生成されます。

```sh
$ docker compose run seminar-tex sh -c "latexmk -f -g rinkou"
```
