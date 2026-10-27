# FlexHeap source import

Source: `/home/kolokasis/github/flexheap_pldi26/camera_ready`.

Imported from the working tree on 2026-10-26, whose repository HEAD was `5b1accc18a17493b7df006c52debbeb49a3a4b2d`.
The working tree contained local changes, including `eval.tex`, `motiv.tex`, and `paper.tex`; this import preserves the selected working-tree content rather than reconstructing that commit.

The root `flexheap.tex` chapter wrapper includes the paper's abstract, Introduction, Background, Motivation, Design, Methodology, Evaluation, Related Work, Conclusions, Data Availability Statement, and acknowledgments in their original order.
The import contains 13 content/table source files and the 36 PDF figures referenced by active content, retaining the `fig/` subdirectory structure.
The two nested table inputs are `tab_elastic.tex` and `tab_es_traffic.tex`.
The PDF files are byte-for-byte copies of the source assets.

Adaptations for the thesis:

- The ACM abstract and acknowledgments environments became unnumbered `Chapter Summary` and `Acknowledgments` sections.
- All active input and graphic paths are relative to the thesis repository root.
- The used paper macros `\name` and `\gc` became stable, paper-specific `\flexheapName` and `\flexheapGC` commands, defined in `macros.tex` for loading from the main preamble.
- `\subfigure` calls became `\subfloat` calls for the thesis's existing `subfig` package.
- The colliding labels `sec:eval`, `fig:sata_ssd`, `fig:motiv`, `sec:methodology`, and `sec:motiv`, and their references, received a `flexheap:` prefix. Other labels and `chapter:flexheap` remain unchanged.
- Two incomplete `\SI{500000}` calls became `\num{500000}` because they denote a count of results rather than a value with a unit.
- The source citation `jones:gc_handbook` became `flexheap:jones:gc_handbook` to retain the cited 2023 second edition alongside the thesis's 2011 first edition. The source citation `kolokasis:teraheap` reuses the existing `teraheap` entry for the same work. The existing `jmal:hugemap` entry remains canonical; its publication-year discrepancy is recorded in the root integration notes.
- Citations to `cassandra` and `printezis:g1gc` reuse the existing `lakshman:cassandra` and `detlefs:g1` entries for the identical works.
- Prose was reflowed to one sentence per source line. Scientific wording, equations, algorithms, and numerical results were retained.

The thesis preamble supplies `graphicx` (through its graphics setup), `subfig`, `amsmath`, `multirow`, `xspace`, `siunitx`, `booktabs`, `algorithm`, and `algpseudocode`.
The root bibliography integration supplies the cited records from the source `paper.bib`; this directory does not maintain a second bibliography.

ACM classes/publication metadata, unused figures and table inputs, raw experiment data, plotting scripts, archival ZIPs, review correspondence, build products, and latexdiff files are not thesis compilation dependencies and were not imported.
Commented-out source material is retained for provenance; its inactive figure/input references are not dependencies of the thesis build.
