PAPER = Dissertation_MAIN
TEXMK = latexmk
FILES = $(wildcard *.tex)

.PHONY: all clean	$(PAPER).pdf

all: $(PAPER).pdf

$(PAPER).pdf: $(FILES)
	-$(TEXMK) -interaction=nonstopmode -pdf $(PAPER).tex

view: $(PAPER).pdf
	@xdg-open $<

clean:
	-$(TEXMK) -bibtex -c
	-rm -f paper.pdf

distclean:
	-$(TEXMK) -bibtex -C
	-rm -f paper.pdf

commit:
	-git status
ifeq ($(m),)
	-git commit -a -m "Commit all changes"
else
	git commit -a -m "$m"
endif
	git push

up: update

update:
	-git status
	git pull

status:
	git status

pdf: $(FILES) 
	-pdflatex -shell-escape $(PAPER)
	-bibtex $(PAPER)
	-pdflatex -shell-escape $(PAPER)
	-pdflatex -shell-escape $(PAPER)

aspell:
	aspell --lang=en --mode=tex check $f
