# TeraHeap chapter import

Source: `/home/kolokasis/github/toplas23`, using the working-tree root `paper.tex` and its active inputs (repository HEAD `279bef9`). The untracked nested `teraheap/` snapshot was not used.

Imported 15 body/table files and all 58 referenced PDF figures, retaining the `fig/` and `fig/access_pattern/` layout. `macros.tex` contains the paper commands needed by these inputs. The thesis root `teraheap.tex` includes the chapter in the original paper order.

Adaptations:

- Replaced the ACM abstract and acknowledgments environments with unnumbered Chapter Summary and Acknowledgments sections.
- Made all input and figure paths relative to the thesis root.
- Renamed paper commands to `\teraheapGC`, `\teraheapSD`, `\teraheapName`, `\teraheapMMIO`, `\teraheapCircled`, and `\teraheapLike`, preserving their definitions.
- Added `teraheap:` to colliding labels `sec:eval`, `sec:impl`, and `fig:sata_ssd`, and updated their references. Other labels remain unchanged.
- Reconciled citation keys `Zaharia:Spark` to `zaharia:spark` and `gc_handbook` to `jones:gc_handbook` for existing references to the same works. Renamed the source's `cassandra` to `teraheap:cassandra` to distinguish its 2014 reference from the separate Cassandra paper used by FlexHeap.
- Scoped chapter spacing and table-formatting settings in the wrapper, and flushed pending floats before ending the scope.
- Preserved technical wording, math, and figure files. Retained legacy source wrapping except in the adapted summary and acknowledgments.

The thesis preamble supplies `xspace`, `siunitx`, `booktabs`, and `tikz`, in addition to its existing graphics, color, subfigure, math, and multirow support. Bibliographic entries are merged into the shared thesis bibliography separately. The ACM class, publication metadata, original Makefile, compiled paper, inactive appendix/table inputs, and unused figures are not imported.
