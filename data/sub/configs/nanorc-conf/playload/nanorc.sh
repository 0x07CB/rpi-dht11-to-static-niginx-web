# This is a shell archive.  Save it in a file, remove anything before
# this line, and then unpack it by entering "sh file".  Note, it may
# create directories; files and directories will be owned by you and
# have default permissions.
#
# This archive contains:
#
#	nanorc
#
echo x - nanorc
sed 's/^X//' >nanorc << 'END-of-nanorc'
X## Sample initialization file for GNU nano.
X##
X## Characters that are special in a shell should not be escaped here.
X## Inside string parameters, quotes should not be escaped -- the last
X## double quote on the line will be seen as the closing quote.
X##
X## For the options that take parameters, the default value is shown.
X## Other options are unset by default.  To make sure that an option
X## is disabled, you can use "unset <option>".
X
X## Make the 'nextword' function (Ctrl+Right) stop at word ends
X## instead of at beginnings.
Xset afterends
X
X## When soft line wrapping is enabled, make it wrap lines at blanks
X## (tabs and spaces) instead of always at the edge of the screen.
Xset atblanks
X
X## Automatically indent a newly created line to the same number of
X## tabs and/or spaces as the preceding line -- or as the next line
X## if the preceding line is the beginning of a paragraph.
Xset autoindent
X
X## Back up files to the current filename plus a tilde.
Xset backup
X
X## The directory to put unique backup files in.
Xset backupdir "/depot/"
X
X## Use bold text instead of reverse video text.
Xset boldtext
X
X## The characters treated as closing brackets when justifying paragraphs.
X## This may not include any blank characters.  Only closing punctuation,
X## optionally followed by these closing brackets, can end sentences.
Xset brackets ""')>]}"
X
X## Automatically hard-wrap the current line when it becomes overlong.
Xset breaklonglines
X
X## Do case-sensitive searches by default.
Xset casesensitive
X
X## Constantly display the cursor position in the status bar.  Note that
X## this overrides "quickblank".
Xset constantshow
X
X## Use cut-from-cursor-to-end-of-line by default.
Xset cutfromcursor
X
X## Do not use the line below the title bar, leaving it entirely blank.
Xset emptyline
X
X## Set the target width for automatic hard-wrapping and for justifying
X## paragraphs.  If the specified value is 0 or less, the wrapping point
X## will be the terminal's width minus this number.
Xset fill -8
X
X## Remember the used search/replace strings for the next session.
Xset historylog
X
X## Scroll the buffer contents per half-screen instead of per line.
Xset jumpyscrolling
X
X## Display line numbers to the left of the text.
Xset linenumbers
X
X## Enable vim-style lock-files.  This is just to let a vim user know you
X## are editing a file [s]he is trying to edit and vice versa.  There are
X## no plans to implement vim-style undo state in these files.
Xset locking
X
X## The opening and closing brackets that can be found by bracket
X## searches.  They cannot contain blank characters.  The former set must
X## come before the latter set, and both must be in the same order.
Xset matchbrackets "(<[{)>]}"
X
X## Enable mouse support, if available for your system.  When enabled,
X## mouse clicks can be used to place the cursor, set the mark (with a
X## double click), and execute shortcuts.  The mouse will work in the X
X## Window System, and on the console when gpm is running.
Xset mouse
X
X## Switch on multiple file buffers (inserting a file will put it into
X## a separate buffer).
Xset multibuffer
X
X## Don't convert files from DOS/Mac format.
Xset noconvert
X
X## Don't display the helpful shortcut lists at the bottom of the screen.
X# set nohelp
X
X## Don't automatically add a newline when a file does not end with one.
X# set nonewlines
X
X## Set operating directory.  nano will not read or write files outside
X## this directory and its subdirectories.  Also, the current directory
X## is changed to here, so any files are inserted from this dir.  A blank
X## string means the operating-directory feature is turned off.
X# set operatingdir ""
X
X## Remember the cursor position in each file for the next editing session.
X# set positionlog
X
X## Preserve the XON and XOFF keys (^Q and ^S).
Xset preserve
X
X## The characters treated as closing punctuation when justifying
X## paragraphs.  They cannot contain blank characters.  Only closing
X## punctuation, optionally followed by closing brackets, can end
X## sentences.
X# set punct "!.?"
X
X## Do quick status-bar blanking.  Status-bar messages will disappear after
X## 1 keystroke instead of 26.  Note that "constantshow" overrides this.
X# set quickblank
X
X## The regular expression that matches quoting characters in email
X## or line-comment introducers in source code.  The default is:
X# set quotestr "^([ 	]*([!#%:;>|}]|//))+"
X
X## Try to work around a mismatching terminfo terminal description.
X# set rawsequences
X
X## Fix Backspace/Delete confusion problem.
X# set rebinddelete
X
X## Do regular-expression searches by default.
X## Regular expressions are of the extended type (ERE).
Xset regexp
X
X## Put the cursor on the highlighted item in the file browser, and show
X## the cursor in the help viewer; useful for people who use a braille
X## display and people with poor vision.
Xset showcursor
X
X## Make the Home key smarter.  When Home is pressed anywhere but at the
X## very beginning of non-whitespace characters on a line, the cursor
X## will jump to that beginning (either forwards or backwards).  If the
X## cursor is already at that position, it will jump to the true
X## beginning of the line.
Xset smarthome
X
X## Spread overlong lines over multiple screen lines.
Xset softwrap
X
X## Use this spelling checker instead of the internal one.  This option
X## does not have a default value.
X# set speller "aspell -x -c"
X
X## Allow nano to be suspended (with ^Z by default).
X# set suspendable
X## (The old form of this option, 'set suspend', is deprecated.)
X
X## Use this tab size instead of the default; it must be greater than 0.
X# set tabsize 8
X
X## Convert typed tabs to spaces.
X# set tabstospaces
X
X## Save automatically on exit; don't prompt.
X# set tempfile
X
X## Snip whitespace at the end of lines when justifying or hard-wrapping.
X# set trimblanks
X
X## Disallow file modification.  Why would you want this in an rcfile? ;)
X# set view
X
X## The two single-column characters used to display the first characters
X## of tabs and spaces.  187 in ISO 8859-1 (0000BB in Unicode) and 183 in
X## ISO-8859-1 (0000B7 in Unicode) seem to be good values for these.
X## The default when in a UTF-8 locale:
X# set whitespace "»·"
X## The default otherwise:
X# set whitespace ">."
X
X## Detect word boundaries differently by treating punctuation
X## characters as parts of words.
X# set wordbounds
X
X## The characters (besides alphanumeric ones) that should be considered
X## as parts of words.  This option does not have a default value.  When
X## set, it overrides option 'set wordbounds'.
X# set wordchars "<_>."
X
X## Let an unmodified Backspace or Delete erase the marked region (instead
X## of a single character, and without affecting the cutbuffer).
X# set zap
X
X## Paint the interface elements of nano.  These are examples;
X## by default there are no colors, except for errorcolor.
X# set titlecolor brightwhite,blue
X# set statuscolor brightwhite,green
X# set errorcolor brightwhite,red
X# set selectedcolor brightwhite,magenta
X# set stripecolor ,yellow
X# set numbercolor cyan
X# set keycolor cyan
X# set functioncolor green
X## In root's .nanorc you might want to use:
X# set titlecolor brightwhite,magenta
X# set statuscolor brightwhite,magenta
X# set errorcolor brightwhite,red
X# set selectedcolor brightwhite,cyan
X# set stripecolor ,yellow
X# set numbercolor magenta
X# set keycolor brightmagenta
X# set functioncolor magenta
X
X
X## Setup of syntax coloring.
X##
X##   syntax "name" ["filename regex" ...]
X##
X##   color|icolor foreground,background "regex" ["regex"...]
X##   [...]
X##
X## 'color' will do case-sensitive matches, while 'icolor' will do
X## case-insensitive matches.
X##
X## All color commands are applied in the order in which they are specified,
X## meaning that later commands can recolor stuff that was colored earlier.
X##
X## Valid color names for foreground and background are: white, black, normal,
X## red, blue, green, yellow, magenta, cyan.  For foreground colors, you may
X## use the prefix "bright" to get a stronger highlight.
X##
X## All regexes (regular expressions) are of the extended type (ERE).
X##
X## If the coloring rule should span multiple lines, use the following format:
X##
X##   color fg,bg  start="regex" end="regex"
X##
X## If you wish, you may put your syntax definitions in separate files.
X## You can make use of such files as follows:
X##
X##   include "/path/to/syntax_file.nanorc"
X
X## To include all existing syntax definitions, you can do:
X# include "/usr/share/nano/*.nanorc"
X
X
X## If <Tab> should always produce four spaces when editing a Python file,
X## independent of the settings of 'tabsize' and 'tabstospaces':
X# extendsyntax python tabgives "    "
X
X## If <Tab> should always produce an actual TAB when editing a Makefile:
X# extendsyntax makefile tabgives "	"
X
X
X## Key bindings.
X## See nanorc(5) (section REBINDING KEYS) for more details on this.
X
X## The <Ctrl+Delete> keystroke deletes the word to the right of the cursor.
X## On some terminals the <Ctrl+Backspace> keystroke produces ^H, which is
X## the ASCII character for backspace, so it is bound by default to the
X## backspace function.  The <Backspace> key itself produces a different
X## keycode, which is hard-bound to the backspace function.  So, if you
X## normally use <Backspace> for backspacing and not ^H, you can make
X## <Ctrl+Backspace> delete the word to the left of the cursor with:
X# bind ^H chopwordleft main
X
X## If you would like nano to have keybindings that are more "usual",
X## such as ^O for Open, ^F for Find, ^H for Help, and ^Q for Quit,
X## then uncomment these:
X#bind ^Q exit all
X#bind ^S savefile main
X#bind ^W writeout main
X#bind ^O insert main
X#bind ^H help all
X#bind ^H exit help
X#bind ^F whereis all
X#bind ^G findnext all
X#bind ^B wherewas all
X#bind ^D findprevious all
X#bind ^R replace main
X#bind M-X flipnewbuffer all
X#bind ^X cut all
X#bind ^C copy main
X#bind ^V paste all
X#bind ^P curpos main
X#bind ^A mark main
X#unbind ^K main
X#unbind ^U all
X#unbind ^N main
X#unbind ^Y all
X#unbind M-J main
X#unbind M-T main
X#bind ^T gotoline main
X#bind ^T gotodir browser
X#bind ^Y speller main
X#bind M-U undo main
X#bind M-R redo main
X#bind ^U undo main
X#bind ^E redo main
X
END-of-nanorc
exit

