
# Editorial Project Template

## Dependencies

This is an editorial template which can be used to manage Islamic book projects.
It relies on the following:

1. [Pandoc]
2. [GPP] - a binary for Windows systems is provided in `utils/gpp`. For other systems, follow instructions on the official website.
3. GNU Make - this comes out-of-the-box on Linux and macOS systems. It has to be installed on Windows systems.

## Fonts

For Arabic content, we use the fonts provided by the King Fahad Glorious Quran Printing Complex (KFGQPC).
This combination is recommended so as to maintain the same line height for Arabic content.
Using other combinations is not an issue if line height can be maintained, e.g. using InDesign.
This is harder if not impossible to achieve in the EPUB format.

## Preprocessor macros

The template makes use of a lot of macros to simplify repetitive tasks.
We use [GPP] for this task.
There are macros for different tasks:

1. Honorifics;
2. *Āyah* reference helpers;
3. *Ḥadīth* reference helpers; and
3. Paragraph and character styles.

## Helpers for Honorifics

Use `\hon{\SHORTCODE}{\LOCATION}` where `SHORTCODE` is one of the shortcodes found
in `utils/gpp/honorifics.pp` and `LOCATION` is one of the following: `HEADER`,
`BODY`, or `FOOTER`. So to send salutations on the Prophet in the body text, use
`\hon{\PBUH}{\BODY}`.

## Helpers for *Āyah* reference

An *āyah* reference consists of two parts: (1) Arabic text and (2) its translation.
The former is followed immediately by the latter.
This is demonstrated in the following snippet:

```
\AYAH_AR_START
خِتَٰمُهُۥ مِسۡكٞۚ وَفِي ذَٰلِكَ فَلۡيَتَنَافَسِ ٱلۡمُتَنَٰفِسُونَ ٢٦
\AYAH_AR_END

\AYAH_START
The last of it is musk. So for this let the competitors compete. (Q83:26)
\AYAH_END
```

The content for the Arabic part of the *āyah* can be retrieved from `utils/quran/quran-ayah-getter.ipynb`.
It's a Jupyter notebook and has methods to extract content from the Quran data CSV file `hafsData_v18.csv`.

## Helpers for *Ḥadīth* reference

A *ḥadīth* reference consists of two parts: (1) Arabic text and (2) its translation.
The former is followed immediately by the latter.
This is demonstrated in the following snippet:

```
\HADITH_AR_START
إنما الأعمال بالنيات.
\HADITH_AR_END

\HADITH_START
“Deeds are by intention.”
\HADITH_END
```

## Helpers for paragraph and character styles

For [small caps], use `\SC{term}`.
Internally, this expands to `[term]{.smallcaps}`.

## References

It uses Pandoc's citation processor.
The citation style is [Chicago fullnote (shortitle subsequent)];
It is preferred over styles which used “Ibid.” for subsequent mentions because it is inconvenient for digital formats such as EPUB3.
It also allows adding other content to the footnote along with the reference.

This should only be used if the book is to be re-edited, otherwise, reference
content should just be copied as is.

## Misc. info

If frontmatter content ends with its author's information, such as name, date of
writing, and place of writing, these are to be surrounded by the custom style
tags:

```
::: {custom-style="left-ragged"}
Content Line 1  
Content Line 2  
Content Line 3  
...
:::
```

...where each line with the exception of the last line is followed by a double space.

Even if the content block aligned, it is to be aligned left. This is because if
the content is exported for EPUBs, right-alignment might be overridden by user
preference.

## Starting checklist

1. Clone the repo.

2. Type in book details in `./metadata.yaml`

3. Start creating Markdown files in `content/frontmatter` and `content/mainmatter`.
   a.  For files in `frontmatter`, consider using using the `unnumbered` attribute for headers so that they are not numbered; usually, numbering starts with the first chapter. E.g. `# Heading Title {.unnumbered}`

   b.  Most books can be split easily into chapters. For those that cannot,
   arbitrary division into separate Markdown files is recommended if the book is long.

4. To generate a draft, type `make` followed by the required format: `make EPUB` or `make DOCX`.

## Cons

For other than syntax errors, macro expansion from [GPP] usually, if not always, fails silently.

[Pandoc]: https://pandoc.org/
[GPP]: https://files.nothingisreal.com/software/gpp/gpp.html
[Chicago fullnote (shortitle subsequent)]: https://www.zotero.org/styles/chicago-fullnote-bibliography-short-title-subsequent
[small caps]: https://en.wikipedia.org/wiki/Small_caps

## Guidelines

1. Ensure one-line space between headers and the first paragraphs.

2. Footnote content is best placed right after the paragraph in which its marker is placed.

3. Quran and Ḥadīth references need to be manually typed at the end of their translations.

4. The conventional order of English book frontmatter is:

      i. Dedication

     ii. Foreword

    iii. Preface

     iv. acknowledgements

      v. Contents