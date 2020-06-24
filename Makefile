all: resume.png

resume.pdf: resume.tex resume.cls
	pdflatex resume.tex

resume.png: resume.pdf
	convert -density 600 resume.pdf -quality 90 resume.png

clean:
	rm -f resume.aux resume.out resume.log 
