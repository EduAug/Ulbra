#include <stdio.h>
#include <string.h>
 
int main()
{
    char s[1000],nam;  
    int i,count=0;
 
    printf("Enter  the string : ");
    gets(s);
    printf("Enter character to be searched: ");
    nam=getchar();
    
    
    for(i=0;s[i];i++)  
    {
    	if(s[i]==nam)
    	{
          count++;
		}
 	}
     
	printf("character '%c' occurs %d times \n ",nam,count);
 
 	 
     
    return 0;
}
