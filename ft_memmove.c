
#include "libft.h"

void	*ft_memmove(void *dest, const void *src, size_t n)
{
	void *tmp;

	tmp = ft_memalloc(n);
	if (tmp != NULL)
	{
		tmp = ft_memcpy(tmp, src, n);
		dest = ft_memcpy(dest, tmp, n);
		free(tmp);
	}
	return (dest);
}
