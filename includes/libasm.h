#ifndef LIBASM_H
# define LIBASM_H
# include <sys/errno.h>
# include <stdlib.h>

char 		ft_strlen(char *s);
char	*ft_strcpy(char *dst, const char *orgn);
int		ft_strcmp(char *s1, char *s2);
int		ft_read(int fd, char *buff, int n_bytes);
int 	ft_write(int fd, char *s, int n_bytes);
char	*ft_strdup(char *s); // can call malloc

#endif
