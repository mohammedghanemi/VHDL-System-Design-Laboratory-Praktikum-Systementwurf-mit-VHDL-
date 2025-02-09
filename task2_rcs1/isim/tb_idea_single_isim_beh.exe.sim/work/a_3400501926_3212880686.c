/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/mnt/hgfs/vm_share/other/moh/rcs1/mulop.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1366267000076357978_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533613331_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t26[16];
    char t31[16];
    char t38[16];
    char t43[16];
    char t46[16];
    char t52[16];
    char t58[16];
    char *t1;
    char *t2;
    int t3;
    unsigned int t4;
    unsigned int t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    unsigned char t25;
    char *t27;
    char *t28;
    char *t29;
    char *t30;
    char *t32;
    char *t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    int t39;
    unsigned int t40;
    int t41;
    unsigned int t42;
    unsigned int t44;
    unsigned int t45;
    int t47;
    unsigned int t48;
    int t49;
    unsigned int t50;
    unsigned int t51;
    int t53;
    unsigned int t54;
    int t55;
    unsigned int t56;
    unsigned int t57;
    int t59;
    unsigned int t60;
    unsigned int t61;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = xsi_get_transient_memory(17U);
    memset(t1, 0, 17U);
    t2 = t1;
    memset(t2, (unsigned char)2, 17U);
    t3 = (16 - 16);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (t2 + t5);
    *((unsigned char *)t6) = (unsigned char)3;
    t7 = (t0 + 1888U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t1, 17U);
    xsi_set_current_line(49, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t3 = (0 - 15);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (t2 + t5);
    *((unsigned char *)t6) = (unsigned char)3;
    t7 = (t0 + 2008U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t1, 16U);
    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    memset(t2, (unsigned char)2, 16U);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    memcpy(t6, t1, 16U);
    xsi_set_current_line(51, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 5352U);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t6 = (t0 + 5464U);
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t7, t6);
    if (t10 == 1)
        goto LAB5;

LAB6:    t8 = (t0 + 1192U);
    t11 = *((char **)t8);
    t8 = (t0 + 5368U);
    t12 = (t0 + 2128U);
    t13 = *((char **)t12);
    t12 = (t0 + 5464U);
    t14 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t11, t8, t13, t12);
    t9 = t14;

LAB7:    if (t9 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t6 = ((IEEE_P_2592010699) + 4000);
    t7 = (t0 + 5352U);
    t1 = xsi_base_array_concat(t1, t31, t6, (char)99, (unsigned char)2, (char)97, t2, t7, (char)101);
    t8 = (t0 + 1192U);
    t11 = *((char **)t8);
    t12 = ((IEEE_P_2592010699) + 4000);
    t13 = (t0 + 5368U);
    t8 = xsi_base_array_concat(t8, t38, t12, (char)99, (unsigned char)2, (char)97, t11, t13, (char)101);
    t16 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t26, t1, t31, t8, t38);
    t17 = (t0 + 1648U);
    t18 = *((char **)t17);
    t17 = (t18 + 0);
    t19 = (t26 + 12U);
    t4 = *((unsigned int *)t19);
    t5 = (1U * t4);
    memcpy(t17, t16, t5);

LAB3:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2128U);
    t2 = *((char **)t1);
    t1 = (t0 + 1648U);
    t6 = *((char **)t1);
    t3 = (2 * 16);
    t39 = (t3 + 1);
    t4 = (33 - t39);
    t5 = (t4 * 1U);
    t40 = (0 + t5);
    t1 = (t6 + t40);
    t8 = ((IEEE_P_2592010699) + 4000);
    t11 = (t0 + 5464U);
    t12 = (t31 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 33;
    t13 = (t12 + 4U);
    *((int *)t13) = 16;
    t13 = (t12 + 8U);
    *((int *)t13) = -1;
    t41 = (16 - 33);
    t42 = (t41 * -1);
    t42 = (t42 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t42;
    t7 = xsi_base_array_concat(t7, t26, t8, (char)97, t2, t11, (char)97, t1, t31, (char)101);
    t13 = (t0 + 1768U);
    t16 = *((char **)t13);
    t13 = (t16 + 0);
    t42 = (16U + 18U);
    memcpy(t13, t7, t42);
    xsi_set_current_line(64, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = (16 - 1);
    t4 = (33 - t3);
    t5 = (t4 * 1U);
    t40 = (0 + t5);
    t1 = (t2 + t40);
    t6 = (t26 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t39 = (0 - 15);
    t42 = (t39 * -1);
    t42 = (t42 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t42;
    t7 = (t0 + 1768U);
    t8 = *((char **)t7);
    t7 = (t0 + 5416U);
    t9 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t1, t26, t8, t7);
    if (t9 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(67, ng0);
    t1 = (t0 + 1648U);
    t2 = *((char **)t1);
    t3 = (16 - 1);
    t4 = (33 - t3);
    t5 = (t4 * 1U);
    t40 = (0 + t5);
    t1 = (t2 + t40);
    t6 = (t31 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 15;
    t7 = (t6 + 4U);
    *((int *)t7) = 0;
    t7 = (t6 + 8U);
    *((int *)t7) = -1;
    t39 = (0 - 15);
    t42 = (t39 * -1);
    t42 = (t42 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t42;
    t7 = (t0 + 1768U);
    t8 = *((char **)t7);
    t41 = (16 - 1);
    t42 = (33 - t41);
    t44 = (t42 * 1U);
    t45 = (0 + t44);
    t7 = (t8 + t45);
    t11 = (t38 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 15;
    t12 = (t11 + 4U);
    *((int *)t12) = 0;
    t12 = (t11 + 8U);
    *((int *)t12) = -1;
    t47 = (0 - 15);
    t48 = (t47 * -1);
    t48 = (t48 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t48;
    t12 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t26, t1, t31, t7, t38);
    t13 = (t26 + 12U);
    t48 = *((unsigned int *)t13);
    t50 = (1U * t48);
    t9 = (16U != t50);
    if (t9 == 1)
        goto LAB24;

LAB25:    t16 = (t0 + 3504);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    t19 = (t18 + 56U);
    t21 = *((char **)t19);
    memcpy(t21, t12, 16U);
    xsi_driver_first_trans_fast_port(t16);

LAB20:    t1 = (t0 + 3424);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t16 = (t0 + 5352U);
    t18 = (t0 + 2128U);
    t19 = *((char **)t18);
    t18 = (t0 + 5464U);
    t20 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t17, t16, t19, t18);
    if (t20 == 1)
        goto LAB11;

LAB12:    t15 = (unsigned char)0;

LAB13:    if (t15 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 5368U);
    t6 = (t0 + 2128U);
    t7 = *((char **)t6);
    t6 = (t0 + 5464U);
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t7, t6);
    if (t10 == 1)
        goto LAB16;

LAB17:    t9 = (unsigned char)0;

LAB18:    if (t9 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(57, ng0);
    t1 = (t0 + 1888U);
    t2 = *((char **)t1);
    t1 = (t0 + 5432U);
    t6 = (t0 + 1888U);
    t7 = *((char **)t6);
    t6 = (t0 + 5432U);
    t8 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t26, t2, t1, t7, t6);
    t11 = (t0 + 1648U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t26 + 12U);
    t4 = *((unsigned int *)t13);
    t5 = (1U * t4);
    memcpy(t11, t8, t5);

LAB9:    goto LAB3;

LAB5:    t9 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(53, ng0);
    t27 = (t0 + 1888U);
    t28 = *((char **)t27);
    t27 = (t0 + 5432U);
    t29 = (t0 + 1192U);
    t30 = *((char **)t29);
    t32 = ((IEEE_P_2592010699) + 4000);
    t33 = (t0 + 5368U);
    t29 = xsi_base_array_concat(t29, t31, t32, (char)99, (unsigned char)2, (char)97, t30, t33, (char)101);
    t34 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t26, t28, t27, t29, t31);
    t35 = (t0 + 1648U);
    t36 = *((char **)t35);
    t35 = (t36 + 0);
    t37 = (t26 + 12U);
    t4 = *((unsigned int *)t37);
    t5 = (1U * t4);
    memcpy(t35, t34, t5);
    goto LAB9;

LAB11:    t21 = (t0 + 1192U);
    t22 = *((char **)t21);
    t21 = (t0 + 5368U);
    t23 = (t0 + 2128U);
    t24 = *((char **)t23);
    t23 = (t0 + 5464U);
    t25 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t22, t21, t24, t23);
    t15 = t25;
    goto LAB13;

LAB14:    xsi_set_current_line(55, ng0);
    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t18 = ((IEEE_P_2592010699) + 4000);
    t19 = (t0 + 5352U);
    t16 = xsi_base_array_concat(t16, t31, t18, (char)99, (unsigned char)2, (char)97, t17, t19, (char)101);
    t21 = (t0 + 1888U);
    t22 = *((char **)t21);
    t21 = (t0 + 5432U);
    t23 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t26, t16, t31, t22, t21);
    t24 = (t0 + 1648U);
    t27 = *((char **)t24);
    t24 = (t27 + 0);
    t28 = (t26 + 12U);
    t4 = *((unsigned int *)t28);
    t5 = (1U * t4);
    memcpy(t24, t23, t5);
    goto LAB9;

LAB16:    t8 = (t0 + 1032U);
    t11 = *((char **)t8);
    t8 = (t0 + 5352U);
    t12 = (t0 + 2128U);
    t13 = *((char **)t12);
    t12 = (t0 + 5464U);
    t14 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t11, t8, t13, t12);
    t9 = t14;
    goto LAB18;

LAB19:    xsi_set_current_line(65, ng0);
    t11 = (t0 + 1648U);
    t12 = *((char **)t11);
    t41 = (16 - 1);
    t42 = (33 - t41);
    t44 = (t42 * 1U);
    t45 = (0 + t44);
    t11 = (t12 + t45);
    t13 = (t46 + 0U);
    t16 = (t13 + 0U);
    *((int *)t16) = 15;
    t16 = (t13 + 4U);
    *((int *)t16) = 0;
    t16 = (t13 + 8U);
    *((int *)t16) = -1;
    t47 = (0 - 15);
    t48 = (t47 * -1);
    t48 = (t48 + 1);
    t16 = (t13 + 12U);
    *((unsigned int *)t16) = t48;
    t16 = (t0 + 1768U);
    t17 = *((char **)t16);
    t49 = (16 - 1);
    t48 = (33 - t49);
    t50 = (t48 * 1U);
    t51 = (0 + t50);
    t16 = (t17 + t51);
    t18 = (t52 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 15;
    t19 = (t18 + 4U);
    *((int *)t19) = 0;
    t19 = (t18 + 8U);
    *((int *)t19) = -1;
    t53 = (0 - 15);
    t54 = (t53 * -1);
    t54 = (t54 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t54;
    t19 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t43, t11, t46, t16, t52);
    t21 = (t0 + 1888U);
    t22 = *((char **)t21);
    t55 = (16 - 1);
    t54 = (16 - t55);
    t56 = (t54 * 1U);
    t57 = (0 + t56);
    t21 = (t22 + t57);
    t23 = (t58 + 0U);
    t24 = (t23 + 0U);
    *((int *)t24) = 15;
    t24 = (t23 + 4U);
    *((int *)t24) = 0;
    t24 = (t23 + 8U);
    *((int *)t24) = -1;
    t59 = (0 - 15);
    t60 = (t59 * -1);
    t60 = (t60 + 1);
    t24 = (t23 + 12U);
    *((unsigned int *)t24) = t60;
    t24 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t38, t19, t43, t21, t58);
    t27 = (t0 + 2008U);
    t28 = *((char **)t27);
    t27 = (t0 + 5448U);
    t29 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t31, t24, t38, t28, t27);
    t30 = (t31 + 12U);
    t60 = *((unsigned int *)t30);
    t61 = (1U * t60);
    t10 = (16U != t61);
    if (t10 == 1)
        goto LAB22;

LAB23:    t32 = (t0 + 3504);
    t33 = (t32 + 56U);
    t34 = *((char **)t33);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t29, 16U);
    xsi_driver_first_trans_fast_port(t32);
    goto LAB20;

LAB22:    xsi_size_not_matching(16U, t61, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(16U, t50, 0);
    goto LAB25;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_idea_single_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
