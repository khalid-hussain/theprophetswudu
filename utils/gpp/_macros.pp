
#mode standard tex

\ifndef{HONORIFICS_ENG}
\define{\hon{phrase}{char_style}}{[\phrase]{custom-style="\char_style" lang="ar" dir="rtl"}}
\else
\define{\hon{phrase}{char_style}}{[\phrase]{custom-style="\char_style"}}
\endif

\mode{standard}{cpp}

// Character styles
#define HEADER honorifics_header
#define BODY honorifics_body
#define FOOTER honorifics_foot

#ifndef HONORIFICS_ENG

// Honorifics Arabic
#define SWT سبحانه وتعالى
#define AZWJL عزَّ وجلَّ
#define PBUH صلى الله عليه وسلم

#define S_HIM عليه السلام
#define S_HER عليها السلام
#define S_TWO عليهما السلام
#define S_THM عليهم السلام

#define SS_HIM عليه الصلاة والسلام
#define SS_HER عليه الصلاة والسلام
#define SS_TWO عليهما الصلاة والسلام
#define SS_THM عليهم الصلاة والسلام

#define P_HIM رضي الله عنه
#define P_HER رضي الله عنها
#define P_TWO رضي الله عنهما
#define P_THM رضي الله عنهم

#define M_HIM رحمه الله تعالى
#define M_HER رحمها الله تعالى
#define M_TWO رحمهما الله تعالى
#define M_THM رحمهم الله تعالى

#define H_HIM حفظه الله تعالى
#define H_HER حفظها الله تعالى
#define H_TWO حفظهما الله تعالى
#define H_THM حفظهم الله تعالى

#else

// Honorifics English
#define SWT (Exalted be He)
#define AZWJL (Exalted and Glorified be He)
#define PBUH (May peace and blessings be on him)
#define PBUHS (Peace be on him)

#define S_HIM (Peace be on him)
#define S_HER (Peace be on her)
#define S_TWO (Peace be on them both)
#define S_TWO (Peace be on them)

#define SS_HIM عليه الصلاة والسلام
#define SS_HER عليه الصلاة والسلام
#define SS_TWO عليهما الصلاة والسلام
#define SS_THM عليهم الصلاة والسلام

#define P_HIM (May Allāh be pleased with him)
#define P_HER (May Allāh be pleased with her)
#define P_TWO (May Allāh be pleased with them both)
#define P_THM (May Allāh be pleased with them)

#define M_HIM (May Allāh have mercy on him)
#define M_HER (May Allāh have mercy on her)
#define M_TWO (May Allāh have mercy on them both)
#define M_THM (May Allāh have mercy on them)

#define H_HIM (May Allāh preserve him)
#define H_HER (May Allāh preserve her)
#define H_TWO (May Allāh preserve them both)
#define H_THM (May Allāh preserve them)

#endif

#mode standard default

#mode standard tex

\define{\SURAH_NAME{x}}{\ifeq{\x}{1}al-Fātiḥah\endif\ifeq{\x}{2}al-Baqarah\endif\ifeq{\x}{3}al-ʿImrān\endif\ifeq{\x}{4}al-Nisāʾ\endif\ifeq{\x}{5}al-Māʾidah\endif\ifeq{\x}{6}al-Anʿām\endif\ifeq{\x}{7}al-Aʿrāf\endif\ifeq{\x}{8}al-Anfāl\endif\ifeq{\x}{9}al-Tawbah\endif\ifeq{\x}{10}Yūnus\endif\ifeq{\x}{11}Hūd\endif\ifeq{\x}{12}Yūsuf\endif\ifeq{\x}{13}al-Raʿd\endif\ifeq{\x}{14}Ibrāhīm\endif\ifeq{\x}{15}al-Ḥijr\endif\ifeq{\x}{16}al-Nahl\endif\ifeq{\x}{17}al-Isrāʾ\endif\ifeq{\x}{18}al-Kahf\endif\ifeq{\x}{19}Maryam\endif\ifeq{\x}{20}Ṭā Hā\endif\ifeq{\x}{21}al-Anbiyāʾ\endif\ifeq{\x}{22}al-Ḥajj\endif\ifeq{\x}{23}al-Muʾminūn\endif\ifeq{\x}{24}al-Nūr\endif\ifeq{\x}{25}al-Furqān\endif\ifeq{\x}{26}al-Shuʿarāʾ\endif\ifeq{\x}{27}al-Naml\endif\ifeq{\x}{28}al-Qaṣaṣ\endif\ifeq{\x}{29}al-ʿAnkabūt\endif\ifeq{\x}{30}al-Rūm\endif\ifeq{\x}{31}Luqmān\endif\ifeq{\x}{32}al-Sajdah\endif\ifeq{\x}{33}al-Aḥzāb\endif\ifeq{\x}{34}Sabaʾ\endif\ifeq{\x}{35}Fāṭir\endif\ifeq{\x}{36}Yā Sīn\endif\ifeq{\x}{37}al-Ṣaffāt\endif\ifeq{\x}{38}Ṣād\endif\ifeq{\x}{39}al-Zumar\endif\ifeq{\x}{40}Ghāfir\endif\ifeq{\x}{41}Fuṣṣilat\endif\ifeq{\x}{42}al-Shūrā\endif\ifeq{\x}{43}al-Zukhruf\endif\ifeq{\x}{44}al-Dukhān\endif\ifeq{\x}{45}al-Jāthiyah\endif\ifeq{\x}{46}al-Aḥqāf\endif\ifeq{\x}{47}Muḥammad\endif\ifeq{\x}{48}al-Fatḥ\endif\ifeq{\x}{49}al-Ḥujurāt\endif\ifeq{\x}{50}Qāf\endif\ifeq{\x}{51}al-Dhāriyāt\endif\ifeq{\x}{52}al-Ṭūr\endif\ifeq{\x}{53}al-Najm\endif\ifeq{\x}{54}al-Qamar\endif\ifeq{\x}{55}al-Raḥmān\endif\ifeq{\x}{56}al-Wāqiʿah\endif\ifeq{\x}{57}al-Ḥadīd\endif\ifeq{\x}{58}al-Mujādilah\endif\ifeq{\x}{59}al-Ḥashr\endif\ifeq{\x}{60}al-Mumtaḥanah\endif\ifeq{\x}{61}al-Ṣaff\endif\ifeq{\x}{62}al-Jumuʿah\endif\ifeq{\x}{63}al-Munāfiqūn\endif\ifeq{\x}{64}al-Ṭaghābun\endif\ifeq{\x}{65}al-Ṭalāq\endif\ifeq{\x}{66}al-Taḥrīm\endif\ifeq{\x}{67}al-Mulk\endif\ifeq{\x}{68}al-Qalam\endif\ifeq{\x}{69}al-Ḥāqqah\endif\ifeq{\x}{70}al-Maʿārij\endif\ifeq{\x}{71}Nūḥ\endif\ifeq{\x}{72}al-Jinn\endif\ifeq{\x}{73}al-Muzammil\endif\ifeq{\x}{74}al-Muddaththir\endif\ifeq{\x}{75}al-Qiyāmah\endif\ifeq{\x}{76}al-Insān\endif\ifeq{\x}{77}al-Mursalāt\endif\ifeq{\x}{78}al-Nabaʾ\endif\ifeq{\x}{79}al-Nāziʿāt\endif\ifeq{\x}{80}ʿAbasa\endif\ifeq{\x}{81}al-Takwīr\endif\ifeq{\x}{82}al-Infiṭār\endif\ifeq{\x}{83}al-Muṭaffifīn\endif\ifeq{\x}{84}al-Inshiqāq\endif\ifeq{\x}{85}al-Burūj\endif\ifeq{\x}{86}al-Ṭāriq\endif\ifeq{\x}{87}al-Aʿlá\endif\ifeq{\x}{88}al-Ghāshiyah\endif\ifeq{\x}{89}al-Fajr\endif\ifeq{\x}{90}al-Balad\endif\ifeq{\x}{91}al-Shams\endif\ifeq{\x}{92}al-Layl\endif\ifeq{\x}{93}al-Ḍuhá\endif\ifeq{\x}{94}al-Inshiraḥ\endif\ifeq{\x}{95}al-Ṭīn\endif\ifeq{\x}{96}al-ʿAlaq\endif\ifeq{\x}{97}al-Qadr\endif\ifeq{\x}{98}al-Bayyinah\endif\ifeq{\x}{99}al-Zalzalah\endif\ifeq{\x}{100}al-ʿĀdiyāt\endif\ifeq{\x}{101}al-Qāriʿah\endif\ifeq{\x}{102}al-Takāthur\endif\ifeq{\x}{103}al-ʿAṣr\endif\ifeq{\x}{104}al-Humazah\endif\ifeq{\x}{105}al-Fīl\endif\ifeq{\x}{106}al-Quraysh\endif\ifeq{\x}{107}al-Māʿūn\endif\ifeq{\x}{108}al-Kawthar\endif\ifeq{\x}{109}al-Kāfirūn\endif\ifeq{\x}{110}al-Naṣr\endif\ifeq{\x}{111}al-Masad\endif\ifeq{\x}{112}al-Ikhlāṣ\endif\ifeq{\x}{113}al-Falaq\endif\ifeq{\x}{114}al-Nās\endif}

\mode{standard}{default}

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

#mode standard tex

\ifdef{IBN}
\define{BIN}{ibn}
\define{BINT}{bint}
\else
\define{BIN}{b.}
\define{BINT}{bt.}
\endif

\define{\SC{term}}{[\term]{.smallcaps}}
\define{\pyTime}{\exec{python ./util/_pyTime.py}}
\define{\ITA{term}}{[\term]{custom-style="In-text Arabic" dir="rtl" lang="ar"}}

\define{\ESC{term}}{\\term}

\mode{standard}{default}

#mode user "\\" "" "{" "}{" "}" "{" "}" "#" "@"
