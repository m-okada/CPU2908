int main1() ;

int main(){
	return main1() ;
}

int foo(int a){
	a=2+3*4 ;
	return a ;
}

int main1(){
	foo(0) ;
}
