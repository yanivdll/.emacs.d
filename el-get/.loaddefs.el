;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads nil "apel/site-lisp/apel/alist" "apel/site-lisp/apel/alist.el"
;;;;;;  (22051 3974 0 0))
;;; Generated autoloads from apel/site-lisp/apel/alist.el

(autoload 'put-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in ALIST to VALUE and return ALIST.
If there is no such element, create a new pair (KEY . VALUE) and
return a new alist whose car is the new pair and cdr is ALIST.

\(fn KEY VALUE ALIST)" nil nil)

(autoload 'del-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from ALIST.
Return the modified ALIST.

\(fn KEY ALIST)" nil nil)

(autoload 'set-alist "apel/site-lisp/apel/alist" "\
Set cdr of an element (KEY . ...) in the alist bound to SYMBOL to VALUE.

\(fn SYMBOL KEY VALUE)" nil nil)

(autoload 'remove-alist "apel/site-lisp/apel/alist" "\
Delete an element whose car equals KEY from the alist bound to SYMBOL.

\(fn SYMBOL KEY)" nil nil)

(autoload 'modify-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in the alist DEFAULT.
Return the modified alist.

\(fn MODIFIER DEFAULT)" nil nil)

(autoload 'set-modified-alist "apel/site-lisp/apel/alist" "\
Store elements in the alist MODIFIER in an alist bound to SYMBOL.
If SYMBOL is not bound, set it to nil at first.

\(fn SYMBOL MODIFIER)" nil nil)

(autoload 'vassoc "apel/site-lisp/apel/alist" "\
Search AVLIST for an element whose first element equals KEY.
AVLIST is a list of vectors.
See also `assoc'.

\(fn KEY AVLIST)" nil nil)

;;;***

;;;### (autoloads nil "apel/site-lisp/apel/path-util" "apel/site-lisp/apel/path-util.el"
;;;;;;  (22051 3974 0 0))
;;; Generated autoloads from apel/site-lisp/apel/path-util.el

(autoload 'add-path "apel/site-lisp/apel/path-util" "\
Add PATH to `load-path' if it exists under `default-load-path'
directories and it does not exist in `load-path'.

You can use following PATH styles:
	load-path relative: \"PATH/\"
			(it is searched from `default-load-path')
	home directory relative: \"~/PATH/\" \"~USER/PATH/\"
	absolute path: \"/HOO/BAR/BAZ/\"

You can specify following OPTIONS:
	'all-paths	search from `load-path'
			instead of `default-load-path'
	'append		add PATH to the last of `load-path'

\(fn PATH &rest OPTIONS)" nil nil)

(autoload 'add-latest-path "apel/site-lisp/apel/path-util" "\
Add latest path matched by PATTERN to `load-path'
if it exists under `default-load-path' directories
and it does not exist in `load-path'.

If optional argument ALL-PATHS is specified, it is searched from all
of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'get-latest-path "apel/site-lisp/apel/path-util" "\
Return latest directory in default-load-path
which is matched to regexp PATTERN.
If optional argument ALL-PATHS is specified,
it is searched from all of load-path instead of default-load-path.

\(fn PATTERN &optional ALL-PATHS)" nil nil)

(autoload 'file-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn FILE &optional PATHS)" nil nil)

(defvar exec-suffix-list '("") "\
*List of suffixes for executable.")

(autoload 'exec-installed-p "apel/site-lisp/apel/path-util" "\
Return absolute-path of FILE if FILE exists in PATHS.
If PATHS is omitted, `exec-path' is used.
If suffixes is omitted, `exec-suffix-list' is used.

\(fn FILE &optional PATHS SUFFIXES)" nil nil)

(autoload 'module-installed-p "apel/site-lisp/apel/path-util" "\
Return t if module is provided or exists in PATHS.
If PATHS is omitted, `load-path' is used.

\(fn MODULE &optional PATHS)" nil nil)

;;;***

;;;### (autoloads nil "apel/site-lisp/emu/richtext" "apel/site-lisp/emu/richtext.el"
;;;;;;  (22051 3974 0 0))
;;; Generated autoloads from apel/site-lisp/emu/richtext.el

(autoload 'richtext-encode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

(autoload 'richtext-decode "apel/site-lisp/emu/richtext" "\


\(fn FROM TO)" nil nil)

;;;***

;;;### (autoloads nil "define-word/define-word" "define-word/define-word.el"
;;;;;;  (22052 27102 0 0))
;;; Generated autoloads from define-word/define-word.el

(autoload 'define-word "define-word/define-word" "\
Define WORD using the Wordnik website.

\(fn WORD)" t nil)

(autoload 'define-word-at-point "define-word/define-word" "\
Use `define-word' to define word at point.
When the region is active, define the marked phrase.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "dictionary-app/dictionary-app" "dictionary-app/dictionary-app.el"
;;;;;;  (22052 28675 0 0))
;;; Generated autoloads from dictionary-app/dictionary-app.el

(autoload 'dictionary-app-search "dictionary-app/dictionary-app" "\
Search for TERM in OSX Dictionary.app.

If TERM is nil, try in order terms in the region, then
`word-at-point' finally read from minibuffer.

\(fn &optional TERM)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get" "el-get/el-get.el" (22051 3844
;;;;;;  0 0))
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-install "el-get/el-get" "\
Cause the named PACKAGE to be installed after all of its
dependencies (if any).

PACKAGE may be either a string or the corresponding symbol.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update "el-get/el-get" "\
Update PACKAGE.

\(fn PACKAGE)" t nil)

(autoload 'el-get-update-all "el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-update-packages-of-type "el-get/el-get" "\
Update all installed packages of type TYPE.

\(fn TYPE)" t nil)

(autoload 'el-get-self-update "el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-remove "el-get/el-get" "\
Remove any PACKAGE that is know to be installed or required.

\(fn PACKAGE)" t nil)

(autoload 'el-get-reinstall "el-get/el-get" "\
Remove PACKAGE and then install it again.

\(fn PACKAGE)" t nil)

(autoload 'el-get-cd "el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE)" t nil)

(autoload 'el-get-self-checksum "el-get/el-get" "\
Compute the checksum of the running version of el-get itself.

Also put the checksum in the kill-ring.

\(fn)" t nil)

(autoload 'el-get "el-get/el-get" "\
Ensure that packages have been downloaded once and init them as needed.

This will not update the sources by using `apt-get install' or
`git pull', but it will ensure that:

* the packages have been installed
* load-path is set so their elisp files can be found
* Info-directory-list is set so their info files can be found
* Autoloads have been prepared and evaluated for each package
* Any post-installation setup (e.g. `(require 'feature)') happens

When SYNC is nil (the default), all installations run
concurrently, in the background.

When SYNC is 'sync, each package will be installed synchronously,
and any error will stop it all.

Please note that the `el-get-init' part of `el-get' is always
done synchronously. There's `byte-compile' support though, and
the packages you use are welcome to use `autoload' too.

PACKAGES is expected to be a list of packages you want to install
or init.  When PACKAGES is omited (the default), the list of
already installed packages is considered.

\(fn &optional SYNC &rest PACKAGES)" nil nil)

;;;***

;;;### (autoloads nil "el-get/el-get-bundle" "el-get/el-get-bundle.el"
;;;;;;  (22051 3844 0 0))
;;; Generated autoloads from el-get/el-get-bundle.el

(autoload 'el-get-bundle-el-get "el-get/el-get-bundle" "\


\(fn SRC)" nil nil)

(autoload 'el-get-bundle "el-get/el-get-bundle" "\
Install PACKAGE and run initialization FORM.

PACKAGE can be either a simple package name or a package name
with a modifier before the name to specify local recipe source
information:

* `<owner>/' : specifies a Github owner name
* `gist:<id>' : specifies a Gist ID
* `<type>:' : specifies a type of the package source

If `FEATURE in PACKAGE' form is used instead of PACKAGE, then
that FEATURE is `require'd after installing PACKAGE.  You can
also use `el-get-bundle!' macro if FEATURE and PACKAGE are the
same.  If you wish to `require' more than one feature, then use
`:features' property in FORM.

The initialization FORM may start with a property list that
describes a local recipe.  The FORM after the property list is
treated as initialization code, which is actually an `:after'
property of the local recipe.

A copy of the initialization code is stored in a directory
specified by `el-get-bundle-init-directory' and its byte-compiled
version is used if `el-get-bundle-byte-compile' is non-nil.

\(fn PACKAGE &rest FORM)" nil t)

(put 'el-get-bundle 'lisp-indent-function 'defun)

(autoload 'el-get-bundle! "el-get/el-get-bundle" "\
Install PACKAGE and run initialization form.
It is the same as `el-get-bundle' except that PACKAGE is explicitly
required.

\(fn PACKAGE &rest ARGS)" nil t)

(put 'el-get-bundle! 'lisp-indent-function 'defun)

;;;***

;;;### (autoloads nil "el-get/el-get-check" "el-get/el-get-check.el"
;;;;;;  (22051 3844 0 0))
;;; Generated autoloads from el-get/el-get-check.el

(autoload 'el-get-check-recipe "el-get/el-get-check" "\
Check the format of the recipe.
Please run this command before sending a pull request.
Usage: M-x el-get-check-recipe RET

You can run this function from checker script like this:
    test/check-recipe.el PATH/TO/RECIPE.rcp

When used as a lisp function, FILE-OR-BUFFER must be a buffer
object or a file path.

\(fn FILE-OR-BUFFER)" t nil)

;;;***

;;;### (autoloads nil "el-get/el-get-list-packages" "el-get/el-get-list-packages.el"
;;;;;;  (22051 3844 0 0))
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil "emacs-async/async" "emacs-async/async.el"
;;;;;;  (22052 64393 0 0))
;;; Generated autoloads from emacs-async/async.el

(autoload 'async-start-process "emacs-async/async" "\
Start the executable PROGRAM asynchronously.  See `async-start'.
PROGRAM is passed PROGRAM-ARGS, calling FINISH-FUNC with the
process object when done.  If FINISH-FUNC is nil, the future
object will return the process object when the program is
finished.  Set DEFAULT-DIRECTORY to change PROGRAM's current
working directory.

\(fn NAME PROGRAM FINISH-FUNC &rest PROGRAM-ARGS)" nil nil)

(autoload 'async-start "emacs-async/async" "\
Execute START-FUNC (often a lambda) in a subordinate Emacs process.
When done, the return value is passed to FINISH-FUNC.  Example:

    (async-start
       ;; What to do in the child process
       (lambda ()
         (message \"This is a test\")
         (sleep-for 3)
         222)

       ;; What to do when it finishes
       (lambda (result)
         (message \"Async process done, result should be 222: %s\"
                  result)))

If FINISH-FUNC is nil or missing, a future is returned that can
be inspected using `async-get', blocking until the value is
ready.  Example:

    (let ((proc (async-start
                   ;; What to do in the child process
                   (lambda ()
                     (message \"This is a test\")
                     (sleep-for 3)
                     222))))

        (message \"I'm going to do some work here\") ;; ....

        (message \"Waiting on async process, result should be 222: %s\"
                 (async-get proc)))

If you don't want to use a callback, and you don't care about any
return value form the child process, pass the `ignore' symbol as
the second argument (if you don't, and never call `async-get', it
will leave *emacs* process buffers hanging around):

    (async-start
     (lambda ()
       (delete-file \"a remote file on a slow link\" nil))
     'ignore)

Note: Even when FINISH-FUNC is present, a future is still
returned except that it yields no value (since the value is
passed to FINISH-FUNC).  Call `async-get' on such a future always
returns nil.  It can still be useful, however, as an argument to
`async-ready' or `async-wait'.

\(fn START-FUNC &optional FINISH-FUNC)" nil t)

;;;***

;;;### (autoloads nil "emacs-async/async-bytecomp" "emacs-async/async-bytecomp.el"
;;;;;;  (22052 64393 0 0))
;;; Generated autoloads from emacs-async/async-bytecomp.el

(autoload 'async-byte-recompile-directory "emacs-async/async-bytecomp" "\
Compile all *.el files in DIRECTORY asynchronously.
All *.elc files are systematically deleted before proceeding.

\(fn DIRECTORY &optional QUIET)" nil nil)

(defvar async-bytecomp-package-mode nil "\
Non-nil if Async-Bytecomp-Package mode is enabled.
See the command `async-bytecomp-package-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `async-bytecomp-package-mode'.")

(custom-autoload 'async-bytecomp-package-mode "emacs-async/async-bytecomp" nil)

(autoload 'async-bytecomp-package-mode "emacs-async/async-bytecomp" "\
Byte compile asynchronously packages installed with package.el.
Async compilation of packages can be controlled by
`async-bytecomp-allowed-packages'.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "emacs-async/dired-async" "emacs-async/dired-async.el"
;;;;;;  (22052 64393 0 0))
;;; Generated autoloads from emacs-async/dired-async.el

(defvar dired-async-mode nil "\
Non-nil if Dired-Async mode is enabled.
See the command `dired-async-mode' for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `dired-async-mode'.")

(custom-autoload 'dired-async-mode "emacs-async/dired-async" nil)

(autoload 'dired-async-mode "emacs-async/dired-async" "\
Do dired actions asynchronously.

\(fn &optional ARG)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/eword-decode" "flim/site-lisp/flim/eword-decode.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/eword-decode.el

(autoload 'mime-set-field-decoder "flim/site-lisp/flim/eword-decode" "\
Set decoder of FIELD.
SPECS must be like `MODE1 DECODER1 MODE2 DECODER2 ...'.
Each mode must be `nil', `plain', `wide', `summary' or `nov'.
If mode is `nil', corresponding decoder is set up for every modes.

\(fn FIELD &rest SPECS)" nil nil)

(autoload 'mime-find-field-presentation-method "flim/site-lisp/flim/eword-decode" "\
Return field-presentation-method from NAME.
NAME must be `plain', `wide', `summary' or `nov'.

\(fn NAME)" nil t)

(autoload 'mime-find-field-decoder "flim/site-lisp/flim/eword-decode" "\
Return function to decode field-body of FIELD in MODE.
Optional argument MODE must be object or name of
field-presentation-method.  Name of field-presentation-method must be
`plain', `wide', `summary' or `nov'.
Default value of MODE is `summary'.

\(fn FIELD &optional MODE)" nil nil)

(autoload 'mime-update-field-decoder-cache "flim/site-lisp/flim/eword-decode" "\
Update field decoder cache `mime-field-decoder-cache'.

\(fn FIELD MODE &optional FUNCTION)" nil nil)

(autoload 'mime-decode-field-body "flim/site-lisp/flim/eword-decode" "\
Decode FIELD-BODY as FIELD-NAME in MODE, and return the result.
Optional argument MODE must be `plain', `wide', `summary' or `nov'.
Default mode is `summary'.

If MODE is `wide' and MAX-COLUMN is non-nil, the result is folded with
MAX-COLUMN.

Non MIME encoded-word part in FILED-BODY is decoded with
`default-mime-charset'.

\(fn FIELD-BODY FIELD-NAME &optional MODE MAX-COLUMN)" nil nil)

(autoload 'mime-decode-header-in-region "flim/site-lisp/flim/eword-decode" "\
Decode MIME encoded-words in region between START and END.
If CODE-CONVERSION is nil, it decodes only encoded-words.  If it is
mime-charset, it decodes non-ASCII bit patterns as the mime-charset.
Otherwise it decodes non-ASCII bit patterns as the
default-mime-charset.

\(fn START END &optional CODE-CONVERSION)" t nil)

(autoload 'mime-decode-header-in-buffer "flim/site-lisp/flim/eword-decode" "\
Decode MIME encoded-words in header fields.
If CODE-CONVERSION is nil, it decodes only encoded-words.  If it is
mime-charset, it decodes non-ASCII bit patterns as the mime-charset.
Otherwise it decodes non-ASCII bit patterns as the
default-mime-charset.
If SEPARATOR is not nil, it is used as header separator.

\(fn &optional CODE-CONVERSION SEPARATOR)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/eword-encode" "flim/site-lisp/flim/eword-encode.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/eword-encode.el

(autoload 'mime-encode-field-body "flim/site-lisp/flim/eword-encode" "\
Encode FIELD-BODY as FIELD-NAME, and return the result.
A lexical token includes non-ASCII character is encoded as MIME
encoded-word.  ASCII token is not encoded.

\(fn FIELD-BODY FIELD-NAME)" nil nil)

(autoload 'mime-encode-header-in-buffer "flim/site-lisp/flim/eword-encode" "\
Encode header fields to network representation, such as MIME encoded-word.
It refers the `mime-field-encoding-method-alist' variable.

\(fn &optional CODE-CONVERSION)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/mel" "flim/site-lisp/flim/mel.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mel.el

(autoload 'mime-encode-region "flim/site-lisp/flim/mel" "\
Encode region START to END of current buffer using ENCODING.
ENCODING must be string.

\(fn START END ENCODING)" t nil)

(autoload 'mime-decode-region "flim/site-lisp/flim/mel" "\
Decode region START to END of current buffer using ENCODING.
ENCODING must be string.

\(fn START END ENCODING)" t nil)

(autoload 'mime-decode-string "flim/site-lisp/flim/mel" "\
Decode STRING using ENCODING.
ENCODING must be string.  If ENCODING is found in
`mime-string-decoding-method-alist' as its key, this function decodes
the STRING by its value.

\(fn STRING ENCODING)" nil nil)

(autoload 'mime-insert-encoded-file "flim/site-lisp/flim/mel" "\
Insert file FILENAME encoded by ENCODING format.

\(fn FILENAME ENCODING)" t nil)

(autoload 'mime-write-decoded-region "flim/site-lisp/flim/mel" "\
Decode and write current region encoded by ENCODING into FILENAME.
START and END are buffer positions.

\(fn START END FILENAME ENCODING)" t nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/mime-conf" "flim/site-lisp/flim/mime-conf.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mime-conf.el

(autoload 'mime-parse-mailcap-buffer "flim/site-lisp/flim/mime-conf" "\
Parse BUFFER as a mailcap, and return the result.
If optional argument ORDER is a function, result is sorted by it.
If optional argument ORDER is not specified, result is sorted original
order.  Otherwise result is not sorted.

\(fn &optional BUFFER ORDER)" nil nil)

(defvar mime-mailcap-file "~/.mailcap" "\
*File name of user's mailcap file.")

(autoload 'mime-parse-mailcap-file "flim/site-lisp/flim/mime-conf" "\
Parse FILENAME as a mailcap, and return the result.
If optional argument ORDER is a function, result is sorted by it.
If optional argument ORDER is not specified, result is sorted original
order.  Otherwise result is not sorted.

\(fn &optional FILENAME ORDER)" nil nil)

(autoload 'mime-format-mailcap-command "flim/site-lisp/flim/mime-conf" "\
Return formated command string from MTEXT and SITUATION.

MTEXT is a command text of mailcap specification, such as
view-command.

SITUATION is an association-list about information of entity.  Its key
may be:

	'type		primary media-type
	'subtype	media-subtype
	'filename	filename
	STRING		parameter of Content-Type field

\(fn MTEXT SITUATION)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/mime-parse" "flim/site-lisp/flim/mime-parse.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/mime-parse.el

(autoload 'mime-parse-Content-Type "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Type field.
FIELD-BODY is a string.
Return value is a mime-content-type object.
If FIELD-BODY is not a valid Content-Type field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Type "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Type field of current-buffer.
Return value is a mime-content-type object.
If Content-Type field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-Content-Disposition "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Disposition field.
FIELD-BODY is a string.
Return value is a mime-content-disposition object.
If FIELD-BODY is not a valid Content-Disposition field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Disposition "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Disposition field of current-buffer.
Return value is a mime-content-disposition object.
If Content-Disposition field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-Content-Transfer-Encoding "flim/site-lisp/flim/mime-parse" "\
Parse FIELD-BODY as a Content-Transfer-Encoding field.
FIELD-BODY is a string.
Return value is a string.
If FIELD-BODY is not a valid Content-Transfer-Encoding field, return nil.

\(fn FIELD-BODY)" nil nil)

(autoload 'mime-read-Content-Transfer-Encoding "flim/site-lisp/flim/mime-parse" "\
Parse field-body of Content-Transfer-Encoding field of current-buffer.
Return value is a string.
If Content-Transfer-Encoding field is not found, return nil.

\(fn)" nil nil)

(autoload 'mime-parse-msg-id "flim/site-lisp/flim/mime-parse" "\
Parse TOKENS as msg-id of Content-ID or Message-ID field.

\(fn TOKENS)" nil nil)

(autoload 'mime-uri-parse-cid "flim/site-lisp/flim/mime-parse" "\
Parse STRING as cid URI.

\(fn STRING)" nil nil)

(autoload 'mime-parse-buffer "flim/site-lisp/flim/mime-parse" "\
Parse BUFFER as a MIME message.
If buffer is omitted, it parses current-buffer.

\(fn &optional BUFFER REPRESENTATION-TYPE)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/qmtp" "flim/site-lisp/flim/qmtp.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/qmtp.el

(defvar qmtp-open-connection-function #'open-network-stream)

(autoload 'qmtp-via-qmtp "flim/site-lisp/flim/qmtp" "\


\(fn SENDER RECIPIENTS BUFFER)" nil nil)

(autoload 'qmtp-send-buffer "flim/site-lisp/flim/qmtp" "\


\(fn SENDER RECIPIENTS BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/smtp" "flim/site-lisp/flim/smtp.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/smtp.el

(defvar smtp-open-connection-function #'open-network-stream "\
*Function used for connecting to a SMTP server.
The function will be called with the same four arguments as
`open-network-stream' and should return a process object.
Here is an example:

\(setq smtp-open-connection-function
      #'(lambda (name buffer host service)
	  (let ((process-connection-type nil))
	    (start-process name buffer \"ssh\" \"-C\" host
			   \"nc\" host service))))

It connects to a SMTP server using \"ssh\" before actually connecting
to the SMTP port.  Where the command \"nc\" is the netcat executable;
see http://www.atstake.com/research/tools/index.html#network_utilities
for details.")

(autoload 'smtp-via-smtp "flim/site-lisp/flim/smtp" "\
Like `smtp-send-buffer', but sucks in any errors.

\(fn SENDER RECIPIENTS BUFFER)" nil nil)

(autoload 'smtp-send-buffer "flim/site-lisp/flim/smtp" "\
Send a message.
SENDER is an envelope sender address.
RECIPIENTS is a list of envelope recipient addresses.
BUFFER may be a buffer or a buffer name which contains mail message.

\(fn SENDER RECIPIENTS BUFFER)" nil nil)

;;;***

;;;### (autoloads nil "flim/site-lisp/flim/std11" "flim/site-lisp/flim/std11.el"
;;;;;;  (22051 3976 0 0))
;;; Generated autoloads from flim/site-lisp/flim/std11.el

(autoload 'std11-fetch-field "flim/site-lisp/flim/std11" "\
Return the value of the header field NAME.
The buffer is expected to be narrowed to just the headers of the message.

\(fn NAME)" nil nil)

(autoload 'std11-narrow-to-header "flim/site-lisp/flim/std11" "\
Narrow to the message header.
If BOUNDARY is not nil, it is used as message header separator.

\(fn &optional BOUNDARY)" nil nil)

(autoload 'std11-field-body "flim/site-lisp/flim/std11" "\
Return the value of the header field NAME.
If BOUNDARY is not nil, it is used as message header separator.

\(fn NAME &optional BOUNDARY)" nil nil)

(autoload 'std11-unfold-string "flim/site-lisp/flim/std11" "\
Unfold STRING as message header field.

\(fn STRING)" nil nil)

(autoload 'std11-lexical-analyze "flim/site-lisp/flim/std11" "\
Analyze STRING as lexical tokens of STD 11.

\(fn STRING &optional ANALYZER START)" nil nil)

(autoload 'std11-address-string "flim/site-lisp/flim/std11" "\
Return string of address part from parsed ADDRESS of RFC 822.

\(fn ADDRESS)" nil nil)

(autoload 'std11-full-name-string "flim/site-lisp/flim/std11" "\
Return string of full-name part from parsed ADDRESS of RFC 822.

\(fn ADDRESS)" nil nil)

(autoload 'std11-msg-id-string "flim/site-lisp/flim/std11" "\
Return string from parsed MSG-ID of RFC 822.

\(fn MSG-ID)" nil nil)

(autoload 'std11-fill-msg-id-list-string "flim/site-lisp/flim/std11" "\
Fill list of msg-id in STRING, and return the result.

\(fn STRING &optional COLUMN)" nil nil)

(autoload 'std11-parse-address-string "flim/site-lisp/flim/std11" "\
Parse STRING as mail address.

\(fn STRING)" nil nil)

(autoload 'std11-parse-addresses-string "flim/site-lisp/flim/std11" "\
Parse STRING as mail address list.

\(fn STRING)" nil nil)

(autoload 'std11-parse-msg-id-string "flim/site-lisp/flim/std11" "\
Parse STRING as msg-id.

\(fn STRING)" nil nil)

(autoload 'std11-parse-msg-ids-string "flim/site-lisp/flim/std11" "\
Parse STRING as `*(phrase / msg-id)'.

\(fn STRING)" nil nil)

(autoload 'std11-extract-address-components "flim/site-lisp/flim/std11" "\
Extract full name and canonical address from STRING.
Returns a list of the form (FULL-NAME CANONICAL-ADDRESS).
If no name can be extracted, FULL-NAME will be nil.

\(fn STRING)" nil nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/mime-edit" "semi/site-lisp/semi/mime-edit.el"
;;;;;;  (22051 3978 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-edit.el

(autoload 'mime-edit-mode "semi/site-lisp/semi/mime-edit" "\
MIME minor mode for editing the tagged MIME message.

In this mode, basically, the message is composed in the tagged MIME
format. The message tag looks like:

	--[[text/plain; charset=ISO-2022-JP][7bit]]

The tag specifies the MIME content type, subtype, optional parameters
and transfer encoding of the message following the tag.  Messages
without any tag are treated as `text/plain' by default.  Charset and
transfer encoding are automatically defined unless explicitly
specified.  Binary messages such as audio and image are usually
hidden.  The messages in the tagged MIME format are automatically
translated into a MIME compliant message when exiting this mode.

Available charsets depend on Emacs version being used.  The following
lists the available charsets of each emacs.

Without mule:	US-ASCII and ISO-8859-1 (or other charset) are available.
With mule:	US-ASCII, ISO-8859-* (except for ISO-8859-5), KOI8-R,
		ISO-2022-JP, ISO-2022-JP-2, EUC-KR, CN-GB-2312,
		CN-BIG5 and ISO-2022-INT-1 are available.

ISO-2022-JP-2 and ISO-2022-INT-1 charsets used in mule is expected to
be used to represent multilingual text in intermixed manner.  Any
languages that has no registered charset are represented as either
ISO-2022-JP-2 or ISO-2022-INT-1 in mule.

If you want to use non-ISO-8859-1 charset in Emacs 19 or XEmacs
without mule, please set variable `default-mime-charset'.  This
variable must be symbol of which name is a MIME charset.

If you want to add more charsets in mule, please set variable
`charsets-mime-charset-alist'.  This variable must be alist of which
key is list of charset and value is symbol of MIME charset.  If name
of coding-system is different as MIME charset, please set variable
`mime-charset-coding-system-alist'.  This variable must be alist of
which key is MIME charset and value is coding-system.

Following commands are available in addition to major mode commands:

\[make single part]
\\[mime-edit-insert-text]	insert a text message.
\\[mime-edit-insert-file]	insert a (binary) file.
\\[mime-eidt-insert-file-as-text] insert a text file.
\\[mime-edit-insert-external]	insert a reference to external body.
\\[mime-edit-insert-voice]	insert a voice message.
\\[mime-edit-insert-message]	insert a mail or news message.
\\[mime-edit-insert-mail]	insert a mail message.
\\[mime-edit-insert-signature]	insert a signature file at end.
\\[mime-edit-insert-key]	insert PGP public key.
\\[mime-edit-insert-tag]	insert a new MIME tag.

\[make enclosure (maybe multipart)]
\\[mime-edit-enclose-alternative-region]   enclose as multipart/alternative.
\\[mime-edit-enclose-parallel-region]	   enclose as multipart/parallel.
\\[mime-edit-enclose-mixed-region]	   enclose as multipart/mixed.
\\[mime-edit-enclose-digest-region]	   enclose as multipart/digest.
\\[mime-edit-enclose-pgp-signed-region]	   enclose as PGP signed.
\\[mime-edit-enclose-pgp-encrypted-region] enclose as PGP encrypted.
\\[mime-edit-enclose-quote-region]	   enclose as verbose mode
					   (to avoid to expand tags)

\[other commands]
\\[mime-edit-set-transfer-level-7bit]	set transfer-level as 7.
\\[mime-edit-set-transfer-level-8bit]	set transfer-level as 8.
\\[mime-edit-set-split]			set message splitting mode.
\\[mime-edit-set-sign]			set PGP-sign mode.
\\[mime-edit-set-encrypt]		set PGP-encryption mode.
\\[mime-edit-preview-message]		preview editing MIME message.
\\[mime-edit-exit]			exit and translate into a MIME
					compliant message.
\\[mime-edit-help]			show this help.
\\[mime-edit-maybe-translate]		exit and translate if in MIME mode,
					then split.

Additional commands are available in some major modes:
C-c C-c		exit, translate and run the original command.
C-c C-s		exit, translate and run the original command.

The following is a message example written in the tagged MIME format.
TABs at the beginning of the line are not a part of the message:

	This is a conventional plain text.  It should be translated
	into text/plain.
	--[[text/plain]]
	This is also a plain text.  But, it is explicitly specified as
	is.
	--[[text/plain; charset=ISO-8859-1]]
	This is also a plain text.  But charset is specified as
	iso-8859-1.

	¡Hola!  Buenos días.  ¿Cómo está usted?
	--[[text/enriched]]
	This is a <bold>enriched text</bold>.
	--[[image/gif][base64]]...image encoded in base64 here...
	--[[audio/basic][base64]]...audio encoded in base64 here...

User customizable variables (not documented all of them):
 mime-edit-prefix
    Specifies a key prefix for MIME minor mode commands.

 mime-ignore-preceding-spaces
    Preceding white spaces in a message body are ignored if non-nil.

 mime-ignore-trailing-spaces
    Trailing white spaces in a message body are ignored if non-nil.

 mime-auto-hide-body
    Hide a non-textual body message encoded in base64 after insertion
    if non-nil.

 mime-transfer-level
    A number of network transfer level.  It should be bigger than 7.
    If you are in 8bit-through environment, please set 8.

 mime-edit-voice-recorder
    Specifies a function to record a voice message and encode it.
    The function `mime-edit-voice-recorder-for-sun' is for Sun
    SparcStations.

 mime-edit-mode-hook
    Turning on MIME mode calls the value of mime-edit-mode-hook, if
    it is non-nil.

 mime-edit-translate-hook
    The value of mime-edit-translate-hook is called just before translating
    the tagged MIME format into a MIME compliant message if it is
    non-nil.  If the hook call the function mime-edit-insert-signature,
    the signature file will be inserted automatically.

 mime-edit-exit-hook
    Turning off MIME mode calls the value of mime-edit-exit-hook, if it is
    non-nil.

\(fn)" t nil)

(autoload 'turn-on-mime-edit "semi/site-lisp/semi/mime-edit" "\
Unconditionally turn on MIME-Edit mode.

\(fn)" t nil)

(defalias 'edit-mime 'turn-on-mime-edit)

(autoload 'mime-edit-decode-message-in-buffer "semi/site-lisp/semi/mime-edit" "\


\(fn &optional DEFAULT-CONTENT-TYPE NOT-DECODE-TEXT)" nil nil)

(autoload 'mime-edit-again "semi/site-lisp/semi/mime-edit" "\
Convert current buffer to MIME-Edit buffer and turn on MIME-Edit mode.
Content-Type and Content-Transfer-Encoding header fields will be
converted to MIME-Edit tags.

\(fn &optional NOT-DECODE-TEXT NO-SEPARATOR NOT-TURN-ON)" t nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/mime-play" "semi/site-lisp/semi/mime-play.el"
;;;;;;  (22051 3978 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-play.el

(autoload 'mime-preview-play-current-entity "semi/site-lisp/semi/mime-play" "\
Play current entity.
It decodes current entity to call internal or external method.  The
method is selected from variable `mime-acting-condition'.
If IGNORE-EXAMPLES (C-u prefix) is specified, this function ignores
`mime-acting-situation-example-list'.
If MODE is specified, play as it.  Default MODE is \"play\".

\(fn &optional IGNORE-EXAMPLES MODE)" t nil)

(autoload 'mime-play-entity "semi/site-lisp/semi/mime-play" "\
Play entity specified by ENTITY.
It decodes the entity to call internal or external method.  The method
is selected from variable `mime-acting-condition'.  If MODE is
specified, play as it.  Default MODE is \"play\".

\(fn ENTITY &optional SITUATION IGNORED-METHOD)" nil nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/mime-view" "semi/site-lisp/semi/mime-view.el"
;;;;;;  (22051 3978 0 0))
;;; Generated autoloads from semi/site-lisp/semi/mime-view.el

(autoload 'mime-display-message "semi/site-lisp/semi/mime-view" "\
View MESSAGE in MIME-View mode.

Optional argument PREVIEW-BUFFER specifies the buffer of the
presentation.  It must be either nil or a name of preview buffer.

Optional argument MOTHER specifies mother-buffer of the preview-buffer.

Optional argument DEFAULT-KEYMAP-OR-FUNCTION is nil, keymap or
function.  If it is a keymap, keymap of MIME-View mode will be added
to it.  If it is a function, it will be bound as default binding of
keymap of MIME-View mode.

Optional argument ORIGINAL-MAJOR-MODE is major-mode of representation
buffer of MESSAGE.  If it is nil, current `major-mode' is used.

Optional argument KEYMAP is keymap of MIME-View mode.  If it is
non-nil, DEFAULT-KEYMAP-OR-FUNCTION is ignored.  If it is nil,
`mime-view-mode-default-map' is used.

\(fn MESSAGE &optional PREVIEW-BUFFER MOTHER DEFAULT-KEYMAP-OR-FUNCTION ORIGINAL-MAJOR-MODE KEYMAP)" nil nil)

(autoload 'mime-view-buffer "semi/site-lisp/semi/mime-view" "\
View RAW-BUFFER in MIME-View mode.
Optional argument PREVIEW-BUFFER is either nil or a name of preview
buffer.
Optional argument DEFAULT-KEYMAP-OR-FUNCTION is nil, keymap or
function.  If it is a keymap, keymap of MIME-View mode will be added
to it.  If it is a function, it will be bound as default binding of
keymap of MIME-View mode.
Optional argument REPRESENTATION-TYPE is representation-type of
message.  It must be nil, `binary' or `cooked'.  If it is nil,
`cooked' is used as default.

\(fn &optional RAW-BUFFER PREVIEW-BUFFER MOTHER DEFAULT-KEYMAP-OR-FUNCTION REPRESENTATION-TYPE)" t nil)

;;;***

;;;### (autoloads nil "semi/site-lisp/semi/postpet" "semi/site-lisp/semi/postpet.el"
;;;;;;  (22051 3978 0 0))
;;; Generated autoloads from semi/site-lisp/semi/postpet.el

(autoload 'postpet-decode "semi/site-lisp/semi/postpet" "\


\(fn STRING)" nil nil)

(autoload 'mime-display-application/x-postpet "semi/site-lisp/semi/postpet" "\


\(fn ENTITY SITUATION)" nil nil)

;;;***

;;;### (autoloads nil "use-package/bind-key" "use-package/bind-key.el"
;;;;;;  (22053 15762 0 0))
;;; Generated autoloads from use-package/bind-key.el

(autoload 'bind-key "use-package/bind-key" "\
Bind KEY-NAME to COMMAND in KEYMAP (`global-map' if not passed).

KEY-NAME may be a vector, in which case it is passed straight to
`define-key'. Or it may be a string to be interpreted as
spelled-out keystrokes, e.g., \"C-c C-z\". See documentation of
`edmacro-mode' for details.

\(fn KEY-NAME COMMAND &optional KEYMAP)" nil t)

(autoload 'unbind-key "use-package/bind-key" "\


\(fn KEY-NAME &optional KEYMAP)" nil t)

(autoload 'bind-key* "use-package/bind-key" "\


\(fn KEY-NAME COMMAND)" nil t)

(autoload 'bind-keys "use-package/bind-key" "\
Bind multiple keys at once.

Accepts keyword arguments:
:map - a keymap into which the keybindings should be added
:prefix-map - name of the prefix map that should be created for
              these bindings
:prefix - prefix key for these bindings
:prefix-docstring - docstring for the prefix-map variable
:menu-name - optional menu string for prefix map

The rest of the arguments are conses of keybinding string and a
function symbol (unquoted).

\(fn &rest ARGS)" nil t)

(autoload 'bind-keys* "use-package/bind-key" "\


\(fn &rest ARGS)" nil t)

(autoload 'describe-personal-keybindings "use-package/bind-key" "\
Display all the personal keybindings defined by `bind-key'.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("apel/site-lisp/apel/calist.el" "apel/site-lisp/apel/filename.el"
;;;;;;  "apel/site-lisp/apel/install.el" "apel/site-lisp/emu/apel-ver.el"
;;;;;;  "apel/site-lisp/emu/broken.el" "apel/site-lisp/emu/emu.el"
;;;;;;  "apel/site-lisp/emu/inv-23.el" "apel/site-lisp/emu/invisible.el"
;;;;;;  "apel/site-lisp/emu/mcharset.el" "apel/site-lisp/emu/mcs-20.el"
;;;;;;  "apel/site-lisp/emu/mcs-e20.el" "apel/site-lisp/emu/mule-caesar.el"
;;;;;;  "apel/site-lisp/emu/pccl-20.el" "apel/site-lisp/emu/pccl.el"
;;;;;;  "apel/site-lisp/emu/pces-20.el" "apel/site-lisp/emu/pces-e20.el"
;;;;;;  "apel/site-lisp/emu/pces.el" "apel/site-lisp/emu/pcustom.el"
;;;;;;  "apel/site-lisp/emu/poe.el" "apel/site-lisp/emu/poem-e20.el"
;;;;;;  "apel/site-lisp/emu/poem-e20_3.el" "apel/site-lisp/emu/poem.el"
;;;;;;  "apel/site-lisp/emu/product.el" "apel/site-lisp/emu/pym.el"
;;;;;;  "apel/site-lisp/emu/static.el" "el-get/el-get-autoloading.el"
;;;;;;  "el-get/el-get-build.el" "el-get/el-get-byte-compile.el"
;;;;;;  "el-get/el-get-core.el" "el-get/el-get-custom.el" "el-get/el-get-dependencies.el"
;;;;;;  "el-get/el-get-install.el" "el-get/el-get-methods.el" "el-get/el-get-notify.el"
;;;;;;  "el-get/el-get-recipes.el" "el-get/el-get-status.el" "emacs-async/async-pkg.el"
;;;;;;  "emacs-async/async-test.el" "emacs-async/smtpmail-async.el"
;;;;;;  "flim/site-lisp/flim/hex-util.el" "flim/site-lisp/flim/hmac-def.el"
;;;;;;  "flim/site-lisp/flim/hmac-md5.el" "flim/site-lisp/flim/hmac-sha1.el"
;;;;;;  "flim/site-lisp/flim/luna.el" "flim/site-lisp/flim/lunit.el"
;;;;;;  "flim/site-lisp/flim/md4.el" "flim/site-lisp/flim/md5.el"
;;;;;;  "flim/site-lisp/flim/mel-b-ccl.el" "flim/site-lisp/flim/mel-b-el.el"
;;;;;;  "flim/site-lisp/flim/mel-g.el" "flim/site-lisp/flim/mel-q-ccl.el"
;;;;;;  "flim/site-lisp/flim/mel-q.el" "flim/site-lisp/flim/mel-u.el"
;;;;;;  "flim/site-lisp/flim/mime-def.el" "flim/site-lisp/flim/mime.el"
;;;;;;  "flim/site-lisp/flim/mmbuffer.el" "flim/site-lisp/flim/mmcooked.el"
;;;;;;  "flim/site-lisp/flim/mmexternal.el" "flim/site-lisp/flim/mmgeneric.el"
;;;;;;  "flim/site-lisp/flim/ntlm.el" "flim/site-lisp/flim/sasl-cram.el"
;;;;;;  "flim/site-lisp/flim/sasl-digest.el" "flim/site-lisp/flim/sasl-ntlm.el"
;;;;;;  "flim/site-lisp/flim/sasl-scram.el" "flim/site-lisp/flim/sasl.el"
;;;;;;  "flim/site-lisp/flim/sha1.el" "merriam/merriam.el" "semi/site-lisp/semi/mail-mime-setup.el"
;;;;;;  "semi/site-lisp/semi/mime-bbdb.el" "semi/site-lisp/semi/mime-image.el"
;;;;;;  "semi/site-lisp/semi/mime-mac.el" "semi/site-lisp/semi/mime-partial.el"
;;;;;;  "semi/site-lisp/semi/mime-pgp.el" "semi/site-lisp/semi/mime-setup.el"
;;;;;;  "semi/site-lisp/semi/mime-shr.el" "semi/site-lisp/semi/mime-signature.el"
;;;;;;  "semi/site-lisp/semi/mime-tnef.el" "semi/site-lisp/semi/mime-vcard.el"
;;;;;;  "semi/site-lisp/semi/mime-w3.el" "semi/site-lisp/semi/semi-def.el"
;;;;;;  "semi/site-lisp/semi/semi-setup.el" "semi/site-lisp/semi/signature.el"
;;;;;;  "use-package/use-package-tests.el" "use-package/use-package.el")
;;;;;;  (22053 15762 535866 0))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
