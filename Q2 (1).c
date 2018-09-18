#include<stdio.h>

int Max(int r, int c, A[r][c])
{
int max,i,j,row,col;

max=A[0][0];

for(i=0;i<r;i++)
{
	for(j=0;j<c;j++)
	{
		if(A[i][j]>max)
		{
			max=A[i][j];	
			row =i+1;
			col =j+1;
		}

	}
}

printf("The max element is at %d and %d",row, col);
return row;


}




void main()
{
int r,c, row, col;
printf("Enter the row number and column number:");
scanf("%d %d", &r, &c);

int A[r][c];

for(i=0;i<r;i++)
{

	for(j=0;j<c;j++)
	{
		scanf("%d", &A[i][j]);

	}
}

for(i=0;i<r;i++)
{

	for(j=0;j<c;j++)
	{
		printf("%d", A[i][j]);

	}
printf("\n");
}


Max(r,c,A[r][c]);





}




	




