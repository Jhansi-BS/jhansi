#include<stdio.h>
int a[5][5],n,visited[10],count=0,k;
int topo[10];
void dfs(int v)
{
int w;
  count++;
  visited[v]=count;
  for(w=0;w<n;w++)
  if(visited[w]==0 && a[v][w]==1)
    dfs(w);
    printf("%d\t",v);
    topo[k++]=v;
}  
void main()
{
  int i,j;
  printf("Enter number of vertices\n");
  scanf("%d",&n);
  printf("Enter the matrix(DAG)-----\n");
  for(i=0;i<n;i++)
      for(j=0;j<n;j++)
        scanf("%d",&a[i][j]);
  printf("adjacency matrix\n");
  for(i=0;i<n;i++)
  {
    for(j=0;j<n;j++)
     printf("%d\t",a[i][j]);
     printf("\n");
  }
  printf("\n--------------DFS Traversal---------------\n");
  for(i=0;i<n;i++)
  visited[i]=0;
  for(i=0;i<n;i++)
  if(visited[i]==0)
  dfs(i);
   if(count==n)
  printf("\nGraph is connected\n");
  else 
  printf("\nGraph is not connectd\n");
  printf("\n-----------topology sorting---------------\n");
  for(i=n-1;i>=0;i--)
  printf("%d\t",topo[i]);
 
}
