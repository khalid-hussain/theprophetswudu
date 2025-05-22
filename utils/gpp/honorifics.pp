
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
