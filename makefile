latex:
	cat metadata.yaml \
	_macros.md \
	source.md \
	footnotes.md | \
	pp -pdf | \
	pandoc -t latex \
	-f markdown+startnum+four_space_rule \
	-o book/content.tex \

