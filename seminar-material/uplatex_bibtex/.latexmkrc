$max_repeat = 5;
$pdf_mode = 3;

$latex = 'uplatex %O %S -halt-on-error -interaction=nonstopmode -file-line-error';
$bibtex = 'upbibtex %O %B';
$dvipdf = 'dvipdfmx %O -o %D %S';
