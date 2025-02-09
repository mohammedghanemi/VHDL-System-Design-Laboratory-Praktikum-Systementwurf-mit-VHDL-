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
static const char *ng0 = "/mnt/hgfs/vm_share/other/moh/direct/mulop.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_2592010699;

unsigned char ieee_p_3620187407_sub_1306455576380142462_3965413181(char *, char *, char *, char *, char *);
unsigned char ieee_p_3620187407_sub_1366267000076357978_3965413181(char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533613331_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533649268_3965413181(char *, char *, char *, char *, char *, char *);
char *ieee_p_3620187407_sub_1496620905533721142_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_3400501926_3212880686_p_0(char *t0)
{
    char t23[16];
    char t28[16];
    char t37[16];
    char t43[16];
    char t46[16];
    char t52[16];
    char t58[16];
    unsigned char t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    unsigned char t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    unsigned char t22;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t29;
    char *t30;
    char *t31;
    char *t32;
    char *t33;
    char *t34;
    unsigned int t35;
    unsigned int t36;
    int t38;
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

LAB0:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t2 = (t0 + 5344U);
    t4 = (t0 + 2128U);
    t5 = *((char **)t4);
    t4 = (t0 + 5456U);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB5;

LAB6:    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t7 = (t0 + 5360U);
    t9 = (t0 + 2128U);
    t10 = *((char **)t9);
    t9 = (t0 + 5456U);
    t11 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t7, t10, t9);
    t1 = t11;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = ((IEEE_P_2592010699) + 4000);
    t5 = (t0 + 5344U);
    t2 = xsi_base_array_concat(t2, t28, t4, (char)99, (unsigned char)2, (char)97, t3, t5, (char)101);
    t7 = (t0 + 1192U);
    t8 = *((char **)t7);
    t9 = ((IEEE_P_2592010699) + 4000);
    t10 = (t0 + 5360U);
    t7 = xsi_base_array_concat(t7, t37, t9, (char)99, (unsigned char)2, (char)97, t8, t10, (char)101);
    t13 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t23, t2, t28, t7, t37);
    t14 = (t0 + 1648U);
    t15 = *((char **)t14);
    t14 = (t15 + 0);
    t16 = (t23 + 12U);
    t35 = *((unsigned int *)t16);
    t36 = (1U * t35);
    memcpy(t14, t13, t36);

LAB3:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2128U);
    t3 = *((char **)t2);
    t2 = (t0 + 1648U);
    t4 = *((char **)t2);
    t38 = (2 * 16);
    t39 = (t38 + 1);
    t35 = (33 - t39);
    t36 = (t35 * 1U);
    t40 = (0 + t36);
    t2 = (t4 + t40);
    t7 = ((IEEE_P_2592010699) + 4000);
    t8 = (t0 + 5456U);
    t9 = (t28 + 0U);
    t10 = (t9 + 0U);
    *((int *)t10) = 33;
    t10 = (t9 + 4U);
    *((int *)t10) = 16;
    t10 = (t9 + 8U);
    *((int *)t10) = -1;
    t41 = (16 - 33);
    t42 = (t41 * -1);
    t42 = (t42 + 1);
    t10 = (t9 + 12U);
    *((unsigned int *)t10) = t42;
    t5 = xsi_base_array_concat(t5, t23, t7, (char)97, t3, t8, (char)97, t2, t28, (char)101);
    t10 = (t0 + 1768U);
    t13 = *((char **)t10);
    t10 = (t13 + 0);
    t42 = (16U + 18U);
    memcpy(t10, t5, t42);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t38 = (16 - 1);
    t35 = (33 - t38);
    t36 = (t35 * 1U);
    t40 = (0 + t36);
    t2 = (t3 + t40);
    t4 = (t23 + 0U);
    t5 = (t4 + 0U);
    *((int *)t5) = 15;
    t5 = (t4 + 4U);
    *((int *)t5) = 0;
    t5 = (t4 + 8U);
    *((int *)t5) = -1;
    t39 = (0 - 15);
    t42 = (t39 * -1);
    t42 = (t42 + 1);
    t5 = (t4 + 12U);
    *((unsigned int *)t5) = t42;
    t5 = (t0 + 1768U);
    t7 = *((char **)t5);
    t5 = (t0 + 5408U);
    t1 = ieee_p_3620187407_sub_1366267000076357978_3965413181(IEEE_P_3620187407, t2, t23, t7, t5);
    if (t1 != 0)
        goto LAB19;

LAB21:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 1648U);
    t3 = *((char **)t2);
    t38 = (16 - 1);
    t35 = (33 - t38);
    t36 = (t35 * 1U);
    t40 = (0 + t36);
    t2 = (t3 + t40);
    t4 = (t28 + 0U);
    t5 = (t4 + 0U);
    *((int *)t5) = 15;
    t5 = (t4 + 4U);
    *((int *)t5) = 0;
    t5 = (t4 + 8U);
    *((int *)t5) = -1;
    t39 = (0 - 15);
    t42 = (t39 * -1);
    t42 = (t42 + 1);
    t5 = (t4 + 12U);
    *((unsigned int *)t5) = t42;
    t5 = (t0 + 1768U);
    t7 = *((char **)t5);
    t41 = (16 - 1);
    t42 = (33 - t41);
    t44 = (t42 * 1U);
    t45 = (0 + t44);
    t5 = (t7 + t45);
    t8 = (t37 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 15;
    t9 = (t8 + 4U);
    *((int *)t9) = 0;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t47 = (0 - 15);
    t48 = (t47 * -1);
    t48 = (t48 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t48;
    t9 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t23, t2, t28, t5, t37);
    t10 = (t23 + 12U);
    t48 = *((unsigned int *)t10);
    t50 = (1U * t48);
    t1 = (16U != t50);
    if (t1 == 1)
        goto LAB24;

LAB25:    t13 = (t0 + 3504);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t18 = *((char **)t16);
    memcpy(t18, t9, 16U);
    xsi_driver_first_trans_fast_port(t13);

LAB20:    t2 = (t0 + 3424);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(51, ng0);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t13 = (t0 + 5344U);
    t15 = (t0 + 2128U);
    t16 = *((char **)t15);
    t15 = (t0 + 5456U);
    t17 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t14, t13, t16, t15);
    if (t17 == 1)
        goto LAB11;

LAB12:    t12 = (unsigned char)0;

LAB13:    if (t12 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 5360U);
    t4 = (t0 + 2128U);
    t5 = *((char **)t4);
    t4 = (t0 + 5456U);
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t5, t4);
    if (t6 == 1)
        goto LAB16;

LAB17:    t1 = (unsigned char)0;

LAB18:    if (t1 != 0)
        goto LAB14;

LAB15:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1888U);
    t3 = *((char **)t2);
    t2 = (t0 + 5424U);
    t4 = (t0 + 1888U);
    t5 = *((char **)t4);
    t4 = (t0 + 5424U);
    t7 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t23, t3, t2, t5, t4);
    t8 = (t0 + 1648U);
    t9 = *((char **)t8);
    t8 = (t9 + 0);
    t10 = (t23 + 12U);
    t35 = *((unsigned int *)t10);
    t36 = (1U * t35);
    memcpy(t8, t7, t36);

LAB9:    goto LAB3;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    xsi_set_current_line(52, ng0);
    t24 = (t0 + 1888U);
    t25 = *((char **)t24);
    t24 = (t0 + 5424U);
    t26 = (t0 + 1192U);
    t27 = *((char **)t26);
    t29 = ((IEEE_P_2592010699) + 4000);
    t30 = (t0 + 5360U);
    t26 = xsi_base_array_concat(t26, t28, t29, (char)99, (unsigned char)2, (char)97, t27, t30, (char)101);
    t31 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t23, t25, t24, t26, t28);
    t32 = (t0 + 1648U);
    t33 = *((char **)t32);
    t32 = (t33 + 0);
    t34 = (t23 + 12U);
    t35 = *((unsigned int *)t34);
    t36 = (1U * t35);
    memcpy(t32, t31, t36);
    goto LAB9;

LAB11:    t18 = (t0 + 1192U);
    t19 = *((char **)t18);
    t18 = (t0 + 5360U);
    t20 = (t0 + 2128U);
    t21 = *((char **)t20);
    t20 = (t0 + 5456U);
    t22 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t19, t18, t21, t20);
    t12 = t22;
    goto LAB13;

LAB14:    xsi_set_current_line(54, ng0);
    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t15 = ((IEEE_P_2592010699) + 4000);
    t16 = (t0 + 5344U);
    t13 = xsi_base_array_concat(t13, t28, t15, (char)99, (unsigned char)2, (char)97, t14, t16, (char)101);
    t18 = (t0 + 1888U);
    t19 = *((char **)t18);
    t18 = (t0 + 5424U);
    t20 = ieee_p_3620187407_sub_1496620905533613331_3965413181(IEEE_P_3620187407, t23, t13, t28, t19, t18);
    t21 = (t0 + 1648U);
    t24 = *((char **)t21);
    t21 = (t24 + 0);
    t25 = (t23 + 12U);
    t35 = *((unsigned int *)t25);
    t36 = (1U * t35);
    memcpy(t21, t20, t36);
    goto LAB9;

LAB16:    t7 = (t0 + 1032U);
    t8 = *((char **)t7);
    t7 = (t0 + 5344U);
    t9 = (t0 + 2128U);
    t10 = *((char **)t9);
    t9 = (t0 + 5456U);
    t11 = ieee_p_3620187407_sub_1306455576380142462_3965413181(IEEE_P_3620187407, t8, t7, t10, t9);
    t1 = t11;
    goto LAB18;

LAB19:    xsi_set_current_line(64, ng0);
    t8 = (t0 + 1648U);
    t9 = *((char **)t8);
    t41 = (16 - 1);
    t42 = (33 - t41);
    t44 = (t42 * 1U);
    t45 = (0 + t44);
    t8 = (t9 + t45);
    t10 = (t46 + 0U);
    t13 = (t10 + 0U);
    *((int *)t13) = 15;
    t13 = (t10 + 4U);
    *((int *)t13) = 0;
    t13 = (t10 + 8U);
    *((int *)t13) = -1;
    t47 = (0 - 15);
    t48 = (t47 * -1);
    t48 = (t48 + 1);
    t13 = (t10 + 12U);
    *((unsigned int *)t13) = t48;
    t13 = (t0 + 1768U);
    t14 = *((char **)t13);
    t49 = (16 - 1);
    t48 = (33 - t49);
    t50 = (t48 * 1U);
    t51 = (0 + t50);
    t13 = (t14 + t51);
    t15 = (t52 + 0U);
    t16 = (t15 + 0U);
    *((int *)t16) = 15;
    t16 = (t15 + 4U);
    *((int *)t16) = 0;
    t16 = (t15 + 8U);
    *((int *)t16) = -1;
    t53 = (0 - 15);
    t54 = (t53 * -1);
    t54 = (t54 + 1);
    t16 = (t15 + 12U);
    *((unsigned int *)t16) = t54;
    t16 = ieee_p_3620187407_sub_1496620905533721142_3965413181(IEEE_P_3620187407, t43, t8, t46, t13, t52);
    t18 = (t0 + 1888U);
    t19 = *((char **)t18);
    t55 = (16 - 1);
    t54 = (16 - t55);
    t56 = (t54 * 1U);
    t57 = (0 + t56);
    t18 = (t19 + t57);
    t20 = (t58 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 15;
    t21 = (t20 + 4U);
    *((int *)t21) = 0;
    t21 = (t20 + 8U);
    *((int *)t21) = -1;
    t59 = (0 - 15);
    t60 = (t59 * -1);
    t60 = (t60 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t60;
    t21 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t37, t16, t43, t18, t58);
    t24 = (t0 + 2008U);
    t25 = *((char **)t24);
    t24 = (t0 + 5440U);
    t26 = ieee_p_3620187407_sub_1496620905533649268_3965413181(IEEE_P_3620187407, t28, t21, t37, t25, t24);
    t27 = (t28 + 12U);
    t60 = *((unsigned int *)t27);
    t61 = (1U * t60);
    t6 = (16U != t61);
    if (t6 == 1)
        goto LAB22;

LAB23:    t29 = (t0 + 3504);
    t30 = (t29 + 56U);
    t31 = *((char **)t30);
    t32 = (t31 + 56U);
    t33 = *((char **)t32);
    memcpy(t33, t26, 16U);
    xsi_driver_first_trans_fast_port(t29);
    goto LAB20;

LAB22:    xsi_size_not_matching(16U, t61, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(16U, t50, 0);
    goto LAB25;

}


extern void work_a_3400501926_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3400501926_3212880686_p_0};
	xsi_register_didat("work_a_3400501926_3212880686", "isim/tb_idea_isim_beh.exe.sim/work/a_3400501926_3212880686.didat");
	xsi_register_executes(pe);
}
