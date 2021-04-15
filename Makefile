all: resume.png cv.png

resume.pdf: resume.tex resume.cls
	pdflatex resume.tex

resume.png: resume.pdf
	convert -density 600 resume.pdf -quality 90 resume.png

cv.pdf: full_cv.tex 
	pdflatex full_cv.tex

cv.png: resume.pdf
	convert -density 600 full_cv.pdf -quality 90 cv.png

clean:
	rm -f *.aux *.out *.log 
