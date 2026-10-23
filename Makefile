# ============================================================
# PhD Dissertation Makefile
# ============================================================

# Main dissertation file (without extension)
PAPER := Dissertation_MAIN

# LaTeX compiler
LATEXMK := latexmk

# Compilation options
LATEXMK_FLAGS := -pdf -interaction=nonstopmode -file-line-error -halt-on-error

# Output PDF
PDF := $(PAPER).pdf

# Default target
.DEFAULT_GOAL := all

.PHONY: all pdf view clean distclean commit update up status aspell FORCE

# ============================================================
# Compilation
# ============================================================

all: $(PDF)

# Always invoke latexmk to check for changes.
# latexmk itself determines whether recompilation is necessary.
$(PDF): FORCE
	$(LATEXMK) $(LATEXMK_FLAGS) $(PAPER).tex

FORCE:

# Alias for building the dissertation
pdf: $(PDF)

# Compile and open the dissertation
view: $(PDF)
	@xdg-open "$(PDF)"

# ============================================================
# Cleaning
# ============================================================

# Remove auxiliary files but preserve the PDF
clean:
	$(LATEXMK) -c $(PAPER).tex

# Remove auxiliary files and the generated PDF
distclean:
	$(LATEXMK) -C $(PAPER).tex

# ============================================================
# Git
# ============================================================

# Commit tracked changes and push
# Usage: make commit m="Your commit message"
commit:
	git status
	git commit -am "$(if $(m),$(m),Update dissertation)"
	git push

# Pull latest changes
up: update

update:
	git status
	git pull --ff-only

# Show repository status
status:
	git status

# ============================================================
# Spell Checking
# ============================================================

# Usage: make aspell f=Dissertation_introduction.tex
aspell:
	@test -n "$(f)" || { echo "Usage: make aspell f=<filename.tex>"; exit 1; }
	aspell --lang=en --mode=tex check "$(f)"
