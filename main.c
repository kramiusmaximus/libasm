#include	"libasm.h"
#include	<stdio.h>
#include	<string.h>

int main()
{
	char *s = "Hello, World!";

	printf("%s\n", ft_strdup(s));
	return (0);
}
