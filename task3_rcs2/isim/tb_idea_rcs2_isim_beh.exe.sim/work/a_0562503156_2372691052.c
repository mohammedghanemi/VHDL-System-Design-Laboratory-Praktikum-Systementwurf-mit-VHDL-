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
static const char *ng0 = "/mnt/hgfs/VHDL-Lab/submission_template/submit/rcs2/tb_idea_rcs2.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_10420449594411817395_1035706684(char *, char *, int , int );


static void work_a_0562503156_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 4064U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(103, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3872);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(104, ng0);
    t2 = (t0 + 4696);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 3088U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3872);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_0562503156_2372691052_p_1(char *t0)
{
    char t10[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int64 t9;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    unsigned int t15;
    unsigned char t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t24;
    unsigned int t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    unsigned char t31;
    unsigned int t32;
    char *t33;
    char *t34;
    char *t35;

LAB0:    t1 = (t0 + 4312U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(112, ng0);
    t2 = xsi_get_transient_memory(128U);
    memset(t2, 0, 128U);
    t3 = t2;
    memset(t3, (unsigned char)2, 128U);
    t4 = (t0 + 4760);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 128U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(113, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4824);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(114, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(115, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(116, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 5016);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(117, ng0);
    t9 = (100 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t9);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 8272);
    t4 = (t0 + 4760);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 128U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(121, ng0);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, 4369, 16);
    t3 = (t0 + 4824);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(122, ng0);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, 8738, 16);
    t3 = (t0 + 4888);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(123, ng0);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, 17476, 16);
    t3 = (t0 + 4952);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(124, ng0);
    t2 = ieee_p_1242562249_sub_10420449594411817395_1035706684(IEEE_P_1242562249, t10, 34952, 16);
    t3 = (t0 + 5016);
    t4 = (t3 + 56U);
    t5 = *((char **)t4);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    memcpy(t7, t2, 16U);
    xsi_driver_first_trans_fast(t3);
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 5080);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(126, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t9);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 5080);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(128, ng0);
    t9 = (850 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t9);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 8400);
    t14 = 1;
    if (16U == 16U)
        goto LAB27;

LAB28:    t14 = 0;

LAB29:    if (t14 == 1)
        goto LAB24;

LAB25:    t13 = (unsigned char)0;

LAB26:    if (t13 == 1)
        goto LAB21;

LAB22:    t12 = (unsigned char)0;

LAB23:    if (t12 == 1)
        goto LAB18;

LAB19:    t11 = (unsigned char)0;

LAB20:    if (t11 == 0)
        goto LAB16;

LAB17:    xsi_set_current_line(135, ng0);
    t2 = xsi_get_transient_memory(128U);
    memset(t2, 0, 128U);
    t3 = t2;
    memset(t3, (unsigned char)2, 128U);
    t4 = (t0 + 4760);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 128U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(136, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4824);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(137, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4888);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(138, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 4952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(139, ng0);
    t2 = xsi_get_transient_memory(16U);
    memset(t2, 0, 16U);
    t3 = t2;
    memset(t3, (unsigned char)2, 16U);
    t4 = (t0 + 5016);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    memcpy(t8, t2, 16U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(140, ng0);
    t2 = (t0 + 5080);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(141, ng0);
    t9 = (10 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t9);

LAB53:    *((char **)t1) = &&LAB54;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    t35 = (t0 + 8464);
    xsi_report(t35, 39U, (unsigned char)0);
    goto LAB17;

LAB18:    t28 = (t0 + 2632U);
    t29 = *((char **)t28);
    t28 = (t0 + 8448);
    t31 = 1;
    if (16U == 16U)
        goto LAB45;

LAB46:    t31 = 0;

LAB47:    t11 = t31;
    goto LAB20;

LAB21:    t21 = (t0 + 2472U);
    t22 = *((char **)t21);
    t21 = (t0 + 8432);
    t24 = 1;
    if (16U == 16U)
        goto LAB39;

LAB40:    t24 = 0;

LAB41:    t12 = t24;
    goto LAB23;

LAB24:    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t7 = (t0 + 8416);
    t17 = 1;
    if (16U == 16U)
        goto LAB33;

LAB34:    t17 = 0;

LAB35:    t13 = t17;
    goto LAB26;

LAB27:    t15 = 0;

LAB30:    if (t15 < 16U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t5 = (t3 + t15);
    t6 = (t2 + t15);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB28;

LAB32:    t15 = (t15 + 1);
    goto LAB30;

LAB33:    t18 = 0;

LAB36:    if (t18 < 16U)
        goto LAB37;
    else
        goto LAB35;

LAB37:    t19 = (t8 + t18);
    t20 = (t7 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB34;

LAB38:    t18 = (t18 + 1);
    goto LAB36;

LAB39:    t25 = 0;

LAB42:    if (t25 < 16U)
        goto LAB43;
    else
        goto LAB41;

LAB43:    t26 = (t22 + t25);
    t27 = (t21 + t25);
    if (*((unsigned char *)t26) != *((unsigned char *)t27))
        goto LAB40;

LAB44:    t25 = (t25 + 1);
    goto LAB42;

LAB45:    t32 = 0;

LAB48:    if (t32 < 16U)
        goto LAB49;
    else
        goto LAB47;

LAB49:    t33 = (t29 + t32);
    t34 = (t28 + t32);
    if (*((unsigned char *)t33) != *((unsigned char *)t34))
        goto LAB46;

LAB50:    t32 = (t32 + 1);
    goto LAB48;

LAB51:    xsi_set_current_line(142, ng0);
    t2 = (t0 + 5080);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(143, ng0);
    t9 = (850 * 1000LL);
    t2 = (t0 + 4120);
    xsi_process_wait(t2, t9);

LAB57:    *((char **)t1) = &&LAB58;
    goto LAB1;

LAB52:    goto LAB51;

LAB54:    goto LAB52;

LAB55:    xsi_set_current_line(146, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 8503);
    t14 = 1;
    if (16U == 16U)
        goto LAB70;

LAB71:    t14 = 0;

LAB72:    if (t14 == 1)
        goto LAB67;

LAB68:    t13 = (unsigned char)0;

LAB69:    if (t13 == 1)
        goto LAB64;

LAB65:    t12 = (unsigned char)0;

LAB66:    if (t12 == 1)
        goto LAB61;

LAB62:    t11 = (unsigned char)0;

LAB63:    if (t11 == 0)
        goto LAB59;

LAB60:    xsi_set_current_line(151, ng0);

LAB96:    *((char **)t1) = &&LAB97;
    goto LAB1;

LAB56:    goto LAB55;

LAB58:    goto LAB56;

LAB59:    t35 = (t0 + 8567);
    xsi_report(t35, 39U, (unsigned char)0);
    goto LAB60;

LAB61:    t28 = (t0 + 2632U);
    t29 = *((char **)t28);
    t28 = (t0 + 8551);
    t31 = 1;
    if (16U == 16U)
        goto LAB88;

LAB89:    t31 = 0;

LAB90:    t11 = t31;
    goto LAB63;

LAB64:    t21 = (t0 + 2472U);
    t22 = *((char **)t21);
    t21 = (t0 + 8535);
    t24 = 1;
    if (16U == 16U)
        goto LAB82;

LAB83:    t24 = 0;

LAB84:    t12 = t24;
    goto LAB66;

LAB67:    t7 = (t0 + 2312U);
    t8 = *((char **)t7);
    t7 = (t0 + 8519);
    t17 = 1;
    if (16U == 16U)
        goto LAB76;

LAB77:    t17 = 0;

LAB78:    t13 = t17;
    goto LAB69;

LAB70:    t15 = 0;

LAB73:    if (t15 < 16U)
        goto LAB74;
    else
        goto LAB72;

LAB74:    t5 = (t3 + t15);
    t6 = (t2 + t15);
    if (*((unsigned char *)t5) != *((unsigned char *)t6))
        goto LAB71;

LAB75:    t15 = (t15 + 1);
    goto LAB73;

LAB76:    t18 = 0;

LAB79:    if (t18 < 16U)
        goto LAB80;
    else
        goto LAB78;

LAB80:    t19 = (t8 + t18);
    t20 = (t7 + t18);
    if (*((unsigned char *)t19) != *((unsigned char *)t20))
        goto LAB77;

LAB81:    t18 = (t18 + 1);
    goto LAB79;

LAB82:    t25 = 0;

LAB85:    if (t25 < 16U)
        goto LAB86;
    else
        goto LAB84;

LAB86:    t26 = (t22 + t25);
    t27 = (t21 + t25);
    if (*((unsigned char *)t26) != *((unsigned char *)t27))
        goto LAB83;

LAB87:    t25 = (t25 + 1);
    goto LAB85;

LAB88:    t32 = 0;

LAB91:    if (t32 < 16U)
        goto LAB92;
    else
        goto LAB90;

LAB92:    t33 = (t29 + t32);
    t34 = (t28 + t32);
    if (*((unsigned char *)t33) != *((unsigned char *)t34))
        goto LAB89;

LAB93:    t32 = (t32 + 1);
    goto LAB91;

LAB94:    goto LAB2;

LAB95:    goto LAB94;

LAB97:    goto LAB95;

}


extern void work_a_0562503156_2372691052_init()
{
	static char *pe[] = {(void *)work_a_0562503156_2372691052_p_0,(void *)work_a_0562503156_2372691052_p_1};
	xsi_register_didat("work_a_0562503156_2372691052", "isim/tb_idea_rcs2_isim_beh.exe.sim/work/a_0562503156_2372691052.didat");
	xsi_register_executes(pe);
}
