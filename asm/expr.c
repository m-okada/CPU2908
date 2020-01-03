/*

cc -o expr expr.c

cl expr.c

*/

#define DEBUG

char* str="" ;

void putstring(char *s){
	int i=0 ;
	while(s[i]){
		putchar(s[i]) ;
		i++ ;
	}
}


void takechar()
{
	if (token_size <= i+1) {
		int x = (i + 10) << 1;
		token = my_realloc(token, token_size, x);
		token_size = x;
	}
	token[i] = nextc;
	i++;
	_getc();
}


int peek(char *s)
{
	int i = 0;
	while ((s[i] == token[i]) & (s[i] != 0)){
		i++;
	}
	return s[i] == token[i];
}


int accept(char *s)
{
	if (peek(s)) {
		get_token();
		return 1;
	}
	else{
		return 0;
	}
}


void expect(char *s)
{
	if (accept(s) == 0){
		putstring("\x0a expect{") ;
		putstring(s) ;
		putstring("}. ") ;
		error(1);
	}
}

#ifdef DEBUG

int main(void){


	return 1 ;
}

#endif
