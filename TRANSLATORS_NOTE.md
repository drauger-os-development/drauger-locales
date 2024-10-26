A note to all translators
---

First off, thank you for putting in the effort to translate all this text. We know it's not easy, and truly appreicate all you do. 

With that being said, a few things must be shared.

Possible Formatting Change Immenent
---

In the near future, it is possible most of the translation configuration files will be converted to JSON. This will make parsing these files MUCH easier. The syntax will be similar for you to deal will. However, all comments will be removed from JSON files, into a dedicated NOTES.md file in each directory where comments are needed.

You will NOT have to convert file formats on your own. File format conversion will be handled for you in the `dev-branch` branch. If, for some reason, you DO need to convert a file from the old *.conf format to the new JSON format, a Python script will be available to make this process take less of your precious time.

Locale Codes
---

The folder `etc/drauger_locales/locale_code` MUST be renamed to whatever the locale code for the language you are working on is.

Example:

 >Translating to Spanish? `etc/drauger_locales/locale_code` must be renamed to `etc/drauger_locales/es_ES` where the first `es` is for `español` (Spanish in Spanish), and the second `ES` for `Espania` (Spain, in Spanish). If translating to Mexican Spanish (because yes, they are different. Albiet marginally) `etc/drauger_locales/locale_code` must be renamed to `etc/drauger_locales/es_MX` where the `MX` stands for `Mexico`.
 
 If you are unsure what locale code to use, check the locale of your system by opening a terminal and running:
 ```shell
 echo $LANG | sed 's/.UTF-8//g'
 ```
 or, go to [this website](http://www.localeplanet.com/support/browser.html), scroll to the bottom, and use the line after `Locale:`, NOT the line after `Locale Code:`
