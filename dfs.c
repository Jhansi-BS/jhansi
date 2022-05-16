#include<stdio.h>
int a[10][10],n,visited[10],count=0,w;
void dfs(int v)
{

count++;
visited[v]=count;
for(w=0;w<n;w++)
if(visited[w]==0 && a[v][w]==1)
dfs(w);
}
void main()
{
 int i,j;
printf("enter the number of vertices\n");
scanf("%d",&n);
 printf("Enter the matrix\n");
 for(i=0;i<n;i++)
 
    for(j=0;j<n;j++)
    
      scanf("%d",&a[i][j]);
    
    
 
printf("Adjacency matrix\n");
 for(i=0;i<n;i++)
 {
    for(j=0;j<n;j++)
    {
      printf("%d\t",a[i][j]);
    } 
 printf("\n");
}
for(i=0;i<n;i++)
visited[i]=0;
dfs(0);

 if(count==n)
printf("\nthe graph is connected\n");
else
printf("\nthe graph is not connected\n");
}


