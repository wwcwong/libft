
#include "libft.h"

void	*ft_memcpy(void *dst, const void *src, size_t n)
{
	unsigned char	*str_dst;
	unsigned char	*str_src;

	str_dst = (unsigned char *)dst;
	str_src = (unsigned char *)src;
	while (n--)
		*str_dst++ = *str_src++;
	return ((void*)dst);
}
