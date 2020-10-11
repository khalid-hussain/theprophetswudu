TODAY = $(shell date +'%Y-%m-%d')

GPP = /d/programs/gpp2.27.exe
# ./gpp.exe
# ./gpp2.27.exe

TEMPLATE = template.docx

CSL = chicago-fullnote-bibliography-short-title-subsequent.csl

SOURCE =	./metadata.yaml \
			./chap1-introduction.md \
			./chap2-components-of-wudu.md \
			./chap3-nullifiers-of-wudu.md \
			./chap4-conclusion.md \
			./_end.md \
			./metadata.yaml

default: docx

docx:
	cat util/_macros.md metadata.yaml $(FM) $(SOURCE) _end.md | \
	$(GPP) -x | \
	pandoc -t docx \
	--filter pandoc-citeproc \
	--reference-doc=$(TEMPLATE) \
	--csl $(CSL) \
	--toc \
	-o dist/$(TODAY)-prophets-wudu-draft.docx

latex:
	cat metadata.yaml \
	_macros.md \
	source.md \
	footnotes.md | \
	pp -pdf | \
	pandoc -t latex \
	-f markdown+startnum+four_space_rule \
	-o book/content.tex \

