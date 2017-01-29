/*
 * a simple char device driver: globalfifo
 *
 * Copyright (C) 2014 Barry Song  (baohua@kernel.org)
 *
 * Licensed under GPLv2 or later.
 */

#include <linux/module.h>
#include <linux/platform_device.h>

static struct platform_device *globalfifo_pdev;

static int __init globalfifodev_init(void)
{
	int ret;

	globalfifo_pdev = platform_device_alloc("globalfifo", -1);
	if (!globalfifo_pdev)
		return -ENOMEM;

	ret = platform_device_add(globalfifo_pdev);
	if (ret) {
		platform_device_put(globalfifo_pdev);
		return ret;
	}

	return 0;

}
module_init(globalfifodev_init);

static void __exit globalfifodev_exit(void)
{
	platform_device_unregister(globalfifo_pdev);
}
module_exit(globalfifodev_exit);

MODULE_AUTHOR("Barry Song <baohua@kernel.org>");
MODULE_LICENSE("GPL v2");
