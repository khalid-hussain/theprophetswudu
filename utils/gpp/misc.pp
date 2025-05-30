
#mode standard tex

\ifdef{IBN}
\define{BIN}{ibn}
\define{BINT}{bint}
\else
\define{BIN}{b.}
\define{BINT}{bt.}
\endif

\define{\SC{term}}{[\term]{.smallcaps}}
\define{pyTime}{\exec{python ./util/_pyTime.py}}
\define{\ITA{term}}{[\term]{custom-style="In-text Arabic" dir="rtl" lang="ar"}}

\define{\ESC{term}{\\\term}}

\mode{standard}{default}
