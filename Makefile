bachelor:
	xelatex bachelor.tex
	-bibtex  bachelor.aux
	xelatex bachelor.tex
	xelatex bachelor.tex

	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm

clean:
	find . -name '*.aux' -print0 | xargs -0 rm -rf
	rm -rf *.lof *.log *.lot *.out *.toc *.bbl *.blg *.thm

depclean: clean
	rm -rf *.pdf
