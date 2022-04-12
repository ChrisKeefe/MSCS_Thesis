.PHONY: pdf clean

pdf:
	./latexmk.sh -f -cd -interaction=batchmode -pdf -xelatex \
dissertation_template_latex_sample.tex

clean:
	rm *.aux *.fdb_latexmk *.fls *.lof *.log *.lot *.toc *.bbl *.bcf *.blg *.ent *.run.xml *.xdv

