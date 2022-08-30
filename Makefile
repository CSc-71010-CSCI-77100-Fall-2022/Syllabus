PDF=csc_71010_csci_77100_fa2022_syllabus.pdf
MD=syllabus
HTML=syllabus
html:
	pandoc --shift-heading-level-by=-1 -s $(MD).md -o $(HTML).html
preview-html: html
	gio open $(HTML).html
pdf:
	pandoc -V geometry:margin=1in -f gfm $(MD).md -o $(PDF).pdf
preview-pdf: pdf
	gio open $(PDF).pdf
toc:
	gh-md-toc $(MD).md | xclip -selection clipboard
open:
	gio open `git remote get-url origin`
