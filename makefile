all: instantiate simple

instantiate:
	julia -e 'using Pkg; Pkg.activate("."); Pkg.instantiate()'

simple:
	jb build -q .

full:
	jb build --all -q .
pdf:
	jb build --all --builder latex -q .
	cd ./_build/latex
	make -s
	cd ../..
