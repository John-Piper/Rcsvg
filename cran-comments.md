## R CMD check results

There were no ERRORs, WARNINGs and NOTES.

Checked on macOS-latest (release), windows-latest (release), ubuntu-latest (devel), ubuntu-latest (release) and ubuntu-latest (oldrel-1).


## Downstream dependencies

There are currently no downstream dependencies for this package.


## Resubmission


This is a resubmission. In this version I have:

*  replaced \dontrun with \donttest in functions documentation for glue_files_from_folder and glue_data.  Function with @noRd in the documentation does not have @examples.

*  Near the start of the function glue_files_from_folder and load_files now have on.exit() passing a variable that has the original working directory as an argument.  This is to restore the users current working directory when the function exits.


Previous resubmission I have:

* Converted the DESCRIPTION title to title case.

* Updated the URL from https://codecov.io/gh/John-Piper/Rcsvg?branch=main to https://app.codecov.io/gh/John-Piper/Rcsvg?branch=main in README.md file.  The original URL had a 301 Status with the Message "Move Permanently".

* Amended the CSV word to all capitals in the DESCIPTION Description.
