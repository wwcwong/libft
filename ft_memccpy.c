/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memccpy.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: wawong <marvin@42.fr>                      +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/18 13:36:30 by wawong            #+#    #+#             */
/*   Updated: 2018/04/18 14:17:21 by wawong           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

void	*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	size_t i;

	i = 0;
	while (n > 0)
	{
		if (((char*)src)[i] == c)
		{
			((char*)dst)[i] = ((char*)src)[i];
			return (dst + i + 1);
		}
		((char*)dst)[i] = ((char*)src)[i];
		i++;
		n--;
	}
	return (NULL);
}
