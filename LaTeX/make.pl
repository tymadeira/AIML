#!/usr/bin/perl


`find ./*.tex > list.txt`;

open in, "list.txt";


while ($file = <in>)
    {
	print "Processing $file\n";
  	`pdflatex $file`;
	`pdflatex $file`;
	`pdflatex $file`;
 	}

close in;

`rm *.log *.aux *.dvi *.ps *.toc *.nav *.snm *.backup *.out list.txt`;
