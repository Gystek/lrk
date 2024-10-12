ЛРК
===

*Листоробка* — from *листок* "slip" and *коробка* "box".  Calque of German *Zettelkasten*

LRK is a collection of note-management scripts for the 70s.

Requirements
------------

You need to have Perl (>=5.10), `fzf` and a POSIX shell installed.

Installation
------------

	make [PREFIX=/usr/local/bin]

Usage
-----

Edit the `LRK_DIR` environment variable as you want.  The default is
`$HOME/.lrx`.

You can create a note using the `lrk-create` script:
	$ lrk-create
	/home/gustek/20010911084630

Note files are named as the current date and time.

You can list all note IDs using the `lrk-list` script:
	$ lrk-list
	20010911084630
	20010911090320
	20010911093710
	...

You can get the value for the `XXX` metadata of note `<id>` using the `lrk-get`
script:
	$ lrk-get TAGS 20010911084630
	AA11 767-223ER

You can search for one or more specific notes on different metadata using the
`lrk-findby` script as follows.  The script spawns a `fzf` process enabling the
user to use fuzzy search over the specified metadata:
	$ lrk-findby TITLE TAGS

Integration
-----------

You can easily integrate these scripts in your favourite text editor/terminal
multiplexer.  See my dotfiles for an example using Kakoune and zellij.
