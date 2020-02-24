/*
	get_line　一行読み込んでポインタを返す。ファイルの終わりならNULLを返す
		一行最大80バイト

	fp : 入力ファイル
	skip_tab : 行の先頭のTABとスペース、コメントをスキップ

*/

#include <stdio.h>
#include "q_typedef.h"

extern UINT Line ;

char fileBuff[82] ;

char* get_line(FILE* fp, UINT skip_tab){
	UINT i, len ;

	while(1){
		unsigned char cc ;
		len = fread(&cc, 1, 1, fp) ;
		if(len!=1){
			return NULL ;
		}
		//	Skip BOM.
		else if(cc==0 || cc==0xbb || cc==0xef || cc==0xff || cc==0xfe || cc==0xbf){
			continue ;
		}
		else if((cc!=' ' && cc!=9) || skip_tab==0){
			fileBuff[0]=(int)cc ;
			break ;
		}
	}
	for(i=0 ; i<80 ; i++){
		fileBuff[i+1]=0 ;
		if(fileBuff[i]==0x0a){
			fileBuff[i]=0 ;
			Line++ ;
			return fileBuff ;
		}
		if(fileBuff[i]==';' && skip_tab==1){
			fileBuff[i]=0 ;
			break ;
		}
		len = fread(fileBuff+i+1, 1, 1, fp) ;


		if(len!=1){
			fileBuff[i+1]=0 ;
			return fileBuff ;
		}
	}
	while(1){
		unsigned char cc ;
		len = fread(&cc, 1, 1, fp) ;
		if(len!=1){
			return NULL ;
		}
		if(cc==0x0a) break ;
	}
	Line++ ;
	return fileBuff ;
}
