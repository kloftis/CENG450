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
static const char *ng0 = "//samba.engr.uvic.ca/home/kloftis/CENG 450/CENG 450 Final/450Processor/IF_ID_Buffer.vhd";
extern char *IEEE_P_3620187407;



static void work_a_1718188794_3212880686_p_0(char *t0)
{
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    char *t7;
    char *t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(57, ng0);
    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2604);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(68, ng0);
    t7 = (t0 + 592U);
    t8 = *((char **)t7);
    t9 = (7 - 3);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t7 = (t8 + t11);
    t12 = (t0 + 2656);
    t13 = (t12 + 32U);
    t14 = *((char **)t13);
    t15 = (t14 + 40U);
    t16 = *((char **)t15);
    memcpy(t16, t7, 2U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t9 = (7 - 1);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t3 + t11);
    t7 = (t0 + 2692);
    t8 = (t7 + 32U);
    t12 = *((char **)t8);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 2U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t2 = (t0 + 2728);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t9 = (7 - 7);
    t10 = (t9 * 1U);
    t11 = (0 + t10);
    t2 = (t3 + t11);
    t7 = (t0 + 2764);
    t8 = (t7 + 32U);
    t12 = *((char **)t8);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    memcpy(t14, t2, 4U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 2800);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t12 = (t8 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t3, 8U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 1580U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

}

static void work_a_1718188794_3212880686_p_1(char *t0)
{
    char t13[16];
    char t19[16];
    char t27[16];
    char t33[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    unsigned char t23;
    char *t24;
    unsigned int t25;
    unsigned int t26;
    char *t28;
    char *t29;
    int t30;
    unsigned int t31;
    char *t34;
    char *t35;
    int t36;
    unsigned char t37;
    unsigned char t38;
    char *t39;
    char *t40;
    char *t41;
    char *t42;

LAB0:    xsi_set_current_line(80, ng0);
    t2 = (t0 + 1604U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2612);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(84, ng0);
    t8 = (t0 + 592U);
    t9 = *((char **)t8);
    t10 = (7 - 7);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t8 = (t9 + t12);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 7;
    t15 = (t14 + 4U);
    *((int *)t15) = 6;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (6 - 7);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = (t0 + 5465);
    t20 = (t19 + 0U);
    t21 = (t20 + 0U);
    *((int *)t21) = 0;
    t21 = (t20 + 4U);
    *((int *)t21) = 1;
    t21 = (t20 + 8U);
    *((int *)t21) = 1;
    t22 = (1 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t21 = (t20 + 12U);
    *((unsigned int *)t21) = t17;
    t23 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t8, t13, t15, t19);
    if (t23 == 1)
        goto LAB11;

LAB12:    t7 = (unsigned char)0;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 2836);
    t3 = (t2 + 32U);
    t8 = *((char **)t3);
    t9 = (t8 + 40U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB9:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t10 = (7 - 7);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t3 + t12);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 4;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t16 = (4 - 7);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t9 = (t0 + 5469);
    t15 = (t19 + 0U);
    t18 = (t15 + 0U);
    *((int *)t18) = 0;
    t18 = (t15 + 4U);
    *((int *)t18) = 3;
    t18 = (t15 + 8U);
    *((int *)t18) = 1;
    t22 = (3 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t18 = (t15 + 12U);
    *((unsigned int *)t18) = t17;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t13, t9, t19);
    if (t1 != 0)
        goto LAB14;

LAB16:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2872);
    t3 = (t2 + 32U);
    t8 = *((char **)t3);
    t9 = (t8 + 40U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB15:    xsi_set_current_line(96, ng0);
    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t10 = (7 - 7);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t2 = (t3 + t12);
    t8 = (t13 + 0U);
    t9 = (t8 + 0U);
    *((int *)t9) = 7;
    t9 = (t8 + 4U);
    *((int *)t9) = 4;
    t9 = (t8 + 8U);
    *((int *)t9) = -1;
    t16 = (4 - 7);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t9 = (t8 + 12U);
    *((unsigned int *)t9) = t17;
    t9 = (t0 + 5473);
    t15 = (t19 + 0U);
    t18 = (t15 + 0U);
    *((int *)t18) = 0;
    t18 = (t15 + 4U);
    *((int *)t18) = 3;
    t18 = (t15 + 8U);
    *((int *)t18) = 1;
    t22 = (3 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t18 = (t15 + 12U);
    *((unsigned int *)t18) = t17;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t13, t9, t19);
    if (t1 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(99, ng0);
    t2 = (t0 + 2908);
    t3 = (t2 + 32U);
    t8 = *((char **)t3);
    t9 = (t8 + 40U);
    t14 = *((char **)t9);
    *((unsigned char *)t14) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB18:    goto LAB3;

LAB5:    t2 = (t0 + 1580U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(85, ng0);
    t35 = (t0 + 2836);
    t39 = (t35 + 32U);
    t40 = *((char **)t39);
    t41 = (t40 + 40U);
    t42 = *((char **)t41);
    *((unsigned char *)t42) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t35);
    goto LAB9;

LAB11:    t21 = (t0 + 592U);
    t24 = *((char **)t21);
    t17 = (7 - 5);
    t25 = (t17 * 1U);
    t26 = (0 + t25);
    t21 = (t24 + t26);
    t28 = (t27 + 0U);
    t29 = (t28 + 0U);
    *((int *)t29) = 5;
    t29 = (t28 + 4U);
    *((int *)t29) = 4;
    t29 = (t28 + 8U);
    *((int *)t29) = -1;
    t30 = (4 - 5);
    t31 = (t30 * -1);
    t31 = (t31 + 1);
    t29 = (t28 + 12U);
    *((unsigned int *)t29) = t31;
    t29 = (t0 + 5467);
    t34 = (t33 + 0U);
    t35 = (t34 + 0U);
    *((int *)t35) = 0;
    t35 = (t34 + 4U);
    *((int *)t35) = 1;
    t35 = (t34 + 8U);
    *((int *)t35) = 1;
    t36 = (1 - 0);
    t31 = (t36 * 1);
    t31 = (t31 + 1);
    t35 = (t34 + 12U);
    *((unsigned int *)t35) = t31;
    t37 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t27, t29, t33);
    t38 = (!(t37));
    t7 = t38;
    goto LAB13;

LAB14:    xsi_set_current_line(91, ng0);
    t18 = (t0 + 2872);
    t20 = (t18 + 32U);
    t21 = *((char **)t20);
    t24 = (t21 + 40U);
    t28 = *((char **)t24);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t18);
    goto LAB15;

LAB17:    xsi_set_current_line(97, ng0);
    t18 = (t0 + 2908);
    t20 = (t18 + 32U);
    t21 = *((char **)t20);
    t24 = (t21 + 40U);
    t28 = *((char **)t24);
    *((unsigned char *)t28) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t18);
    goto LAB18;

}


extern void work_a_1718188794_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1718188794_3212880686_p_0,(void *)work_a_1718188794_3212880686_p_1};
	xsi_register_didat("work_a_1718188794_3212880686", "isim/Processor_isim_beh.exe.sim/work/a_1718188794_3212880686.didat");
	xsi_register_executes(pe);
}
