.PHONY: sample pdf continuous clean

sample:
	./latexmk.sh -f -cd -interaction=batchmode -pdf -xelatex \
dissertation_template_latex_sample.tex

pdf:
	./latexmk.sh -f -cd -interaction=batchmode -pdf -xelatex \
dissertation_template_latex.tex

continuous:
	./latexmk.sh -f -pdf -xelatex -pvc dissertation_template_latex.tex

clean:
	rm *.aux *.fdb_latexmk *.fls *.lof *.log *.lot *.toc *.bbl *.bcf *.blg *.ent *.run.xml *.xdv src/content/*.aux

clean-all: clean
	rm *.pdf
