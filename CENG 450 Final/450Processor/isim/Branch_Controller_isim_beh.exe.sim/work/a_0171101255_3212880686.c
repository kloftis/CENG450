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
static const char *ng0 = "//samba.engr.uvic.ca/home/kloftis/CENG 450/CENG 450 Final/450Processor/Branch_Controller.vhd";
extern char *IEEE_P_3620187407;



static void work_a_0171101255_3212880686_p_0(char *t0)
{
    char t15[16];
    char t19[16];
    char t26[16];
    char t37[16];
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
    int t16;
    unsigned int t17;
    char *t18;
    char *t20;
    char *t21;
    int t22;
    char *t23;
    char *t24;
    char *t25;
    char *t27;
    char *t28;
    int t29;
    char *t30;
    unsigned char t31;
    unsigned char t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t38;
    char *t39;
    int t40;
    unsigned char t41;
    char *t42;
    unsigned char t43;
    unsigned char t44;
    char *t45;
    char *t46;
    char *t47;
    char *t48;
    char *t49;

LAB0:    xsi_set_current_line(51, ng0);
    t2 = (t0 + 1144U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2368);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(52, ng0);
    t7 = (t0 + 1052U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 592U);
    t3 = *((char **)t2);
    t2 = (t0 + 4808U);
    t7 = (t0 + 4906);
    t11 = (t15 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 3;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t16 = (3 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t17;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t15);
    if (t1 != 0)
        goto LAB11;

LAB12:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 2448);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);

LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1120U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 2412);
    t11 = (t7 + 32U);
    t12 = *((char **)t11);
    t13 = (t12 + 40U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2448);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4898);
    t7 = (t0 + 2520);
    t8 = (t7 + 32U);
    t11 = *((char **)t8);
    t12 = (t11 + 40U);
    t13 = *((char **)t12);
    memcpy(t13, t2, 8U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB9;

LAB11:    xsi_set_current_line(60, ng0);
    t12 = (t0 + 684U);
    t13 = *((char **)t12);
    t12 = (t0 + 4824U);
    t14 = (t0 + 4910);
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
    t6 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t13, t12, t14, t19);
    if (t6 == 1)
        goto LAB19;

LAB20:    t21 = (t0 + 684U);
    t23 = *((char **)t21);
    t21 = (t0 + 4824U);
    t24 = (t0 + 4912);
    t27 = (t26 + 0U);
    t28 = (t27 + 0U);
    *((int *)t28) = 0;
    t28 = (t27 + 4U);
    *((int *)t28) = 1;
    t28 = (t27 + 8U);
    *((int *)t28) = 1;
    t29 = (1 - 0);
    t17 = (t29 * 1);
    t17 = (t17 + 1);
    t28 = (t27 + 12U);
    *((unsigned int *)t28) = t17;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t23, t21, t24, t26);
    if (t10 == 1)
        goto LAB22;

LAB23:    t9 = (unsigned char)0;

LAB24:    t5 = t9;

LAB21:    if (t5 == 1)
        goto LAB16;

LAB17:    t28 = (t0 + 684U);
    t34 = *((char **)t28);
    t28 = (t0 + 4824U);
    t35 = (t0 + 4914);
    t38 = (t37 + 0U);
    t39 = (t38 + 0U);
    *((int *)t39) = 0;
    t39 = (t38 + 4U);
    *((int *)t39) = 1;
    t39 = (t38 + 8U);
    *((int *)t39) = 1;
    t40 = (1 - 0);
    t17 = (t40 * 1);
    t17 = (t17 + 1);
    t39 = (t38 + 12U);
    *((unsigned int *)t39) = t17;
    t41 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t34, t28, t35, t37);
    if (t41 == 1)
        goto LAB25;

LAB26:    t33 = (unsigned char)0;

LAB27:    t4 = t33;

LAB18:    if (t4 != 0)
        goto LAB13;

LAB15:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4824U);
    t7 = (t0 + 4916);
    t11 = (t15 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t16 = (1 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t17;
    t5 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t15);
    if (t5 == 1)
        goto LAB33;

LAB34:    t4 = (unsigned char)0;

LAB35:    if (t4 == 1)
        goto LAB30;

LAB31:    t12 = (t0 + 684U);
    t14 = *((char **)t12);
    t12 = (t0 + 4824U);
    t18 = (t0 + 4918);
    t21 = (t19 + 0U);
    t23 = (t21 + 0U);
    *((int *)t23) = 0;
    t23 = (t21 + 4U);
    *((int *)t23) = 1;
    t23 = (t21 + 8U);
    *((int *)t23) = 1;
    t22 = (1 - 0);
    t17 = (t22 * 1);
    t17 = (t17 + 1);
    t23 = (t21 + 12U);
    *((unsigned int *)t23) = t17;
    t31 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t14, t12, t18, t19);
    if (t31 == 1)
        goto LAB36;

LAB37:    t10 = (unsigned char)0;

LAB38:    t1 = t10;

LAB32:    if (t1 != 0)
        goto LAB28;

LAB29:    t2 = (t0 + 684U);
    t3 = *((char **)t2);
    t2 = (t0 + 4824U);
    t7 = (t0 + 4920);
    t11 = (t15 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 1;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t16 = (1 - 0);
    t17 = (t16 * 1);
    t17 = (t17 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t17;
    t1 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t3, t2, t7, t15);
    if (t1 != 0)
        goto LAB39;

LAB40:    xsi_set_current_line(83, ng0);
    t2 = (t0 + 2448);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(84, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);

LAB14:    goto LAB9;

LAB13:    xsi_set_current_line(62, ng0);
    t39 = (t0 + 776U);
    t45 = *((char **)t39);
    t39 = (t0 + 2520);
    t46 = (t39 + 32U);
    t47 = *((char **)t46);
    t48 = (t47 + 40U);
    t49 = *((char **)t48);
    memcpy(t49, t45, 8U);
    xsi_driver_first_trans_fast_port(t39);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2448);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB16:    t4 = (unsigned char)1;
    goto LAB18;

LAB19:    t5 = (unsigned char)1;
    goto LAB21;

LAB22:    t28 = (t0 + 868U);
    t30 = *((char **)t28);
    t31 = *((unsigned char *)t30);
    t32 = (t31 == (unsigned char)3);
    t9 = t32;
    goto LAB24;

LAB25:    t39 = (t0 + 960U);
    t42 = *((char **)t39);
    t43 = *((unsigned char *)t42);
    t44 = (t43 == (unsigned char)3);
    t33 = t44;
    goto LAB27;

LAB28:    xsi_set_current_line(69, ng0);
    t23 = (t0 + 2448);
    t25 = (t23 + 32U);
    t27 = *((char **)t25);
    t28 = (t27 + 40U);
    t30 = *((char **)t28);
    *((unsigned char *)t30) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t23);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

LAB30:    t1 = (unsigned char)1;
    goto LAB32;

LAB33:    t12 = (t0 + 868U);
    t13 = *((char **)t12);
    t6 = *((unsigned char *)t13);
    t9 = (t6 == (unsigned char)2);
    t4 = t9;
    goto LAB35;

LAB36:    t23 = (t0 + 960U);
    t24 = *((char **)t23);
    t32 = *((unsigned char *)t24);
    t33 = (t32 == (unsigned char)2);
    t10 = t33;
    goto LAB38;

LAB39:    xsi_set_current_line(76, ng0);
    t12 = (t0 + 776U);
    t13 = *((char **)t12);
    t12 = (t0 + 2520);
    t14 = (t12 + 32U);
    t18 = *((char **)t14);
    t20 = (t18 + 40U);
    t21 = *((char **)t20);
    memcpy(t21, t13, 8U);
    xsi_driver_first_trans_fast_port(t12);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2448);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 2484);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 2412);
    t3 = (t2 + 32U);
    t7 = *((char **)t3);
    t8 = (t7 + 40U);
    t11 = *((char **)t8);
    *((unsigned char *)t11) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB14;

}


extern void work_a_0171101255_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0171101255_3212880686_p_0};
	xsi_register_didat("work_a_0171101255_3212880686", "isim/Branch_Controller_isim_beh.exe.sim/work/a_0171101255_3212880686.didat");
	xsi_register_executes(pe);
}
