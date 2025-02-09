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
static const char *ng0 = "/mnt/hgfs/VHDL-Lab/submission_template/submit/rcs2/roundcounter.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);


static void work_a_3421611284_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6224);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t4 = (t0 + 2472U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 6384);
    t10 = (t4 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3421611284_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned char t8;
    unsigned char t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(61, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (t0 + 6448);
    t4 = (t1 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = t3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(62, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6240);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(64, ng0);
    t4 = (t0 + 2792U);
    t5 = *((char **)t4);
    t8 = *((unsigned char *)t5);
    t9 = (t8 == (unsigned char)3);
    if (t9 != 0)
        goto LAB6;

LAB8:
LAB7:    goto LAB2;

LAB4:    xsi_set_current_line(68, ng0);
    t1 = (t0 + 6448);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(70, ng0);
    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB12;

LAB13:    t3 = (unsigned char)0;

LAB14:    if (t3 != 0)
        goto LAB9;

LAB11:    t1 = (t0 + 2952U);
    t2 = *((char **)t1);
    t8 = *((unsigned char *)t2);
    t9 = (t8 == (unsigned char)3);
    if (t9 == 1)
        goto LAB23;

LAB24:    t3 = (unsigned char)0;

LAB25:    if (t3 != 0)
        goto LAB21;

LAB22:
LAB10:    goto LAB2;

LAB6:    xsi_set_current_line(65, ng0);
    t4 = (t0 + 6448);
    t6 = (t4 + 56U);
    t7 = *((char **)t6);
    t10 = (t7 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = (unsigned char)1;
    xsi_driver_first_trans_fast(t4);
    goto LAB7;

LAB9:    xsi_set_current_line(71, ng0);
    t10 = (t0 + 6448);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)1;
    xsi_driver_first_trans_fast(t10);
    goto LAB10;

LAB12:    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 10613);
    t12 = 1;
    if (4U == 4U)
        goto LAB15;

LAB16:    t12 = 0;

LAB17:    t3 = (!(t12));
    goto LAB14;

LAB15:    t13 = 0;

LAB18:    if (t13 < 4U)
        goto LAB19;
    else
        goto LAB17;

LAB19:    t6 = (t4 + t13);
    t7 = (t1 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB16;

LAB20:    t13 = (t13 + 1);
    goto LAB18;

LAB21:    xsi_set_current_line(74, ng0);
    t10 = (t0 + 6448);
    t11 = (t10 + 56U);
    t14 = *((char **)t11);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    *((unsigned char *)t16) = (unsigned char)0;
    xsi_driver_first_trans_fast(t10);
    goto LAB10;

LAB23:    t1 = (t0 + 2632U);
    t4 = *((char **)t1);
    t1 = (t0 + 10617);
    t12 = 1;
    if (4U == 4U)
        goto LAB26;

LAB27:    t12 = 0;

LAB28:    t3 = t12;
    goto LAB25;

LAB26:    t13 = 0;

LAB29:    if (t13 < 4U)
        goto LAB30;
    else
        goto LAB28;

LAB30:    t6 = (t4 + t13);
    t7 = (t1 + t13);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB27;

LAB31:    t13 = (t13 + 1);
    goto LAB29;

}

static void work_a_3421611284_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    static char *nl0[] = {&&LAB3, &&LAB4, &&LAB5};

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 6256);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(83, ng0);
    t4 = (t0 + 6512);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(84, ng0);
    t1 = (t0 + 6576);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB4:    xsi_set_current_line(86, ng0);
    t1 = (t0 + 6512);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(87, ng0);
    t1 = (t0 + 6576);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB5:    xsi_set_current_line(89, ng0);
    t1 = (t0 + 6512);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    xsi_set_current_line(90, ng0);
    t1 = (t0 + 6576);
    t2 = (t1 + 56U);
    t4 = *((char **)t2);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

}

static void work_a_3421611284_3212880686_p_3(char *t0)
{
    char t20[16];
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
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned char t15;
    char *t16;
    unsigned char t17;
    char *t18;
    char *t19;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(97, ng0);
    t1 = xsi_get_transient_memory(4U);
    memset(t1, 0, 4U);
    t2 = t1;
    memset(t2, (unsigned char)2, 4U);
    t3 = (0 - 3);
    t4 = (t3 * -1);
    t5 = (1U * t4);
    t6 = (t2 + t5);
    *((unsigned char *)t6) = (unsigned char)3;
    t7 = (t0 + 3568U);
    t8 = *((char **)t7);
    t7 = (t8 + 0);
    memcpy(t7, t1, 4U);
    xsi_set_current_line(98, ng0);
    t1 = (t0 + 992U);
    t10 = xsi_signal_has_event(t1);
    if (t10 == 1)
        goto LAB5;

LAB6:    t9 = (unsigned char)0;

LAB7:    if (t9 != 0)
        goto LAB2;

LAB4:
LAB3:    t1 = (t0 + 6272);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2952U);
    t7 = *((char **)t2);
    t14 = *((unsigned char *)t7);
    t15 = (t14 == (unsigned char)3);
    if (t15 == 1)
        goto LAB11;

LAB12:    t13 = (unsigned char)0;

LAB13:    if (t13 != 0)
        goto LAB8;

LAB10:    t1 = (t0 + 2792U);
    t2 = *((char **)t1);
    t10 = *((unsigned char *)t2);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB22;

LAB23:    t9 = (unsigned char)0;

LAB24:    if (t9 != 0)
        goto LAB20;

LAB21:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1032U);
    t6 = *((char **)t2);
    t11 = *((unsigned char *)t6);
    t12 = (t11 == (unsigned char)3);
    t9 = t12;
    goto LAB7;

LAB8:    xsi_set_current_line(100, ng0);
    t21 = (t0 + 2632U);
    t22 = *((char **)t21);
    t21 = (t0 + 10536U);
    t23 = (t0 + 3568U);
    t24 = *((char **)t23);
    t23 = (t0 + 10552U);
    t25 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t20, t22, t21, t24, t23);
    t26 = (t0 + 6640);
    t27 = (t26 + 56U);
    t28 = *((char **)t27);
    t29 = (t28 + 56U);
    t30 = *((char **)t29);
    memcpy(t30, t25, 4U);
    xsi_driver_first_trans_fast(t26);
    goto LAB9;

LAB11:    t2 = (t0 + 2632U);
    t8 = *((char **)t2);
    t2 = (t0 + 10621);
    t17 = 1;
    if (4U == 4U)
        goto LAB14;

LAB15:    t17 = 0;

LAB16:    t13 = (!(t17));
    goto LAB13;

LAB14:    t4 = 0;

LAB17:    if (t4 < 4U)
        goto LAB18;
    else
        goto LAB16;

LAB18:    t18 = (t8 + t4);
    t19 = (t2 + t4);
    if (*((unsigned char *)t18) != *((unsigned char *)t19))
        goto LAB15;

LAB19:    t4 = (t4 + 1);
    goto LAB17;

LAB20:    xsi_set_current_line(102, ng0);
    t18 = xsi_get_transient_memory(4U);
    memset(t18, 0, 4U);
    t19 = t18;
    memset(t19, (unsigned char)2, 4U);
    t21 = (t0 + 6640);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    memcpy(t25, t18, 4U);
    xsi_driver_first_trans_fast(t21);
    goto LAB9;

LAB22:    t1 = (t0 + 2632U);
    t6 = *((char **)t1);
    t1 = (t0 + 10625);
    t12 = 1;
    if (4U == 4U)
        goto LAB25;

LAB26:    t12 = 0;

LAB27:    t9 = t12;
    goto LAB24;

LAB25:    t4 = 0;

LAB28:    if (t4 < 4U)
        goto LAB29;
    else
        goto LAB27;

LAB29:    t8 = (t6 + t4);
    t16 = (t1 + t4);
    if (*((unsigned char *)t8) != *((unsigned char *)t16))
        goto LAB26;

LAB30:    t4 = (t4 + 1);
    goto LAB28;

}

static void work_a_3421611284_3212880686_p_4(char *t0)
{
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;

LAB0:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6288);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(111, ng0);
    t4 = (t0 + 1352U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t4 = (t0 + 6704);
    t10 = (t4 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = t9;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t2 = (t0 + 6768);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    *((unsigned char *)t11) = t1;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

}

static void work_a_3421611284_3212880686_p_5(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    unsigned int t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    int t14;
    unsigned int t15;
    unsigned int t16;

LAB0:    xsi_set_current_line(118, ng0);
    t1 = (t0 + 3272U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    xsi_set_current_line(121, ng0);
    t1 = (t0 + 6832);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    xsi_set_current_line(123, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 10629);
    t3 = 1;
    if (4U == 4U)
        goto LAB8;

LAB9:    t3 = 0;

LAB10:    if (t3 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(126, ng0);
    t1 = (t0 + 6896);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB6:    xsi_set_current_line(128, ng0);
    t1 = (t0 + 3112U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(131, ng0);
    t1 = (t0 + 6960);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB15:    xsi_set_current_line(133, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t14 = (3 - 3);
    t9 = (t14 * -1);
    t15 = (1U * t9);
    t16 = (0 + t15);
    t1 = (t2 + t16);
    t3 = *((unsigned char *)t1);
    t5 = (t0 + 7024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t10 = *((char **)t8);
    *((unsigned char *)t10) = t3;
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(134, ng0);
    t1 = (t0 + 2632U);
    t2 = *((char **)t1);
    t1 = (t0 + 7088);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 4U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 6304);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(119, ng0);
    t1 = (t0 + 6832);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(124, ng0);
    t8 = (t0 + 6896);
    t10 = (t8 + 56U);
    t11 = *((char **)t10);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t8);
    goto LAB6;

LAB8:    t9 = 0;

LAB11:    if (t9 < 4U)
        goto LAB12;
    else
        goto LAB10;

LAB12:    t6 = (t2 + t9);
    t7 = (t1 + t9);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB9;

LAB13:    t9 = (t9 + 1);
    goto LAB11;

LAB14:    xsi_set_current_line(129, ng0);
    t1 = (t0 + 6960);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB15;

}


extern void work_a_3421611284_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3421611284_3212880686_p_0,(void *)work_a_3421611284_3212880686_p_1,(void *)work_a_3421611284_3212880686_p_2,(void *)work_a_3421611284_3212880686_p_3,(void *)work_a_3421611284_3212880686_p_4,(void *)work_a_3421611284_3212880686_p_5};
	xsi_register_didat("work_a_3421611284_3212880686", "isim/tb_idea_rcs2_isim_beh.exe.sim/work/a_3421611284_3212880686.didat");
	xsi_register_executes(pe);
}
