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
static const char *ng0 = "/mnt/hgfs/VHDL-Lab/submission_template/submit/rcs2/tb_mux4x1.vhd";



static void work_a_4164313050_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3264U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 3896);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 3896);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 2288U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3072);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_4164313050_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    unsigned char t11;
    unsigned int t12;

LAB0:    t1 = (t0 + 3512U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(67, ng0);
    t3 = (100 * 1000LL);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 6696);
    t5 = (t0 + 3960);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 6712);
    t5 = (t0 + 4024);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 6728);
    t5 = (t0 + 4088);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 6744);
    t5 = (t0 + 4152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t10);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 6760);
    t5 = (t0 + 4216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t10);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(77, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6762);
    t11 = 1;
    if (16U == 16U)
        goto LAB18;

LAB19:    t11 = 0;

LAB20:    if (t11 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 6793);
    t5 = (t0 + 4216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t10);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t8 = (t0 + 6778);
    xsi_report(t8, 15U, (unsigned char)2);
    goto LAB17;

LAB18:    t12 = 0;

LAB21:    if (t12 < 16U)
        goto LAB22;
    else
        goto LAB20;

LAB22:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB19;

LAB23:    t12 = (t12 + 1);
    goto LAB21;

LAB24:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6795);
    t11 = 1;
    if (16U == 16U)
        goto LAB30;

LAB31:    t11 = 0;

LAB32:    if (t11 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 6826);
    t5 = (t0 + 4216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t10);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    t8 = (t0 + 6811);
    xsi_report(t8, 15U, (unsigned char)2);
    goto LAB29;

LAB30:    t12 = 0;

LAB33:    if (t12 < 16U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB31;

LAB35:    t12 = (t12 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6828);
    t11 = 1;
    if (16U == 16U)
        goto LAB42;

LAB43:    t11 = 0;

LAB44:    if (t11 == 0)
        goto LAB40;

LAB41:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 6859);
    t5 = (t0 + 4216);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(88, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t10);

LAB50:    *((char **)t1) = &&LAB51;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    t8 = (t0 + 6844);
    xsi_report(t8, 15U, (unsigned char)2);
    goto LAB41;

LAB42:    t12 = 0;

LAB45:    if (t12 < 16U)
        goto LAB46;
    else
        goto LAB44;

LAB46:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB43;

LAB47:    t12 = (t12 + 1);
    goto LAB45;

LAB48:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6861);
    t11 = 1;
    if (16U == 16U)
        goto LAB54;

LAB55:    t11 = 0;

LAB56:    if (t11 == 0)
        goto LAB52;

LAB53:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 6892);
    t5 = (t0 + 4152);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 16U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t3 = *((int64 *)t4);
    t10 = (t3 / 2);
    t2 = (t0 + 3320);
    xsi_process_wait(t2, t10);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB49:    goto LAB48;

LAB51:    goto LAB49;

LAB52:    t8 = (t0 + 6877);
    xsi_report(t8, 15U, (unsigned char)2);
    goto LAB53;

LAB54:    t12 = 0;

LAB57:    if (t12 < 16U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB55;

LAB59:    t12 = (t12 + 1);
    goto LAB57;

LAB60:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 6908);
    t11 = 1;
    if (16U == 16U)
        goto LAB66;

LAB67:    t11 = 0;

LAB68:    if (t11 == 0)
        goto LAB64;

LAB65:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 6939);
    xsi_report(t2, 22U, (unsigned char)0);
    goto LAB2;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

LAB64:    t8 = (t0 + 6924);
    xsi_report(t8, 15U, (unsigned char)2);
    goto LAB65;

LAB66:    t12 = 0;

LAB69:    if (t12 < 16U)
        goto LAB70;
    else
        goto LAB68;

LAB70:    t6 = (t4 + t12);
    t7 = (t2 + t12);
    if (*((unsigned char *)t6) != *((unsigned char *)t7))
        goto LAB67;

LAB71:    t12 = (t12 + 1);
    goto LAB69;

}


extern void work_a_4164313050_2372691052_init()
{
	static char *pe[] = {(void *)work_a_4164313050_2372691052_p_0,(void *)work_a_4164313050_2372691052_p_1};
	xsi_register_didat("work_a_4164313050_2372691052", "isim/tb_mux4x1_isim_beh.exe.sim/work/a_4164313050_2372691052.didat");
	xsi_register_executes(pe);
}
