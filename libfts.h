/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: lboudaa <lboudaa@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/13 19:15:04 by lboudaa           #+#    #+#             */
/*   Updated: 2015/05/26 20:24:41 by lboudaa          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdlib.h>
# include <ctype.h>
# include <stdio.h>
# include <unistd.h>
# include <string.h>
# include <fcntl.h>

void	ft_bzero(void *ptr, int zero);
int		ft_isalnum(int c);
int		ft_isprint(int c);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
char	*ft_strcat(char *s1, char *s2);
int		ft_puts(char *str);
int		ft_strlen(char *string);
int		ft_isascii(int c);
int		ft_toupper(int c);
int		ft_tolower(int c);
void	*ft_memset(void *b, int c, size_t len);
void	*ft_memcpy(void *s1, const void *s2, size_t n);
char	*ft_strdup(const char *s1);
void	ft_cat(int fd);
int		ft_isupper(int c);
int		ft_islower(int c);
int		ft_strcmp(char *s1, char *s2);
int		ft_strequ(char *s1, char *s2);
char	*ft_strchr(char *s1, char c);

#endif
