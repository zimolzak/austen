Sentence length in Austen's complete works
==============

Purpose
-------

Take a bunch of text documents, assemble them into one corpus. Plot
the distribution of sentence length.

To use
------

1. Run ./make.sh first.

2. Then use R to interpret logplot.R. Consider going line by line thru
plots. It doesn't pause.

Notes
-----

I am running this on the complete works of Jane Austen, from Project
Gutenberg. make.sh expects files of names like "161 sense.doc". I
named them .DOC so Git can ignore them. But they are just plain text.

Internal details: make.sh will repeatedly run Perl that handles this:
(linebroken text --> CSV of sentence length).

Results
-------

Turns out that the distribution of sentence length in Austen looks
log-normal.

![log normal sentence length](https://dl.dropboxusercontent.com/u/38640281/xfiles/sentence%20length.png)
