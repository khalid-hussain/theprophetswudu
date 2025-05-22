
#mode standard tex

\define{\SC{term}}{[\term]{.smallcaps}}

\ifndef{LONG_SURAH_REF}
\define{\surahref{surah}{ayahValue}}{(Q\surah:\ayahValue)}
\else
\define{\surahref{surah}{ayahValue}}{(\SURAH_NAME{\surah}, Q\surah:\ayahValue)}
\endif


\ifdef{WORD}
\define{AYAH_AR_START}{::: {custom-style="quran-arabic" lang="ar" dir="rtl"}}
\define{AYAH_AR_END}{:::}
\define{AYAH_START}{::: {custom-style="quran-trans"}}
\define{AYAH_END}{:::}

\define{LIST_AYAH_AR_START}{::: {custom-style="list-quran-arabic" lang="ar" dir="rtl"}}
\define{LIST_AYAH_AR_END}{:::}
\define{LIST_AYAH_START}{::: {custom-style="list-quran-trans"}}
\define{LIST_AYAH_END}{:::}

\define{HADITH_AR_START}{::: {custom-style="hadith-arabic" lang="ar" dir="rtl"}}
\define{HADITH_AR_END}{:::}
\define{HADITH_START}{::: {custom-style="hadith-trans"}}
\define{HADITH_END}{:::}

\define{LIST_HADITH_AR_START}{::: {custom-style="list-hadith-arabic" lang="ar" dir="rtl"}}
\define{LIST_HADITH_AR_END}{:::}
\define{LIST_HADITH_START}{::: {custom-style="list-hadith-trans"}}
\define{LIST_HADITH_END}{:::}

\define{AR_START}{::: {custom-style="hadith-arabic" lang="ar" dir="rtl"}}
\define{AR_END}{:::}
\define{EN_START}{::: {custom-style="hadith-trans"}}
\define{EN_END}{:::}
\endif

\ifdef{EPUB}
\define{AYAH_AR_START}{<div class="quran-arabic" lang="ar" dir="rtl">}
\define{AYAH_AR_END}{</div>}
\define{AYAH_START}{<div class="quran-trans">}
\define{AYAH_END}{</div>}

\define{LIST_AYAH_AR_START}{<div class="list-quran-arabic" lang="ar" dir="rtl">}
\define{LIST_AYAH_AR_END}{</div>}
\define{LIST_AYAH_START}{<div class="list-quran-trans">}
\define{LIST_AYAH_END}{</div>}

\define{HADITH_AR_START}{<div class="hadith-arabic" lang="ar" dir="rtl">}
\define{HADITH_AR_END}{</div>}
\define{HADITH_START}{<div class="hadith-trans">}
\define{HADITH_END}{</div>}

\define{LIST_HADITH_AR_START}{<div class="list-hadith-arabic" lang="ar" dir="rtl">}
\define{LIST_HADITH_AR_END}{</div>}
\define{LIST_HADITH_START}{<div class="list-hadith-trans">}
\define{LIST_HADITH_END}{</div>}

\define{AR_START}{<div class="hadith-arabic" lang="ar" dir="rtl">}
\define{AR_END}{</div>}
\define{EN_START}{<div class="hadith-trans">}
\define{EN_END}{</div>}
\endif

\mode{standard}{default}
