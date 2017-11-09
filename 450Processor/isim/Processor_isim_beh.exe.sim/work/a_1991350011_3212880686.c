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

/* This file is designed for use with ISim build 0x2f00eba5 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//samba.engr.uvic.ca/home/kloftis/CENG 450/CENG 450 Final/450Processor/PC.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_1991350011_3212880686_p_0(char *t0)
{
    char t17[16];
    char t21[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    int t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 1236U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2696);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(58, ng0);
    t7 = (t0 + 1328U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1512U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 5285);
    t7 = (t0 + 2820);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1212U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(60, ng0);
    t7 = (t0 + 5257);
    t12 = (t0 + 2748);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 8U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 5265);
    t7 = (t0 + 2784);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5273);
    t7 = (t0 + 2820);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB9;

LAB11:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 1144U);
    t7 = *((char **)t2);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 868U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB16;

LAB17:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t2 = (t0 + 5200U);
    t7 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t17, t3, t2, (unsigned char)3);
    t8 = (t17 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB30;

LAB31:    t11 = (t0 + 2748);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t2 = (t0 + 5200U);
    t7 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t17, t3, t2, (unsigned char)3);
    t8 = (t17 + 12U);
    t18 = *((unsigned int *)t8);
    t19 = (1U * t18);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB32;

LAB33:    t11 = (t0 + 2820);
    t12 = (t11 + 32U);
    t13 = *((char **)t12);
    t14 = (t13 + 40U);
    t15 = *((char **)t14);
    memcpy(t15, t7, 8U);
    xsi_driver_first_trans_fast_port(t11);

LAB24:
LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 1604U);
    t8 = *((char **)t2);
    t2 = (t0 + 2748);
    t11 = (t2 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t8, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t2 = (t0 + 2820);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB16:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 1052U);
    t7 = *((char **)t2);
    t5 = *((unsigned char *)t7);
    t6 = (t5 == (unsigned char)3);
    if (t6 != 0)
        goto LAB18;

LAB20:
LAB19:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 2748);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 2820);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t12 = *((char **)t11);
    memcpy(t12, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB18:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1696U);
    t8 = *((char **)t2);
    t2 = (t0 + 5200U);
    t11 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t17, t8, t2, (unsigned char)3);
    t12 = (t17 + 12U);
    t18 = *((unsigned int *)t12);
    t19 = (1U * t18);
    t9 = (8U != t19);
    if (t9 == 1)
        goto LAB21;

LAB22:    t13 = (t0 + 2784);
    t14 = (t13 + 32U);
    t15 = *((char **)t14);
    t16 = (t15 + 40U);
    t20 = *((char **)t16);
    memcpy(t20, t11, 8U);
    xsi_driver_first_trans_fast(t13);
    goto LAB19;

LAB21:    xsi_size_not_matching(8U, t19, 0);
    goto LAB22;

LAB23:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 1696U);
    t7 = *((char **)t2);
    t2 = (t0 + 5200U);
    t8 = (t0 + 5281);
    t12 = (t21 + 0U);
    t13 = (t12 + 0U);
    *((int *)t13) = 0;
    t13 = (t12 + 4U);
    *((int *)t13) = 1;
    t13 = (t12 + 8U);
    *((int *)t13) = 1;
    t22 = (1 - 0);
    t18 = (t22 * 1);
    t18 = (t18 + 1);
    t13 = (t12 + 12U);
    *((unsigned int *)t13) = t18;
    t13 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t7, t2, t8, t21);
    t14 = (t17 + 12U);
    t18 = *((unsigned int *)t14);
    t19 = (1U * t18);
    t5 = (8U != t19);
    if (t5 == 1)
        goto LAB26;

LAB27:    t15 = (t0 + 2748);
    t16 = (t15 + 32U);
    t20 = *((char **)t16);
    t23 = (t20 + 40U);
    t24 = *((char **)t23);
    memcpy(t24, t13, 8U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 1696U);
    t3 = *((char **)t2);
    t2 = (t0 + 5200U);
    t7 = (t0 + 5283);
    t11 = (t21 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t22 = (1 - 0);
    t18 = (t22 * 1);
    t18 = (t18 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t18;
    t12 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t17, t3, t2, t7, t21);
    t13 = (t17 + 12U);
    t18 = *((unsigned int *)t13);
    t19 = (1U * t18);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB28;

LAB29:    t14 = (t0 + 2820);
    t15 = (t14 + 32U);
    t16 = *((char **)t15);
    t20 = (t16 + 40U);
    t23 = *((char **)t20);
    memcpy(t23, t12, 8U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB24;

LAB26:    xsi_size_not_matching(8U, t19, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(8U, t19, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(8U, t19, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(8U, t19, 0);
    goto LAB33;

}

static void work_a_1991350011_3212880686_p_1(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    unsigned char t15;
    unsigned char t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    unsigned char t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;

LAB0:    xsi_set_current_line(107, ng0);
    t2 = (t0 + 1328U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t2 = (t0 + 684U);
    t6 = *((char **)t2);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t1 = t8;

LAB7:    if (t1 != 0)
        goto LAB3;

LAB4:    t13 = (t0 + 776U);
    t14 = *((char **)t13);
    t15 = *((unsigned char *)t14);
    t16 = (t15 == (unsigned char)3);
    if (t16 != 0)
        goto LAB8;

LAB9:
LAB10:    t21 = (t0 + 1512U);
    t22 = *((char **)t21);
    t23 = *((unsigned char *)t22);
    t21 = (t0 + 2856);
    t24 = (t21 + 32U);
    t25 = *((char **)t24);
    t26 = (t25 + 40U);
    t27 = *((char **)t26);
    *((unsigned char *)t27) = t23;
    xsi_driver_first_trans_fast(t21);

LAB2:    t28 = (t0 + 2704);
    *((int *)t28) = 1;

LAB1:    return;
LAB3:    t2 = (t0 + 2856);
    t9 = (t2 + 32U);
    t10 = *((char **)t9);
    t11 = (t10 + 40U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB2;

LAB5:    t1 = (unsigned char)1;
    goto LAB7;

LAB8:    t13 = (t0 + 2856);
    t17 = (t13 + 32U);
    t18 = *((char **)t17);
    t19 = (t18 + 40U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)2;
    xsi_driver_first_trans_fast(t13);
    goto LAB2;

LAB11:    goto LAB2;

}


extern void work_a_1991350011_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1991350011_3212880686_p_0,(void *)work_a_1991350011_3212880686_p_1};
	xsi_register_didat("work_a_1991350011_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_1991350011_3212880686.didat");
	xsi_register_executes(pe);
}
