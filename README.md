# howto
The original intent of this script was to have a quick way of displaying examples of commands and/or code in an easily readable & copyable layout.

howto is a bash script that utilizes `grep` to search for provided strings and displays it in a readable layout.
The provided strings are the arguments that are passed when running the script.

### help
```
$ howto --help

Usage: howto [OPTION]... [STRING1] [STRING2]...
Or:    howto [OPTION]... [BOOK_NAME] [STRING1]...

Options:

  -h, --help       Display this help text.
  -n, --nocolor    Don't use colors with output.
  -b, --books      Query the script to check configured books and if it can read the files.
  -o, --onlybook   Only search in the specified book.
  -a, --allbooks   Search all books simultaneously, with this option you only need to provide the strings you want to search for.

      no option    When no option is specified, the script will run in 'freeform' mode, in this mode:
                   1. Each argument (string) will be checked whether it's configured as a 'book', then search for the string after the 'book name' in the specified book.
                   2. If a book name is not specified, then the script will default back to the main book, called howto.main.
                      e.g. | $ howto git mybook 'mount cifs' 'puppet file' |
                      In the above example:
                                         'git' uses:      howto.main
                                  'mount cifs' uses:      howto.mybook    ('mybook' switches the book to:  howto.mybook)
                                 'puppet file' uses:      howto.main

Specifying a 'book name' as an argument will search for the given string in the specified book.
The 'book name' has to be configured inside of the 'books' array at the top of this script.
Example, assume 'book name' is 'mybook':
howto mybook 'git config'

TIP: Specify a ':' as the search string to display all entries of any book.
```
