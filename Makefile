static/CRM-cheatsheet.png: ~/Downloads/CRM\ cheatsheet.svg
	inkscape --export-filename=$@ "$<" --export-width=1280

static/CRM-cheatsheet.pdf: ~/Downloads/CRM\ cheatsheet.pdf
	pdfjam "$<" 2,1 -o $@

static/CRM-cheatsheet-meetings.pdf: ~/Downloads/CRM\ cheatsheet.pdf
	pdfjam "$<" 2,3 -o $@

static/CRM-cheatsheet-8up.pdf: ~/Downloads/CRM\ cheatsheet.pdf
	pdfjam "$<" 2,2,2,2,2,2,2,2,1,1,1,1,1,1,1,1 --landscape --nup 4x2 -o $@

static/CRM-cheatsheet-meetings-8up.pdf: ~/Downloads/CRM\ cheatsheet.pdf
	pdfjam "$<" 2,2,2,2,2,2,2,2,3,3,3,3,3,3,3,3 --landscape --nup 4x2 -o $@

pngs: static/CRM-cheatsheet.png

pdfs: static/CRM-cheatsheet.pdf static/CRM-cheatsheet-meetings.pdf static/CRM-cheatsheet-8up.pdf static/CRM-cheatsheet-meetings-8up.pdf
