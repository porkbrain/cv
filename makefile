TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=xelatex

cv.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm cv.pdf
