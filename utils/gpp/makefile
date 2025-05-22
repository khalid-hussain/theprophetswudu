compile-macros:
	cat honorifics.pp quran-loc.pp paraCharStyles.pp misc.pp _modeChange.pp > _macros.pp

macros-english:
	gpp tests/testContent.md -DHONORIFICS_ENG -DREF_SURAH_NAME -DLONG_SURAH_REF > tests/resultEnglish.md

macros-arabic:
	gpp tests/testContent.md > tests/resultArabic.md

macros: compile-macros macros-english macros-arabic