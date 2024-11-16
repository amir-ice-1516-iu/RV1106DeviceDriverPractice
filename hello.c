#include <linux/module.h>
#include <linux/init.h>

int my_init(void)
{   
    printk("hello  luckfox\n");
    return 0;
}

void my_exit(void){
    printk(" Bye Luckfox\n");
}

module_init(my_init);
module_exit(my_exit);

MODULE_LICENSE("MIT OPEN BSD");
