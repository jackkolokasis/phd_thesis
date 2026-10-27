# Chipper import

Imported from `/home/kolokasis/github/chipper`, using the active content order in `paper.tex`.
Source commit: `99dd17b2237e070d2563dbe94badf91645733b94` (clean working tree at import).
The import contains the abstract, nine body sections, and the 41 PDF graphics referenced by those files.
The original paper repository remains unchanged.

The thesis wrapper is `../chipper.tex` and retains `chapter:chipper`.
The paper abstract is presented as an unnumbered Chapter Summary.
The thesis preamble loads `chipper/macros.tex`; the paper's `\name` macro is named `\chipperName` here, with its original one-argument signature and expansion.
Graphics and input paths resolve from the thesis repository root.
The paper's `\subfigure` calls use the thesis's `subfig` package through `\subfloat`.
The colliding labels `sec:eval`, `sec:impl`, `fig:motiv`, `sec:methodology`, and `sec:motiv`, and their references, receive the prefix `chipper:`.
Scientific prose, equations, figure files, citation keys, and section order are preserved.

The thesis provides the document class, bibliography, and shared package setup, including `xspace`, `siunitx`, `booktabs`, and `subfig`.
The standalone paper's class, publication metadata, bibliography commands, Makefile, unused tables and graphics, and figure-generation scripts are not imported.
Bibliography entries are reconciled centrally in `bib/Dissertation.bib`; do not add the paper bibliography as a second database because its keys overlap with that file.
