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
static const char *ng0 = "//samba.engr.uvic.ca/home/kloftis/CENG 450/CENG 450 Final/450Processor/Register.vhd";
extern char *IEEE_P_3620187407;



static void work_a_2615964831_1878664202_p_0(char *t0)
{
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
    int t12;
    int t13;
    char *t14;
    char *t15;
    char *t16;
    int t17;
    int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    char *t28;
    char *t29;
    char *t30;

LAB0:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1052U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)2);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2564);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(54, ng0);
    t7 = (t0 + 1144U);
    t8 = *((char **)t7);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 776U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t4 = (t1 == (unsigned char)3);
    if (t4 != 0)
        goto LAB16;

LAB17:
LAB9:    goto LAB3;

LAB5:    t2 = (t0 + 1028U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(55, ng0);
    t7 = (t0 + 5325);
    *((int *)t7) = 0;
    t11 = (t0 + 5329);
    *((int *)t11) = 3;
    t12 = 0;
    t13 = 3;

LAB11:    if (t12 <= t13)
        goto LAB12;

LAB14:    goto LAB9;

LAB12:    xsi_set_current_line(56, ng0);
    t14 = xsi_get_transient_memory(8U);
    memset(t14, 0, 8U);
    t15 = t14;
    memset(t15, (unsigned char)2, 8U);
    t16 = (t0 + 5325);
    t17 = *((int *)t16);
    t18 = (t17 - 0);
    t19 = (t18 * 1);
    t20 = (8U * t19);
    t21 = (0U + t20);
    t22 = (t0 + 2624);
    t23 = (t22 + 32U);
    t24 = *((char **)t23);
    t25 = (t24 + 40U);
    t26 = *((char **)t25);
    memcpy(t26, t14, 8U);
    xsi_driver_first_trans_delta(t22, t21, 8U, 0LL);

LAB13:    t2 = (t0 + 5325);
    t12 = *((int *)t2);
    t3 = (t0 + 5329);
    t13 = *((int *)t3);
    if (t12 == t13)
        goto LAB14;

LAB15:    t17 = (t12 + 1);
    t12 = t17;
    t7 = (t0 + 5325);
    *((int *)t7) = t12;
    goto LAB11;

LAB16:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 868U);
    t7 = *((char **)t2);
    t19 = (1 - 1);
    t20 = (t19 * 1U);
    t21 = (0 + t20);
    t2 = (t7 + t21);
    t8 = (t0 + 5333);
    t12 = xsi_mem_cmp(t8, t2, 2U);
    if (t12 == 1)
        goto LAB19;

LAB24:    t14 = (t0 + 5335);
    t13 = xsi_mem_cmp(t14, t2, 2U);
    if (t13 == 1)
        goto LAB20;

LAB25:    t16 = (t0 + 5337);
    t17 = xsi_mem_cmp(t16, t2, 2U);
    if (t17 == 1)
        goto LAB21;

LAB26:    t23 = (t0 + 5339);
    t18 = xsi_mem_cmp(t23, t2, 2U);
    if (t18 == 1)
        goto LAB22;

LAB27:
LAB23:    xsi_set_current_line(71, ng0);

LAB18:    goto LAB9;

LAB19:    xsi_set_current_line(67, ng0);
    t25 = (t0 + 960U);
    t26 = *((char **)t25);
    t25 = (t0 + 2624);
    t27 = (t25 + 32U);
    t28 = *((char **)t27);
    t29 = (t28 + 40U);
    t30 = *((char **)t29);
    memcpy(t30, t26, 8U);
    xsi_driver_first_trans_delta(t25, 0U, 8U, 0LL);
    goto LAB18;

LAB20:    xsi_set_current_line(68, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t2 = (t0 + 2624);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t14 = *((char **)t11);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_delta(t2, 8U, 8U, 0LL);
    goto LAB18;

LAB21:    xsi_set_current_line(69, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t2 = (t0 + 2624);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t14 = *((char **)t11);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_delta(t2, 16U, 8U, 0LL);
    goto LAB18;

LAB22:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 960U);
    t3 = *((char **)t2);
    t2 = (t0 + 2624);
    t7 = (t2 + 32U);
    t8 = *((char **)t7);
    t11 = (t8 + 40U);
    t14 = *((char **)t11);
    memcpy(t14, t3, 8U);
    xsi_driver_first_trans_delta(t2, 24U, 8U, 0LL);
    goto LAB18;

LAB28:;
}

static void work_a_2615964831_1878664202_p_1(char *t0)
{
    char t5[16];
    char t24[16];
    char t43[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t44;
    char *t45;
    int t46;
    unsigned int t47;
    unsigned char t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;

LAB0:    xsi_set_current_line(77, ng0);
    t1 = (t0 + 592U);
    t2 = *((char **)t1);
    t1 = (t0 + 5140U);
    t3 = (t0 + 5341);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t20 = (t0 + 592U);
    t21 = *((char **)t20);
    t20 = (t0 + 5140U);
    t22 = (t0 + 5343);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 1;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (1 - 0);
    t28 = (t27 * 1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t29 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t20, t22, t24);
    if (t29 != 0)
        goto LAB5;

LAB6:    t39 = (t0 + 592U);
    t40 = *((char **)t39);
    t39 = (t0 + 5140U);
    t41 = (t0 + 5345);
    t44 = (t43 + 0U);
    t45 = (t44 + 0U);
    *((int *)t45) = 0;
    t45 = (t44 + 4U);
    *((int *)t45) = 1;
    t45 = (t44 + 8U);
    *((int *)t45) = 1;
    t46 = (1 - 0);
    t47 = (t46 * 1);
    t47 = (t47 + 1);
    t45 = (t44 + 12U);
    *((unsigned int *)t45) = t47;
    t48 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t40, t39, t41, t43);
    if (t48 != 0)
        goto LAB7;

LAB8:
LAB9:    t58 = (t0 + 1420U);
    t59 = *((char **)t58);
    t60 = (3 - 0);
    t61 = (t60 * 1);
    t62 = (8U * t61);
    t63 = (0 + t62);
    t58 = (t59 + t63);
    t64 = (t0 + 2660);
    t65 = (t64 + 32U);
    t66 = *((char **)t65);
    t67 = (t66 + 40U);
    t68 = *((char **)t67);
    memcpy(t68, t58, 8U);
    xsi_driver_first_trans_fast_port(t64);

LAB2:    t69 = (t0 + 2572);
    *((int *)t69) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1420U);
    t11 = *((char **)t7);
    t12 = (0 - 0);
    t9 = (t12 * 1);
    t13 = (8U * t9);
    t14 = (0 + t13);
    t7 = (t11 + t14);
    t15 = (t0 + 2660);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t26 = (t0 + 1420U);
    t30 = *((char **)t26);
    t31 = (1 - 0);
    t28 = (t31 * 1);
    t32 = (8U * t28);
    t33 = (0 + t32);
    t26 = (t30 + t33);
    t34 = (t0 + 2660);
    t35 = (t34 + 32U);
    t36 = *((char **)t35);
    t37 = (t36 + 40U);
    t38 = *((char **)t37);
    memcpy(t38, t26, 8U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB2;

LAB7:    t45 = (t0 + 1420U);
    t49 = *((char **)t45);
    t50 = (2 - 0);
    t47 = (t50 * 1);
    t51 = (8U * t47);
    t52 = (0 + t51);
    t45 = (t49 + t52);
    t53 = (t0 + 2660);
    t54 = (t53 + 32U);
    t55 = *((char **)t54);
    t56 = (t55 + 40U);
    t57 = *((char **)t56);
    memcpy(t57, t45, 8U);
    xsi_driver_first_trans_fast_port(t53);
    goto LAB2;

LAB10:    goto LAB2;

}

static void work_a_2615964831_1878664202_p_2(char *t0)
{
    char t5[16];
    char t24[16];
    char t43[16];
    char *t1;
    char *t2;
    char *t3;
    char *t6;
    char *t7;
    int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t25;
    char *t26;
    int t27;
    unsigned int t28;
    unsigned char t29;
    char *t30;
    int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;
    char *t39;
    char *t40;
    char *t41;
    char *t44;
    char *t45;
    int t46;
    unsigned int t47;
    unsigned char t48;
    char *t49;
    int t50;
    unsigned int t51;
    unsigned int t52;
    char *t53;
    char *t54;
    char *t55;
    char *t56;
    char *t57;
    char *t58;
    char *t59;
    int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    char *t66;
    char *t67;
    char *t68;
    char *t69;

LAB0:    xsi_set_current_line(81, ng0);
    t1 = (t0 + 684U);
    t2 = *((char **)t1);
    t1 = (t0 + 5156U);
    t3 = (t0 + 5347);
    t6 = (t5 + 0U);
    t7 = (t6 + 0U);
    *((int *)t7) = 0;
    t7 = (t6 + 4U);
    *((int *)t7) = 1;
    t7 = (t6 + 8U);
    *((int *)t7) = 1;
    t8 = (1 - 0);
    t9 = (t8 * 1);
    t9 = (t9 + 1);
    t7 = (t6 + 12U);
    *((unsigned int *)t7) = t9;
    t10 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t2, t1, t3, t5);
    if (t10 != 0)
        goto LAB3;

LAB4:    t20 = (t0 + 684U);
    t21 = *((char **)t20);
    t20 = (t0 + 5156U);
    t22 = (t0 + 5349);
    t25 = (t24 + 0U);
    t26 = (t25 + 0U);
    *((int *)t26) = 0;
    t26 = (t25 + 4U);
    *((int *)t26) = 1;
    t26 = (t25 + 8U);
    *((int *)t26) = 1;
    t27 = (1 - 0);
    t28 = (t27 * 1);
    t28 = (t28 + 1);
    t26 = (t25 + 12U);
    *((unsigned int *)t26) = t28;
    t29 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t21, t20, t22, t24);
    if (t29 != 0)
        goto LAB5;

LAB6:    t39 = (t0 + 684U);
    t40 = *((char **)t39);
    t39 = (t0 + 5156U);
    t41 = (t0 + 5351);
    t44 = (t43 + 0U);
    t45 = (t44 + 0U);
    *((int *)t45) = 0;
    t45 = (t44 + 4U);
    *((int *)t45) = 1;
    t45 = (t44 + 8U);
    *((int *)t45) = 1;
    t46 = (1 - 0);
    t47 = (t46 * 1);
    t47 = (t47 + 1);
    t45 = (t44 + 12U);
    *((unsigned int *)t45) = t47;
    t48 = ieee_std_logic_unsigned_equal_stdv_stdv(IEEE_P_3620187407, t40, t39, t41, t43);
    if (t48 != 0)
        goto LAB7;

LAB8:
LAB9:    t58 = (t0 + 1420U);
    t59 = *((char **)t58);
    t60 = (3 - 0);
    t61 = (t60 * 1);
    t62 = (8U * t61);
    t63 = (0 + t62);
    t58 = (t59 + t63);
    t64 = (t0 + 2696);
    t65 = (t64 + 32U);
    t66 = *((char **)t65);
    t67 = (t66 + 40U);
    t68 = *((char **)t67);
    memcpy(t68, t58, 8U);
    xsi_driver_first_trans_fast_port(t64);

LAB2:    t69 = (t0 + 2580);
    *((int *)t69) = 1;

LAB1:    return;
LAB3:    t7 = (t0 + 1420U);
    t11 = *((char **)t7);
    t12 = (0 - 0);
    t9 = (t12 * 1);
    t13 = (8U * t9);
    t14 = (0 + t13);
    t7 = (t11 + t14);
    t15 = (t0 + 2696);
    t16 = (t15 + 32U);
    t17 = *((char **)t16);
    t18 = (t17 + 40U);
    t19 = *((char **)t18);
    memcpy(t19, t7, 8U);
    xsi_driver_first_trans_fast_port(t15);
    goto LAB2;

LAB5:    t26 = (t0 + 1420U);
    t30 = *((char **)t26);
    t31 = (1 - 0);
    t28 = (t31 * 1);
    t32 = (8U * t28);
    t33 = (0 + t32);
    t26 = (t30 + t33);
    t34 = (t0 + 2696);
    t35 = (t34 + 32U);
    t36 = *((char **)t35);
    t37 = (t36 + 40U);
    t38 = *((char **)t37);
    memcpy(t38, t26, 8U);
    xsi_driver_first_trans_fast_port(t34);
    goto LAB2;

LAB7:    t45 = (t0 + 1420U);
    t49 = *((char **)t45);
    t50 = (2 - 0);
    t47 = (t50 * 1);
    t51 = (8U * t47);
    t52 = (0 + t51);
    t45 = (t49 + t52);
    t53 = (t0 + 2696);
    t54 = (t53 + 32U);
    t55 = *((char **)t54);
    t56 = (t55 + 40U);
    t57 = *((char **)t56);
    memcpy(t57, t45, 8U);
    xsi_driver_first_trans_fast_port(t53);
    goto LAB2;

LAB10:    goto LAB2;

}


extern void work_a_2615964831_1878664202_init()
{
	static char *pe[] = {(void *)work_a_2615964831_1878664202_p_0,(void *)work_a_2615964831_1878664202_p_1,(void *)work_a_2615964831_1878664202_p_2};
	xsi_register_didat("work_a_2615964831_1878664202", "isim/Processor_isim_beh.exe.sim/work/a_2615964831_1878664202.didat");
	xsi_register_executes(pe);
}
