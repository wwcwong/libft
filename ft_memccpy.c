

#include "libft.h"

void	*ft_memccpy(void *dst, const void *src, int c, size_t n)
{
	size_t	i;
	char	*str_dst;
	char	*str_src;

	i = 0;
	str_dst = (char *)dst;
	str_src = (char *)src;
	if (n == 0 || dst == src)
		return (NULL);
	while (i < n)
	{
		str_dst[i] = str_src[i];
		if (str_src[i] == c)
			return (str_dst + i + 1);
		i++;
	}
	return (NULL);
}
