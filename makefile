calc: calc.l calc.y
	@flex -o lexico.c calc.l
	@bison -v -d  calc.y -o sintatico.c
	@gcc sintatico.c -o calc

clean:
	@echo "Limpando os arquivos..."
	@rm -f lexico.c sintatico.c sintatico.h sintatico.output tree.dot tree.png calc
	@echo "Feito!" 
