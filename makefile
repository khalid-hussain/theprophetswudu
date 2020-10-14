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
	cat util/_macros.md metadata.yaml $(SOURCE) | \
	$(GPP) -x | \
	pandoc -t docx -f markdown+startnum+four_space_rule \
	--reference-doc=template.docx \
	--citeproc \
	--csl $(CSL) \
	--toc \
	-o dist/$(TODAY)-prophets-wudu-draft.docx

html:
	cat util/_macros.md metadata.yaml $(SOURCE) | \
	$(GPP) -x | \
	pandoc -t html5 -s -f markdown+startnum+four_space_rule \
	--citeproc \
	--csl $(CSL) \
	--toc \
	-o dist/$(TODAY)-prophets-wudu-draft.html

latex:
	cat metadata.yaml \
	_macros.md \
	source.md \
	footnotes.md | \
	pp -pdf | \
	pandoc -t latex \
	-f markdown+startnum+four_space_rule \
	-o book/content.tex \

