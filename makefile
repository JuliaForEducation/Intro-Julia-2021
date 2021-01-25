all: simple

simple:
	jb build -q .

full:
	jb build --all -q .
pdf:
	jb build --all --builder latex -q .
	cd ./_build/latex
	make -s
	cd ../..
