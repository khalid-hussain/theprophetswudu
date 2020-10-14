#mode standard cpp
/* ======================
        Quran Related
   ======================*/

#mode standard tex
\define{\qref{surahName}{surahNumber}{ayahNumber}}{\surahName, Q\surahNumber:\ayahNumber}

\mode{standard}{cpp}
/* ======================
        Ḥadīth Related
   ======================*/

#mode standard cpp
/* ======================
        Honorifics
   ======================*/
#mode standard default

#define PBUH ([صلى الله عليه وسلم]{lang=ar})
#define P_HIM ([رضي الله عنه]{lang=ar})
#define P_HER ([رضي الله عنها]{lang=ar})
#define P_TWO ([رضي الله عنهما]{lang=ar})
#define P_THM ([رضي الله عنهم]{lang=ar})
#define M_HIM ([رحمه الله تعالى]{lang=ar})

#define BPBUH ([صلى الله عليه وسلم]{custom-style="kBody Honorifics"})
#define BP_HIM ([رضي الله عنه]{custom-style="kBody Honorifics"})
#define BP_HER ([رضي الله عنها]{custom-style="kBody Honorifics"})
#define BP_TWO ([رضي الله عنهما]{custom-style="kBody Honorifics"})
#define BP_THM ([رضي الله عنهم]{custom-style="kBody Honorifics"})
#define BM_HIM ([رحمه الله تعالى]{custom-style="kBody Honorifics"})

#define BSWT ([سبحانه وتعالى]{custom-style="kBody Honorifics"})

#define BUG []{custom-style="wingdings"}

#define ENGLISH_SANAD [TODO English sanad]{custom-style='kRED'}
#define pyTime #exec python ./util/_pyTime.py

#mode standard cpp
/* ==========================
        DOCUMENT METADATA
   ==========================*/
#include metadata.yaml

#mode standard default

