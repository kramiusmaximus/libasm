#include	"libasm.h"
#include	<stdio.h>
#include    <string.h>
#include 	<fcntl.h>

int main()
{
	char *s1 = strdup("ABCDE");
	char *s2 = strdup("ABCE");
	char *s3 = strdup("XX");
	char *s4 = NULL;
	char *s5;
	char *s6;
	char buff[200];
	long n;
	int fd;

	printf("s1: %s\ns2: %s\ns3: %s\ns4: %s\n\n", s1, s2, s3, s4);
	printf("TESTING FT_STRLEN\n");
	printf("strlen(s1) = %lu, ft_strlen(s1) = %lu\n", strlen(s1), ft_strlen(s1));
	printf("strlen(s3) = %lu, ft_strlen(s3) = %lu\n\n",  strlen(s3), ft_strlen(s3));

	printf("TESTING FT_STRCPY\n");
	printf("strcpy(s1, s2) = %s, ft_strcpy(s1, s2) = %s\n", strcpy(s1, s2), ft_strcpy(s1, s2));
	printf("strcpy(s2, s4) = %s, ft_strcpy(s2, s4) = %s\n\n", strcpy(s2, s3), ft_strcpy(s2, s3));

	printf("TESTING FT_STRCMP\n");
	printf("strcmp(s1, s2) = %d, ft_strcmp(s1, s2) = %d\n", strcmp(s1, s2), ft_strcmp(s1, s2));
	printf("strcmp(s1, s3) = %d, ft_strcmp(s1, s3) = %d\n\n", strcmp(s1, s3), ft_strcmp(s1, s3));

	printf("TESTING FT_STRDUP\n");
	s5 = strdup(s1);
	s6 = ft_strdup(s1);
	printf("strdup(s1) = %s, ft_strdup(s1) = %s\n", s5, s6);
	s6 = ft_strdup(s4);
	printf("ft_strdup(NULL) = %s\n\n", s6);

	printf("TESTING FT_READ\n");
	fd = open("./srcs/ft_read.s", O_RDONLY);
	printf("n = ft_read(fd, buff, 199) = %zd\n", (n = ft_read(fd, buff, 199)));
	buff[n] = 0;
	printf("%s\n\n", buff);

	printf("TESTING FT_READ ERRNO\n");
	printf("(n = ft_read(-1, buff, 199)) = %zd\n", (n = ft_read(-1, buff, 199)));
	printf("Error: %s\n\n", strerror(errno));

	printf("TESTING FT_WRITE\n");
	printf("ft_write(1, s1, 5) : \n");
	ft_write(1, s2, 2);
	printf("\nTESTING FT_WRITE ERRNO\n");
	printf("(n = ft_write(-1, s2, 2)) = %zd\n", ft_write(-1, s2, 2));
	printf("Error: %s\n\n", strerror(errno));
	printf("\n\n");

	return (0);
}
