# 学位論文テンプレート
日本語版の `thesisja.sty` と英語版の `thesisen.sty` があります。

**注意：**学部生は大学の指示に従ってください。

## 使い方
`main.tex`を開いてください。重要なのは次の箇所です。

```
% \layout  % For debugging page layout

\MyTitleA{Answer to the Ultimate Question}
\MyTitleB{of}
\MyTitleC{Life, the Universe, and Everything}

\MyName{Taro SHURON}
\MySupervisor{Katsunori YAMAOKA}
\MyDegreeType{M}
\MonthYear{January 2020}

% Left binding support
%   Y: Margin left=38mm, right=22mm (for bookbinding)
%   N: Margin left=30mm, right=30mm (for PDF export)
\LeftBinding{N}
```

### タイトル
1行タイトルの場合は

```
\MyTitleA{Answer to the Ultimate Question: 42}
%\MyTitleB{}
%\MyTitleC{}
```

2行タイトルの場合は

```
\MyTitleA{Answer to the Ultimate Question:}
\MyTitleB{Life, the Universe, and Everything}
%\MyTitleC{}
```

になります。
Aから順に埋めていって，使わない行はコメントアウトしてください。

### 自分の氏名・指導教員の氏名
英語の場合は指導教員の氏名だけでOK。

```
\MyName{Taro SHURON}
\MySupervisor{Katsunori YAMAOKA}
```

日本語の場合は職位もつけてください。
```
\MyName{修論 太郎}
\MySupervisor{北口 義明 准教授}
```

### 学位
学士の場合は
```
\MyDegreeType{B}
```

修士の場合は
```
\MyDegreeType{M}
```

博士の場合は
```
\MyDegreeType{D}
```

### 製本サポート
製本を目的に印刷する場合に有効にします。左余白が大きく設定されます。
```
\LeftBinding{Y}
```

電子閲覧が目的のPDF化であれば無効にしてください。
```
\LeftBinding{N}
```
