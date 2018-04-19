/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strsplit.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wawong <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/18 20:45:53 by wawong            #+#    #+#             */
/*   Updated: 2018/04/18 22:57:09 by wawong           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdlib.h>
#include "libft.h"

static int	w_count(char const *s, char c)
{
	int num;
	int set;

	num = 0;
	set = 0;
	if (!s || !c)
		return (0);
	while (*s)
	{
		if (*s == c && set == 0)
			set = 1;
		if (*s != c && set == 1)
		{
			set = 1;
			num++;
		}
		s++;
	}
	return (num);
}

static int	w_len(char const *s, char c)
{
	int len;

	len = 0;
	while (*s != c && *s != '\0')
	{
		len++;
		s++;
	}
	return (len);
}

char		**ft_strsplit(char const *s, char c)
{
	int		word;
	int		i;
	char	**array;

	i = 0;
	word = w_count(s, c);
	if (!(array = (char**)malloc(sizeof(*array) * (word + 1))))
		return (NULL);
	while (word)
	{
		while (*s && *s == c)
			s++;
		if (*s == '\0')
			break ;
		array[i] = ft_strsub((char const *)s, 0, w_len((char const *)s, c));
		s += w_len(s, c);
		i++;
		word--;
	}
	array[i] = NULL;
	return (array);
}
